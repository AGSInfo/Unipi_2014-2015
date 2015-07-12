
-- Procedure 1: Magazzino Intelligente

Delimiter $$
Create procedure analisiPiatti (IN idsede INT)
BEGIN
	DECLARE sede INT;
	CREATE TEMPORARY TABLE IF NOT EXISTS confezioniscadenza 
	(
		Ingrediente INT NOT NULL,
		Quantita FLOAT NOT NULL,
		PRIMARY KEY(Ingrediente)
	);


SET sede = (Select count(*) from Sede S where S.IdSede = idsede);
if(sede = 0) then SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT="Sede non presente nel DataBase";
else
truncate confezioniscadenza;
replace into confezioniscadenza 
		select C.IdIngrediente,sum(C.QuantitaRimanente) 
		from (Magazzino M natural Join Scaffale SC) 
        Inner join Confezione C on SC.IdScaffale = C.Scaffale
        where M.IdSede = Sede and ((C.Stato = "parziale") or
        (C.DataScadenza + interval 5 day > current_date()))
        group by C.Ingrediente;

 
Select P.IdPiatto,min(floor(CS.Ingrediente/IR.Ingrediente)) as PorzioniDisponibili,
	 if(T.ValutazioneMedia IS NULL,0,T.ValutazioneMedia)
    from (Piatto P inner join Ricetta R 
    inner join IngredienteRicetta IR inner join confezioniscadenza CS
    on P.Ricetta = R.IdRicetta and R.IdRicetta = IR.Ricetta and IR.Ingrediente = CS.Ingrediente)
    left join 
		(select P4.IdPiatto,avg(R.GiudzioGlobale) as ValutazioneMedia
		 from Piatto P4 
		inner join Recensione R on P4.IdPiatto = R.Piatto 
		 where R.DataRecensione + interval 7 day >= current_date()
		 group by P4.IdPiatto) as T on P.IdPiatto = T.IdPiatto
    where Not Exists
		(Select * from Piatto P2 inner join Ricetta R2 inner join IngredienteRicetta IR2
		on  P.Ricetta = R.IdRicetta and R.IdRicetta = IR.Ricetta 
        where P.IdPiatto = P2.IdPiatto 
        and IR.Ingrediente NOT IN 
			(Select C.Ingrediente from Magazzino M inner join Scaffale SC inner join Confezione C
            on SC.IdMagazzino = M.IdMagazzino and C.Scaffale = Sc.IdScaffale
            where M.IdSede = Sede))
	and not Exists 
		(Select * from Piatto P3
		inner join Ricetta R3 inner join IngredienteRicetta IR3
		on  P3.Ricetta = R3.IdRicetta and R3.IdRicetta = IR3.Ricetta
		where P.IdPiatto = P3.IdPiatto 
        and IR2.Quantita > ALL(select CS2.quantita from confezioniscadenza CS2 
							     where CS2.Ingrediente = IR2.Ingrediente))
	group by P.IdPiatto
    order by T.ValutazioneMedia,PorzioniDisponibili;
    
    DROP temporary table confezioniscadenza;
    end if;
END $$

DELIMITER ;


-- ---------------------------------------------------------------------------------

-- Procedure 2: Analisi multidimensionale del business

Delimiter $$

Create Procedure AnalisiVendita(IN Periodo INT,IN Piatto INT,in sede INT)
BEGIN
Declare Sedi INT DEFAULT 0;
if(sede = 0) then
-- Periodo 0 = Ultima Settimana , Periodo 1 = Ultimo Mese Periodo 2 = Ultimo Anno
	if(Periodo = 0)then
    -- Piatto = 0 significa classifica completa dei piatti venduti
		if(Piatto = 0) then
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 7 day > current_date()
            group by P.IdPiatto
            order by T.Sede,Ordini;
        else 
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 7 day > current_date() 
            and P.IdPiatto = Piatto
            group by P.IdPiatto
            order by Ordini;
        end if;
        
	elseif(Periodo = 1)then
		if(Piatto = 0) then
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 1 month > current_date()
            group by P.IdPiatto
            order by T.Sede,Ordini;
        else 
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 1 month > current_date() 
            and P.IdPiatto = Piatto
            group by P.IdPiatto
            order by Ordini;
        end if;
	elseif(Periodo = 2) then
			if(Piatto = 0) then
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 1 year > current_date()
            group by P.IdPiatto
            order by T.Sede,Ordini;
        else 
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 1 year > current_date() 
            and P.IdPiatto = Piatto
            group by P.IdPiatto
            order by Ordini;
        end if;
	else
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT= "Periodo di Analisi non valido";
	end if;
else 
	SET Sedi = (select count(*) from Sede S where S.IdSede = sede);
	if(Sedi = 1) then
		if(Periodo = 0)then
    -- Piatto = 0 significa classifica completa dei piatti venduti
		if(Piatto = 0) then
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo and T.IdSede = sede
            where DATE(C.Ora) + interval 7 day > current_date()
            group by P.IdPiatto
            order by T.Sede,Ordini;
        else 
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo and T.IdSede = sede
            where DATE(C.Ora) + interval 7 day > current_date() 
            and P.IdPiatto = Piatto
            group by P.IdPiatto
            order by Ordini;
        end if;
        
	elseif(Periodo = 1)then
		if(Piatto = 0) then
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 1 month > current_date()
            and T.IdSede = sede
            group by P.IdPiatto
            order by T.Sede,Ordini;
        else 
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo 
            where DATE(C.Ora) + interval 1 month > current_date() 
            and P.IdPiatto = Piatto  and T.IdSede = sede
            group by P.IdPiatto
            order by Ordini;
        end if;
	elseif(Periodo = 2) then
			if(Piatto = 0) then
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 1 year > current_date()
            and T.IdSede = sede
            group by P.IdPiatto
            order by T.Sede,Ordini;
        else 
			Select P.IdPiatto,P.Nome,T.Sede, count(*) as Ordini
            from Piatto P inner join Ordine O 
            inner join Comanda C inner join Tavolo T
            on P.IdPiatto = O.Piatto and O.Comanda = C.IdComanda 
            and C.Tavolo = T.IdTavolo
            where DATE(C.Ora) + interval 1 year > current_date() 
            and P.IdPiatto = Piatto and T.IdSede = sede
            group by P.IdPiatto
            order by Ordini;
        end if;
	end if;
    else SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT="La sede cercata non esiste";
    end if;
end if;
END $$

Create Event AnalisiRecensioni on schedule every 7 day 
DO
	Select P.IdPiatto,P.Nome,Count(*) as RecensioniPositive,avg(R.GiudizioGlobale) as VotoMedio
    from Piatti P inner join Recensione R on P.IdPiatto = R.Piatto
    where R.Data + interval 7 day > current_date() and R.GiudzioGlobale > 3
    group by P.IdPiatto 
    order by VotoMedio,RecensioniPositive desc;

Create Event AnalisiProposte on Schedule every 7 day
DO
	Select  PP.PropostaPiatto,Count(*) as ValutazioniPositive,Avg(VP.Valutazione) as VotoMedio
    from PropostaPiatto PP inner join ValutazionePropostaPiatto VP
    on PP.PropostaPiatto = VP.PropostaPiatto
    where VP.Valutazione > 2
    group by PP.PropostaPiatto
    order by VotoMedio,ValutazioniPositive desc;
    
  
Create Event AnalisiVariante on Schedule every 7 day
	Select VP.IdVariante,P.IdPiatto,P.Nome,VP.Modifica,count(*) as Valutazioni_Positive,avg(VV.Valutazione) as ValutazioneMedia
    from VariantePiatto VP inner join Piatto P inner join ValutazioneVariazione VV
    on VP.Piatto = P.IdPiatto and VV.VariantePiatto = VP.IdVariante
    where VV.Valutazione > 2
    group by VP.IDVariante
    order by ValutazioneMedia,Valutazioni_Positive desc;
DO 

Delimiter ;

-- ------------------------------------------------------------------------
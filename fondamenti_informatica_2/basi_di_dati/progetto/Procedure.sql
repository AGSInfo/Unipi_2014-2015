
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
		 where R.DataRecensione + interval 7 days >= current_date()
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
END $$

DELIMITER ;


-----------------------------------------------------------------------------------
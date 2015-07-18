
-- Query 1) Piatto piu venduto
-- Frequenza : 1 volta alla settimana

Create view OrdiniRoma as
Select O.* from Ordine O inner join Comanda C on O.Comanda = C.IdComanda
inner join Tavolo T on C.IdTavolo = T.IdTavolo 
inner join Sala Sa on T.Sala = Sa.Sala
inner join Sede S on Sa.Sede = S.IdSede
where S.Citta = "Roma";

Select ORO.Piatto,count(*) as Vendite 
from OrdiniRoma ORO
group by ORO.Piatto having count(*) >= ALL(
				Select count(*)
                from OrdiniRoma ORO2
				group by ORO2.Piatto);
                
                
-- Query 2) Visualizzare l'attuale menu di Firenze esculi i 
-- piatti che contengono allergeni
-- Frequenza 50 volte al giorno

-- Con ridondanza

Select * from Menu M inner join Sede S on M.Sede = S.IdSede
inner join Menu_Piatto MP on M.IdMenu = MP.IdMenu 
inner join Piatto P on MP.IdPiatto = M.IdPiatto
where M.DataFine is NULL and S.Citta = "Firenze"
and P.Allergene = False;

-- Senza Ridondanza

Select * from Menu M inner join Sede S on M.Sede = S.IdSede
inner join Menu_Piatto MP on M.IdMenu = MP.IdMenu 
inner join Piatto P on MP.IdPiatto = M.IdPiatto
where M.DataFine is NULL and S.Citta = "Firenze"
and Not Exists 
	 (Select * from Piatto P2 inner join Ricetta R
	  on P2.Ricetta = R.IdRicetta 
      inner join IngredienteRicetta IR on
      IR.Ricetta = R.IdRicetta
      inner join Ingrediente I
      on IR.Ingrediente = I.IdIngrediente
      where P2.IdPiatto = P.IdPiatto 
      and I.Allergene = TRUE
	);
    
-- Query 3) Visulizzare in ordine decrescente le citta che hanno effettuato ordini
-- Take-Away

  	Select A.Citta, count(*) as OrdiniTakeAway
  	from Comanda C inner join Account A on C.Account = A.Username
  	group by A.Citta
  	Order by OrdiniTakeAway;
    
-- Query 4
-- Elenca i clienti per i quali non è più possibile effettuare prenotazioni

      SELECT Nome, Cognome, Via, nCivico, Comune, Citta
      FROM Account
	  WHERE FruibilitaPrenotazioni = FALSE;

-- Query 5
-- Per ogni citta in cui è presente una sede indicare il numero di account 
-- appartenenti al persone residenti

      CREATE OR REPLACE VIEW ListaCitta AS
      SELECT DISTINCT S.Citta as Citta
      FROM Sede S;
      
      Select A.Citta,Count(*) as ClientiRegistrati from Account A Inner join ListaCitta LC on A.Citta = LC.Citta
      group by A.Citta
      
-- Query 6
-- Data una certa sede, elenca le confezioni che sono disponibili in magazzino
-- aggiungere anche il nome dell'ingrediente
DELIMITER $$
CREATE PROCEDURE Query7(IN _IdSede INT)
BEGIN
      SELECT
            Nome AS NomeIngrediente,
            IdConfezione,
            I.Nome
            Peso,
            PrezzoAcquisto,
            DataAcquisto,
            DataConsegna,
            DataScadenza,
            Aspetto,
            Stato,
            QuantitaRimanente,
            IdScaffale,
            Provenienza,
            TipoProduzione,
            Allergene
      FROM ((Confezione C INNER JOIN Scaffale S
      ON C.Scaffale = S.IdScaffale) NATURAL JOIN Magazzino M) INNER JOIN Ingrediente I
      ON I.IdIngrediente = C.Ingrediente
      WHERE M.IdSede = _IdSede;
END $$
DELIMITER ;

-- Query 7
-- Per ogni magazzino, elenca la quantità rimanente di ogni ingrediente 
-- che in essi è presente

      SELECT
            I.Nome,
            SUM(QuantitaRimanente) AS QuantitàTotaleRimanente
      FROM
            (((Magazzino M NATURAL JOIN Scaffale S)
                  INNER JOIN Confezione C ON C.Scaffale = S.IdScaffale)
                  INNER JOIN Ingrediente I ON I.IdIngrediente = C.Ingrediente)
      WHERE
            IdMagazzino = _IdMagazzino
      GROUP BY I.Ingrediente;

-- Query 8

-- Aggiornare lo stato di un ordine facendolo passare allo stato preparazione
-- Frequenza 250 volte al giorno

	Update ordine Set Stato = 'preparazione' where IdOrdine = 1;


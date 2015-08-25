
-- Query 1) Piatto piu venduto
-- Frequenza : 1 volta alla settimana

/*
	TAVOLA ACCESSI:
    NON CI SONO RIDONDANZE


    - Effettuo 5 letture su Sede er trovare quelle di Roma
    - Effettuo 40 Letture da Sala
    - Effettuo 400 Letture da Tavolo
    - Effeutto 5000 Letture Da Comanda
    - Effettuo 10000 Letture da Ordine

    Totale Letture : 15445

    Operazioni alla giorno : 15445 / 7

*/
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


-- Query 2) Visualizzare l'attuale menu di Firenze esclusi i
-- piatti che contengono allergeni
-- Frequenza 10 volte al giorno

-- Con ridondanza

/*
	TAVOLA ACCESSI:
    OPERAZIONI ELEMENATARI LETTURA:
    - Compio 5 Letture su Sede per trovare le sedi a Firenze
    - Compio 20 Letture su Menu per Treovare i menu delle citta di firenze attivi (In Media 20 menu per Sede)
    - Compio 600 Letture su Menu_Piatto (In media 30 Piatti per menu)
    - Compio 30 Letture su piatto per trovare i piatti
    - Compio 30 Letture su ricetta per trovare le ricette associate senza allergeni

    Totale Letture singola operazione: 655
    Totale Letture in un giorno : 685 * 10 = 6850

*/

Select * from Menu M inner join Sede S on M.Sede = S.IdSede
inner join Menu_Piatto MP on M.IdMenu = MP.IdMenu
inner join Piatto P on MP.IdPiatto = M.IdPiatto
where M.DataFine is NULL and S.Citta = "Firenze"
and P.Allergene = False;

-- Senza Ridondanza

/*
	TAVOLA ACCESSI:

    OPERAZIONI ELEMENATARI LETTURA:

    - Compio 5 Letture su Sede per trovare le sedi a Firenze
    - Compio 20 Letture su Menu per Treovare i menu delle citta di firenze attivi (In Media 20 menu per Sede)
    - Compio 600 Letture su Menu_Piatto (In media 30 Piatti per menu)
    - Compio 30 Letture su piatto per trovare i piatti in esposizione
    - Compio 30 Letture su Ricetta per trovare le ricette associate
    - Compio 300 Letture su Passi (In media una ricetta è compsta da 10 passi)
    - Compi 30 Letture su IngredientePasso per trovare gli ingredienti associati (in Media 0.1 ingrediente per passo)
    - Compio 30 Letture su Ingrediente per trovare gli ingredienti senza allergeni

    Totale Letture singola operazione: 1045
    Totale Letture in un giorno : 1045 * 10 = 10450

*/

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

-- Query 3)

-- Visulizzare in ordine decrescente le citta che hanno effettuato ordini
-- Take-Away
-- Frequenza: 1 Volta al giorno
/*

	TAVOLA ACCESSI:
    NON CI SONO RIDONDANZE

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 5000 Letture su comanda per trovare gli ordini take away
    - Effettuo 500 Letture su Account per trovare le citta

    Totale letture: 5500
    Operazioni in un giorno : 5500

*/

  	Select A.Citta, count(*) as OrdiniTakeAway
  	from Comanda C inner join Account A on C.Account = A.Username
  	group by A.Citta
  	Order by OrdiniTakeAway;

-- Query 4

-- Elenca i clienti per i quali non è più possibile effettuare prenotazioni
-- Frequenza: 1 Volta al giorno
/*

	TAVOLA ACCESSI:
    NON CI SONO RIDONDANZE

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 500 Letture su Account per trovare le citta

    Totale letture: 500
    Operazioni in un giorno : 500

*/

      SELECT Nome, Cognome, Via, nCivico, Comune, Citta
      FROM Account
	  WHERE FruibilitaPrenotazioni = FALSE;

-- Query 5


-- Per ogni citta in cui è presente una sede indicare il numero di account
-- appartenenti alle persone residenti

-- Frequenza: 1 Volta al giorno
/*

	TAVOLA ACCESSI:
    NON CI SONO RIDONDANZE

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 5 letture su Sedi per trovare le citta
    - Effettuo 500 Letture su Account per trovare gli utenti residenti
    - in citta dove è presente una sede

    Totale letture: 505
    Operazioni in un giorno : 505

*/

      CREATE OR REPLACE VIEW ListaCitta AS
      SELECT DISTINCT S.Citta as Citta
      FROM Sede S;

      Select A.Citta,Count(*) as ClientiRegistrati from Account A Inner join ListaCitta LC on A.Citta = LC.Citta
      group by A.Citta

-- Query 6
-- Data una certa sede, elenca le confezioni che sono disponibili in magazzino
-- aggiungere anche il nome dell'ingrediente

-- Frequenza: 10 Volta al giorno
/*

	TAVOLA ACCESSI:
    NON CI SONO RIDONDANZE

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 1 Lettura se Sede per trovare la sede richiesta (Accesso diretto tramite chiave)
    - Effettuo 2 Letture su Magazzino (In media ogni sede ha 2 magazzini)
    - Effettuo 80 Letture su Scaffali (In media ogni magazzino ha 40 scaffali)
    - Effettuo 400 Letture su Confezione (In media ogni scaffale ha 5 confezioni)


    Totale letture: 483
    Operazioni in un giorno : 483*10 = 4830
*/
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
--  Frequenza: 10 Volta al giorno
/*

	TAVOLA ACCESSI:
    NON CI SONO RIDONDANZE

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 10 letture su magazzino
    - Effettuo 400 Letture su scaffale
    - Effettuo 2000 Letture su confezione(5 confezioni per scaffale)
    - Effettuo 100 Letture su ingrediente (20 confezioni a ingrediente)


    Totale letture: 2510
    Operazioni in un giorno : 2510*10 = 25100
*/
      SELECT
            I.Nome,
            SUM(C.QuantitaRimanente) AS QuantitàTotaleRimanente
      FROM
            (((Magazzino M NATURAL JOIN Scaffale S)
                  INNER JOIN Confezione C ON C.Scaffale = S.IdScaffale)
                  INNER JOIN Ingrediente I ON I.IdIngrediente = C.Ingrediente)

      GROUP BY M.IdMagazzino,I.IdIngrediente;

-- Query 8

-- Aggiornare lo stato di un ordine facendolo passare allo stato preparazione
-- Frequenza 250 volte al giorno
/*

	TAVOLA ACCESSI:
    NON CI SONO RIDONDANZE

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 1 Scrittura su Stato (2 operazioni)

    Operazioni in un giorno : 2*250 = 500
*/
	Update ordine Set Stato = 'preparazione' where IdOrdine = 1;

-- Query 9

-- Stimare la quantita di ingredienti necessaria per prepare tutti i piatti presenti nei menu
-- attuali, di ogni sede
-- Frequenza 1 volta al giorno
/*

	TAVOLA ACCESSI:
	Con Ridondanza

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 100 letture su Menu per trovare i 5 attuali
    - Effettuo 150 letture su MenuPiatto per trovare i piatti (5 * 30 piatti)
    - Effettuo 30 letture su Ricette (1 piatto = 1 ricetta)
    - Effettuo 180 letture su IngredienteRicetta

	Letture totali: 460
    Letture in un giorno : 460
*/

Select IR.Ingrediente,Sum(IR.Quantita) Quantita_totale
 from Menu M inner join Menu_Piatto MP on M.IdMenu = MP.IdMenu
inner join Piatto P on MP.Piatto = P.IdPiatto
inner join Ricetta R on P.Ricetta = R.IdRicetta inner join IngredienteRicetta IR
on IR.Ricetta = R.IdRicetta
where M.DataFine IS NULL
group BY IR.Ingrediente;

/*

	TAVOLA ACCESSI:
	Senza Ridondanza

    OPERAZIONI ELEMENATARI LETTURA:

    - Effettuo 100 letture su Menu per trovare i 5 attuali
    - Effettuo 150 letture su MenuPiatto per trovare i piatti (5 * 30 piatti)
    - Effettuo 30 letture su Ricette (1 piatto = 1 ricetta)
    - Effettuo 300 Letture su Passo (10 passi per ricetta)

	Letture in un giorno: 580
    <letture in un giorno : 580
*/

Select P.Ingrediente,Sum(P.Quantita) Quantita_totale
from Menu M inner join Menu_Piatto MP on M.IdMenu = MP.IdMenu
inner join Piatto P on MP.Piatto = P.IdPiatto
inner join Ricetta R on P.Ricetta = R.IdRicetta inner join Passo P
on R.IdRicetta = P.Ricetta
where M.DataFine IS NULL
group BY P.Ingrediente;

-- Query 10
/*
      Per ogni tipologia di Pony, elencare il numero di mezzi liberi

      TAVOLA ACCESSI
      (nessuna ridondanza)

	Frequenza: 20 volte al giorno

      OPERAZIONI ELEMENTARI LETTURA:

	- Effettuo 50 letture su Pony per trovare quelli liberi

	Letture in un giorno: 20 x 50 = 1000

*/

SELECT
      P.TipoMezzo,
      COUNT(*)
FROM
      Pony P
WHERE
      P.Stato = 'libero'
GROUP BY P.TipoMezzo;

-- Query 11
/*

      Indicare Quale sia la sede avente la cucina meno fornita
	  ed indicare quali piatti non possono essere preparati
	  con gli strumenti di tale cucina

*/

Create or replace VIEW CucinaMenoFornita as 

Select S.IdSede from Sede S inner join Strumento ST
on S.IdSede = ST.Sede 
group by S.IdSede
having count(Distinct ST.Nome) <= 
ALL (Select count(Distinct ST2.Nome) 
	from Sede S2 inner join Strumento ST2
	group by S2.Sede);
    
Select P.IdPiatto,P.Nome from Piatto P 
where Exists 
	(Select * from Piatto P2 inner join 
	 Ricetta R on P2.Ricetta = R.IdRicetta 
	 inner join Passo PA on PA.Ricetta = R.IdRicetta
	 where P2.IdPiatto = P.IdPiatto 
	 AND PA.Strumento NOT IN
	 	(Select S.Nome 
		from CucinaMenoFornita CF inner join StrumentoSede SS 
		on SS.Sede = CF.Sede 
		inner join
		Strumento S on SS.Strumento = S.Nome);
	 

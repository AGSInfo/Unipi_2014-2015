
--------------------------------------------------------------------------------

-- Query 3
-- Visualizzare tutte le citta  (in ordine decrescente) che hanno effettuato
-- richieste take-away
-- Frequenza: 10 volte al giorno

-- Qui le ridondanze non incidono in alcun modo sul comportamento della query

DELIMITER $$
CREATE PROCEDURE Query3()
BEGIN
  	Select A.Citta, count(*) as OrdiniTakeAway
  	from Comanda C inner join Account A on C.Account = A.Username
  	group by A.Citta
  	Order by OrdiniTakeAway;
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 4
-- Elenca i clienti per i quali non è più possibile effettuare prenotazioni

DELIMITER $$
CREATE PROCEDURE Query4()
BEGIN
      SELECT Nome, Cognome, Via, nCivico, Comune, Citta
      FROM Account
      WHERE FruibilitaPrenotazioni = FALSE;
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 5
-- Per ogni città per la quale esiste una sede, indicare il numero di clienti registrati residenti
-- nella città stessa
DELIMITER $$
CREATE PROCEDURE Query5()
BEGIN
      CREATE OR REPLACE VIEW ListaCitta AS
      SELECT DISTINCT S.Citta as Citta
      FROM Sede S;
      Select A.Citta,Count(*) as ClientiRegistrati from Account A Inner join ListaCitta LC on A.Citta = LC.Citta
      group by A.Citta
END $$
DELIMITER ;
--------------------------------------------------------------------------------

-- Query 7
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

--------------------------------------------------------------------------------

-- Query 8
-- Per ogni magazzino, elenca la quantità rimanente di ogni ingrediente
DELIMITER $$
CREATE PROCEDURE Query8(IN _IdMagazzino INT)
BEGIN
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

END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 9
-- Indicare il Ricavo al termine di
-- ogni giornata per ciascuna sede

DELIMITER $$
CREATE PROCEDURE Query9()
BEGIN
      -- scrivere query
END $$
DELIMITER ;

--------------------------------------------------------------------------------
-- Inserimento elementi nelle tabelle
--------------------------------------------------------------------------------

INSERT INTO Sede (Via, nCivico, Citta) VALUES
      ("Pascoli", 45, "Pisa"),
      ("Fratelli", 23, "Roma"),
      ("delle Vittime", 12, "Roma"),
      ("Europa", 2, "Pisa"),
      ("Filzi", 10, "Livorno"),
      ("Rossini", 61, "Milano"),
      ("Mozart", 11, "Roma"),
      ("Beethoven", 2, "Pisa"),
      ("Italia", 91, "Pescara"),
      ("dell Anima", 6, "Milano");

--------------------------------------------------------------------------------

INSERT INTO Magazzino (IdSede) VALUES
      (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
      (2), (2), (1), (9), (1), (2), (3), (4), (5), (6), (7), (8), (8), (7),
      (1), (3), (10), (3), (4), (5);

--------------------------------------------------------------------------------

INSERT INTO Scaffale (IdMagazzino) VALUES
      (2), (2), (1), (9), (1), (2), (3), (4), (5), (6), (7), (8), (8), (7),
      (1), (3), (10), (3), (4), (5);

--------------------------------------------------------------------------------

INSERT INTO Ingrediente (Nome, Provenienza, TipoProduzione, Allergene) VALUES
      ("Farina", "Italia", "intensiva", FALSE),
      ("Zucchero", "Italia", "intensiva", FALSE),
      ("Fragole", "Francia", "biologica", TRUE),
      ("Salmone", "Norvegia", "biologica", FALSE),
      ("Uova", "Italia", "intensiva", FALSE),
      ("Uova", "Italia", "biologica", FALSE),
      ("Spaghetti", "Germania", "intensiva", FALSE),
      ("Sale", "Finlandia", "biologica", FALSE),
      ("Aragoste", "Italia", "intensiva", TRUE),
      ("Tagliatelle", "Italia", "biologica", FALSE);

--------------------------------------------------------------------------------

INSERT INTO Confezione (Peso, PrezzoAcquisto, DataAcquisto, DataConsegna, DataScadenza, Aspetto, Ingrediente, Scaffale) VALUES
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", "intatto", 1, 3),
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", "intatto", 1, 3),
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", "intatto", 1, 1),
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", "intatto", 1, 7);


--------------------------------------------------------------------------------

INSERT INTO Account (Username, Password, Nome, Cognome, Via, nCivico, Comune, Citta, Sesso) VALUES
      ("mario01", "qweutr", "Mario", "Rossi", "del commercio", 98, "Pisa", "Pisa", "maschio"),
      ("luca12", "tretre1", "Luca", "Paoli", "Est", 78, "Collesalvetti", "Livorno", "maschio"),
      ("paola44", "54354tf", "Paola", "Amici", "Roma", 125, "Livorno", "Livorno", "femmina"),
      ("lucia11", "4n3aaaa", "Lucia", "Ettori", "del Valico", 1, "Pisa", "Pisa", "femmina"),
      ("gianfra22", "fewnf911", "Gianfranco", "Spostali", "del Risorgimento", 34, "Cenaia", "Pisa", "Femmina"),
      ("ettore11", "rengregre", "Ettore", "Sallusti", "del vascello", 90, "Cecina", "Livorno", "maschio"),
      ("laura44", "nty34843", "Laura", "Rossi", "Europa", 9, "Pisa", "Pisa", "femmina");

--------------------------------------------------------------------------------

INSERT INTO Recensione (Account, GiudizioGlobale, GiudizioTesto, DataRecensione) VALUES
      ("mario01", 5, "Veramente ottimo!", current_date()),
      ("luca12", 2, "Poco soddisfatto..", current_date()),
      ("ettore11", 3, "Abbastanza buono..", current_date());

--------------------------------------------------------------------------------

INSERT INTO ValutazioneRecensione (Account, Recensione, Veridicita, Accuratezza, Descrizione) VALUES
      ("mario01", 2, 2, 1, "Pessima recensione"),
      ("mario01", 3, 5, 5, "Pienamente d accordo"),
      ("luca12", 1, 1, 2, "Recensione molto scarsa");

--------------------------------------------------------------------------------
-- Query di prova
--------------------------------------------------------------------------------

SELECT * FROM Account;
SELECT * FROM Ingrediente;
SELECT * FROM Magazzino;
SELECT * FROM Recensione;
SELECT * FROM Scaffale;
SELECT * FROM Confezione;
SELECT * FROM Sede;
SELECT * FROM ValutazioneRecensione;
CALL Query7(1);

--------------------------------------------------------------------------------
-- Creazione ed apertura del database
--------------------------------------------------------------------------------

DROP DATABASE IF EXISTS ProgettoRistoranti;
CREATE DATABASE ProgettoRistoranti;
USE ProgettoRistoranti;

--------------------------------------------------------------------------------
-- Creazione tabelle
--------------------------------------------------------------------------------

CREATE TABLE Sede (
      IdSede INT NOT NULL AUTO_INCREMENT,
      Via VARCHAR(20),
      nCivico SMALLINT,
      Citta VARCHAR(20),

      PRIMARY KEY (IdSede),
      UNIQUE (Via, nCivico, Citta)
);

--------------------------------------------------------------------------------

CREATE TABLE Magazzino (
      IdMagazzino INT NOT NULL AUTO_INCREMENT,
      IdSede INT,

      PRIMARY KEY (IdMagazzino),
      FOREIGN KEY (IdSede) REFERENCES Sede(IdSede)
);

--------------------------------------------------------------------------------

CREATE TABLE Scaffale (
      IdScaffale INT NOT NULL AUTO_INCREMENT,
      IdMagazzino INT,

      PRIMARY KEY (IdScaffale),
      FOREIGN KEY (IdMagazzino) REFERENCES Magazzino(IdMagazzino)
);

--------------------------------------------------------------------------------

CREATE TABLE Ingrediente (
      IdIngrediente INT NOT NULL AUTO_INCREMENT,
      Nome VARCHAR(20),
      Provenienza VARCHAR(20),
      TipoProduzione ENUM ("intensiva", "biologica"),
      Allergene BOOLEAN,

      PRIMARY KEY (IdIngrediente)
);

--------------------------------------------------------------------------------

CREATE TABLE Confezione (
      IdConfezione INT NOT NULL AUTO_INCREMENT,
      Peso FLOAT,
      PrezzoAcquisto FLOAT,
      DataAcquisto DATE,
      DataConsegna DATE,
      DataScadenza DATE,
      Aspetto ENUM ("intatto", "rovinato"),
      Stato ENUM ("completo", "parziale", "in uso") DEFAULT "completo", # ???
      QuantitaRimanente FLOAT,
      Ingrediente INT,
      Scaffale INT,

      PRIMARY KEY (IdConfezione),
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente),
      FOREIGN KEY (Scaffale) REFERENCES Scaffale(IdScaffale)
);

--------------------------------------------------------------------------------

CREATE TABLE Strumento (
      IdStrumento INT NULL AUTO_INCREMENT,
      Tipo VARCHAR(20),
      Nome VARCHAR(20),

      PRIMARY KEY (IdStrumento)
);

--------------------------------------------------------------------------------

CREATE TABLE UtilizziStrumento (
      Utilizzo INT,
      Strumento INT,

      PRIMARY KEY (Utilizzo, Strumento),
      FOREIGN KEY (Strumento) REFERENCES Strumento(IdStrumento)
);

--------------------------------------------------------------------------------

CREATE TABLE Ricetta (
      IdRicetta INT NOT NULL AUTO_INCREMENT,
      TestoRicetta BLOB, # ???

      PRIMARY KEY (IdRicetta)
);

--------------------------------------------------------------------------------

CREATE TABLE IngredienteRicetta (
      Ricetta INT,
      Ingrediente INT,
      Quantita FLOAT,

      PRIMARY KEY (Ricetta, Ingrediente), # perché c'è scritto solo ricetta??
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta),
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente),
      CHECK (Quantita >= 0)
);

--------------------------------------------------------------------------------

CREATE TABLE Passo (
      Ricetta INT,
      nPasso SMALLINT,
      DescrizionePasso BLOB,
      Strumento INT,
      TempoUtilizzo INT, # In secondi
      Ingrediente INT,
      QuantitaUtilizzata FLOAT,

      PRIMARY KEY (Ricetta, nPasso),
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta),
      FOREIGN KEY (Strumento) REFERENCES Strumento(IdStrumento),
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente),
      CHECK (TempoUtilizzo >= 0 AND QuantitaUtilizzata >= 0)
);

--------------------------------------------------------------------------------

CREATE TABLE Menu (
      IdMenu INT NOT NULL AUTO_INCREMENT,
      Sede INT,
      DataInizio DATE,
      DataFine DATE,

      PRIMARY KEY (IdMenu),
      FOREIGN KEY (Sede) REFERENCES Sede(IdSede),
      CHECK (DataInizio <= DataFine)
);

--------------------------------------------------------------------------------

CREATE TABLE Piatto (
      IdPiatto INT NOT NULL AUTO_INCREMENT,
      Menu INT,
      Ricetta INT,
      Novita BOOLEAN, ## ??

      PRIMARY KEY (IdPiatto),
      FOREIGN KEY (Menu) REFERENCES Menu(IdMenu),
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta)
);

--------------------------------------------------------------------------------

## A che serve questa tabella?
CREATE TABLE VariazioniPiatto (
      IdPiatto INT,
      DescrizioneVariazione BLOB,

      PRIMARY KEY (IdPiatto)
);

--------------------------------------------------------------------------------

CREATE TABLE Comanda (
      IdComanda INT NOT NULL AUTO_INCREMENT,
      Tavolo INT,
      Ora TIMESTAMP,
      TakeAway BOOLEAN,
      Account VARCHAR(20),
      Stato INT,
      Prezzo FLOAT,

      PRIMARY KEY (IdComanda)
);

--------------------------------------------------------------------------------

CREATE TABLE Ordine (
      IdOrdine INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Piatto INT,
      Variazione1 BLOB, ## ??
      Variazione2 BLOB, ## ??
      Variazione3 BLOB, ## ??
      OrdineConsegna INT,
      Stato INT,

      PRIMARY KEY (IdOrdine),
      FOREIGN KEY (Comanda) REFERENCES Comanda(IdComanda)
);

--------------------------------------------------------------------------------

CREATE TABLE Account (
      Username VARCHAR(20),
      Password VARCHAR(20),
      Nome VARCHAR(20),
      Cognome VARCHAR(20),
      Via VARCHAR(20),
      nCivico SMALLINT,
      Comune VARCHAR(20),
      Citta VARCHAR(20),
      FruibilitaPrenotazioni BOOLEAN DEFAULT TRUE,
      Sesso ENUM ("maschio", "femmina"),

      PRIMARY KEY (Username)
);

--------------------------------------------------------------------------------

CREATE TABLE Prenotazione (
      IdPrenotazione INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      NumeroTelefono INT,
      Tavolo SMALLINT,
      OraPrenotazione TIMESTAMP,
      nPersone INT,

      PRIMARY KEY (IdPrenotazione),
      FOREIGN KEY (Account) REFERENCES Account(Username)
);

--------------------------------------------------------------------------------

CREATE TABLE Pony (
      IdPony INT NOT NULL AUTO_INCREMENT,
      TipoMezzo INT,
      Stato ENUM ("libero", "occupato"),

      PRIMARY KEY (IdPony)
);

--------------------------------------------------------------------------------

CREATE TABLE StatoConsegna (
      IdStato INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Pony INT,
      Stato ENUM ("programmato", "in consegna", "consegnato"), ## controllare questi valori
      Ora TIMESTAMP,
      Data DATE,

      PRIMARY KEY (IdStato),
      FOREIGN KEY (Comanda) REFERENCES Comanda(IdComanda),
      FOREIGN KEY (Pony) REFERENCES Pony(IdPony)
);

--------------------------------------------------------------------------------

CREATE TABLE Recensione (
      Account VARCHAR(20),
      IdRecensione INT NOT NULL AUTO_INCREMENT,
      GiudizioGlobale INT,
      GiudizioTesto BLOB,

      PRIMARY KEY (IdRecensione),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      CHECK (GiudizioGlobale >= 0 AND GiudizioGlobale <= 5)
);

--------------------------------------------------------------------------------

CREATE TABLE DomandaQuestionario (
      IdDomanda INT NOT NULL AUTO_INCREMENT,
      Domanda BLOB,

      PRIMARY KEY (IdDomanda)
);

--------------------------------------------------------------------------------

CREATE TABLE Risposta (
      IdRisposta INT NOT NULL AUTO_INCREMENT,
      Risposta BLOB,
      Scala INT,
      PRIMARY KEY (IdRisposta)
);

--------------------------------------------------------------------------------

CREATE TABLE Compilazione (
      IdDomanda INT,
      IdRecensione INT,
      IdRisposta INT,

      PRIMARY KEY (IdDomanda, IdRecensione, IdRisposta),
      FOREIGN KEY (IdDomanda) REFERENCES DomandaQuestionario(IdDomanda),
      FOREIGN KEY (IdRecensione) REFERENCES Recensione(IdRecensione),
      FOREIGN KEY (IdRisposta) REFERENCES Risposta(IdRisposta)
);

--------------------------------------------------------------------------------

## A che serve questa tabella??
CREATE TABLE PossibilitaRisposta (
      IdDomanda INT,
      IdRisposta INT,

      PRIMARY KEY (IdDomanda)
      #FOREIGN KEY (IdDomanda) REFERENCES Domanda(IdDomanda),
      #FOREIGN KEY (IdRisposta) REFERENCES Risposta(IdRisposta)
);

--------------------------------------------------------------------------------

CREATE TABLE ValutazioneRecensione (
      Account VARCHAR(20),
      Recensione INT,
      Veridicita INT,
      Accuratezza INT,
      Descrizione BLOB,

      PRIMARY KEY (Account, Recensione),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY (Recensione) REFERENCES Recensione(IdRecensione),
      CHECK (Veridicita >= 0 AND Veridicita <= 5 AND Accuratezza >= 0 AND Accuratezza <= 5)
);

--------------------------------------------------------------------------------

CREATE TABLE PropostaPiatto (
      IdPropostaPiatto INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      Nome VARCHAR(20),

      PRIMARY KEY (IdPropostaPiatto),
      FOREIGN KEY (Account) REFERENCES Account(Username)
);

--------------------------------------------------------------------------------

CREATE TABLE IngredienteNuovoPiatto (
      PropostaPiatto INT,
      Ingrediente INT,
      Quantita FLOAT,

      PRIMARY KEY (PropostaPiatto, Ingrediente),
      FOREIGN KEY (PropostaPiatto) REFERENCES PropostaPiatto(IdPropostaPiatto),
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente),
      CHECK (Quantita >= 0)
);

--------------------------------------------------------------------------------

CREATE TABLE ValutazionePropostaPiatto (
      Account VARCHAR(20),
      PropostaPiatto INT,
      Valutazione INT,
      Descrizione BLOB,

      PRIMARY KEY (Account, PropostaPiatto),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY (PropostaPiatto) REFERENCES PropostaPiatto(IdPropostaPiatto)
);

--------------------------------------------------------------------------------

CREATE TABLE VariantePiatto (
      IdVariante INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      Piatto INT,

      PRIMARY KEY (IdVariante),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY (Piatto) REFERENCES Piatto(IdPiatto)
);

--------------------------------------------------------------------------------

CREATE TABLE ModificaVariazione (
      IdModifica INT NOT NULL AUTO_INCREMENT,
      VariantePiatto INT,
      Modifica BLOB, ## ???

      PRIMARY KEY (IdModifica),
      FOREIGN KEY (VariantePiatto) REFERENCES VariantePiatto(IdVariante)
);

--------------------------------------------------------------------------------

CREATE TABLE ValutazioneVariazione (
      Account VARCHAR(20),
      VariantePiatto INT,
      Valutazione INT,

      PRIMARY KEY (Account, VariantePiatto),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY (VariantePiatto) REFERENCES VariantePiatto(IdVariante),
      CHECK (Valutazione >= 0 OR Valutazione <= 5)
);

--------------------------------------------------------------------------------

# Il organizzatore può essere diverso dal nome
# di colui che ha effettuato la "prenotazione" della serata?
# se deve essere uguale, il nome ed il cognome non sono deducibili
# dalla tabella Account?
# Come è collegata la serata ad una certa sede??
CREATE TABLE Serata (
      IdSerata INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20) NOT NULL,
      NomeOrganizzatore VARCHAR(20),
      CognomeOrganizzatore VARCHAR(20),
      TelefonoOrganizzatoreSala INT,
      Allestimento BLOB,
      nPersone INT,

      PRIMARY KEY (IdSerata),
      FOREIGN KEY (Account) REFERENCES Account(Username)
);

--------------------------------------------------------------------------------
-- Creazione trigger
--------------------------------------------------------------------------------

-- Evita che una persona valuti una recensione fatta da se stessa
DELIMITER $$
DROP TRIGGER IF EXISTS ValutaRecensione;
CREATE TRIGGER ValutaRecensione
BEFORE INSERT ON ValutazioneRecensione FOR EACH ROW
BEGIN

      SET @accountRecensione = (
            SELECT COUNT(*)
            FROM Recensione R
            WHERE R.IdRecensione = NEW.Recensione
            AND R.Account = NEW.Account
      );

      IF @accountRecensione <> 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = "Impossibile valutare se stessi.";
      END IF;
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
      ("dell Anima", 6, "Milano");

--------------------------------------------------------------------------------

INSERT INTO Magazzino (IdSede) VALUES
      (2),
      (4),
      (1),
      (2),
      (5),
      (3),
      (2),
      (2),
      (1),
      (2),
      (1);

--------------------------------------------------------------------------------

INSERT INTO Account (Username, Password, Nome, Cognome, Via, nCivico, Comune, Citta, Sesso) VALUES
      ("mario01", "qweutr", "Mario", "Rossi", "del commercio", 98, "Pisa", "Pisa", "maschio"),
      ("luca12", "tretre1", "Luca", "Paoli", "Est", 78, "Collesalvetti", "Livorno", "maschio"),
      ("paola44", "54354tf", "Paola", "Amici", "Roma", 125, "Livorno", "Livorno", "femmina"),
      ("ettore11", "rengregre", "Ettore", "Sallusti", "del vascello", 90, "Cecina", "Livorno", "maschio"),
      ("laura44", "nty34843", "Laura", "Rossi", "Europa", 9, "Pisa", "Pisa", "femmina");

--------------------------------------------------------------------------------

INSERT INTO Recensione (Account, GiudizioGlobale, GiudizioTesto) VALUES
      ("mario01", 5, "Veramente ottimo!"),
      ("luca12", 2, "Poco soddisfatto.."),
      ("ettore11", 3, "Abbastanza buono..");

--------------------------------------------------------------------------------

INSERT INTO ValutazioneRecensione (Account, Recensione, Veridicita, Accuratezza, Descrizione) VALUES
      ("mario01", 2, 2, 1, "Pessima recensione"),
      ("mario01", 3, 5, 5, "Pienamente d'accordo"),
      ("luca12", 1, 1, 2, "Recensione molto scarsa");

--------------------------------------------------------------------------------
-- Query di prova
--------------------------------------------------------------------------------

SELECT * FROM Sede;
SELECT * FROM Magazzino;
SELECT * FROM Account;
SELECT * FROM Recensione;
SELECT * FROM ValutazioneRecensione;

---------------------------------------------------------------------------------
-- Query richieste dal progetto
--------------------------------------------------------------------------------

-- Query 1
-- Identificare tutti i piatti preparabili nell'attuale menu della sede
-- presente a Roma
-- Frequenza: 70 volte al giorno

DELIMITER $$
CREATE PROCEDURE Query1()
BEGIN
      Create or replace view PiattiRoma as
      select * from Piatto P, Menu_Piatto MP,  M, Sede S where
      P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id
      and S.Citta = "Roma" and M.DataFine is NULL;

      Select * from PiattiRoma as PR ,Ingredienti_Piatto as IP where
      PR.id = IP.ID_Piatto and IP.qta >
      (Select sum(qta) from Magazzino M,Sede S,Scaffale SC, Confezione C where
      M.Sede = S.Id and S.citta = "Roma" and SC.Id_Magazzino = S.Id and C.scaffale = SC.id
      and C.ingrediente = IP.ingrediente group by C.ingrediente);
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 2
-- Per ogni sede, identificare il cliente che ha effettuato il maggior numeero
-- di recensioni nel mese attuale
-- Frequenza: 1 volta al mese

DELIMITER $$
CREATE PROCEDURE Query2SenzaRid()
BEGIN
      Create or replace view Piatti_Sedi as
      select * from Piatto P, Menu_Piatto MP,  M, Sede S where
      P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id
      and M.DataFine is NULL;

      Select * from Piatti_Sede PS, Passi P, Ingredienti I where
      Ps.Id = P.Id_Piatto and P.ID_Ingrediente = I.id
      group by PS.Id
      Having (count(*) = (SELECT count(*) from Passi P2, Ingredienti I2
      where P2.ID_Ingrediente = I2.ID and P2.Id_Piatto = P.Id_Piatto
      and I2.Allergene IS NOT NULL)) order by PS.NomeSede;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE Query2ConRid()
BEGIN
      Create or replace view Piatti_Sedi as
      select * from Piatto P, Menu_Piatto MP,  M, Sede S where
      P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id
      and M.DataFine is NULL;

      Select * from Piatti_Sedi as PS group by PS.IdPiatto
      having(count(*) = (select count(*) from PiattiSedi as PS2
      where PS2.IdPiatto = PS.IdPiatto and PS2.Allergene IS NOT NULL));
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 3
-- Visualizzare l'attuale menù, esclusi i piatti che contengono almeno un allergene
-- nella sede di Firenze
-- Frequenza: 200 volte al giorno

DELIMITER $$
CREATE PROCEDURE Query3SenzaRid()
BEGIN
      Create or replace view PiattiFirenze as
      select * from Piatto P, Menu_Piatto MP,  M, Sede S where
      P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id
      and S.Citta = "Firenze" and M.DataFine is NULL;

      Select * from PiattiFirenze as PR ,Ingredienti_Piatto as IP,Ingredienti AS I where
      PR.id = IP.ID_Piatto and I.id = IP.Id_Ingrediente
      and IP.qta >
      (Select sum(qta) from Magazzino M,Sede S,Scaffale SC, Confezione C where
      M.Sede = S.Id and S.citta = "Firenze" and SC.Id_Magazzino = S.Id and C.scaffale = SC.id
      and C.ingrediente = IP.ingrediente group by C.ingrediente) and NOT EXISTS
      (select * from I where I.allergene is NULL);
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE Query3ConRid()
BEGIN
      Create or replace view PiattiFirenze as
      select * from Piatto P, Menu_Piatto MP,  M, Sede S where
      P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id
      and S.Citta = "Firenze" and M.DataFine is NULL;

      Select * from PiattiFirenze as PR ,Ingredienti_Piatto as IP,Ingredienti AS I where
      PR.id = IP.ID_Piatto and I.id = IP.Id_Ingrediente
      and IP.qta >
      (Select sum(qta) from Magazzino M,Sede S,Scaffale SC, Confezione C where
      M.Sede = S.Id and S.citta = "Firenze" and SC.Id_Magazzino = S.Id and C.scaffale = SC.id
      and C.ingrediente = IP.ingrediente group by C.ingrediente) and PR.allergene is NULL;
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 4
-- Visualizzare tutti i comuni (in ordine decrescente) che hanno effettuato
-- richieste take-away
-- Frequenza: 10 volte al giorno

-- Qui le ridondanze non incidono in alcun modo sul comportamento della query

DELIMITER $$
CREATE PROCEDURE Query4()
BEGIN
      SELECT Nome,
            COUNT(*) AS N_Consegne
      FROM
            Consegna C
      GROUP BY
            C.Comune ## select di un risultato che non è nel group by?
      ORDER BY
            N_Consegne ASC;
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 5
-- Elenca i clienti per i quali non è più possibile effettuare prenotazioni
DELIMITER $$
CREATE PROCEDURE Query5()
BEGIN
      SELECT Nome, Cognome, Via, nCivico, Comune, Citta
      FROM Account
      WHERE FruibilitaPrenotazioni = FALSE;
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 6
-- Per ogni città  nel quale esiste una sede, indicare il numero di clienti registrati residenti
-- nella città stessa
DELIMITER $$
CREATE PROCEDURE Query6()
BEGIN
      CREATE OR REPLACE VIEW ListaCitta AS
      SELECT DISTINCT S.Citta
      FROM Sede S;

      CREATE OR REPLACE VIEW ComuneAccount AS
      SELECT
            LC.Citta AS Citta
      FROM
            ListaCitta LC LEFT OUTER JOIN Account A
      ON
            LC.Citta = A.Citta;

      SELECT * FROM ComuneAccount;
END $$
DELIMITER ;

CALL Query6();

--------------------------------------------------------------------------------

-- Query 7

DELIMITER $$
CREATE PROCEDURE Query7()
BEGIN
      -- scrivere query
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 8

DELIMITER $$
CREATE PROCEDURE Query8()
BEGIN
      -- scrivere query
END $$
DELIMITER ;

--------------------------------------------------------------------------------

-- Query 9
-- Indicare il guadagno (al netto delle spese degli ingredienti) al termine di
-- ogni giornata per ciascuna sede

DELIMITER $$
CREATE PROCEDURE Query9()
BEGIN
      -- scrivere query
END $$
DELIMITER ;

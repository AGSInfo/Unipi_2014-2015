DROP DATABASE IF EXISTS ProgettoRistoranti;
CREATE DATABASE ProgettoRistoranti;
USE ProgettoRistoranti;

--------------------------------------------------------------------------------
-- Creazione tabelle
--------------------------------------------------------------------------------

CREATE TABLE Sede (
      IdSede INT NOT NULL AUTO_INCREMENT,
      Via VARCHAR(20),
      nCivico INT,
      Citta VARCHAR(20),
      PRIMARY KEY (IdSede)
);

CREATE TABLE Magazzino (
      IdMagazzino INT NOT NULL AUTO_INCREMENT,
      IdSede INT,
      PRIMARY KEY (IdMagazzino)
);

CREATE TABLE Scaffale (
      IdScaffale INT NOT NULL AUTO_INCREMENT,
      IdMagazzino INT,
      PRIMARY KEY (IdScaffale)
);

CREATE TABLE Confezione (
      IdConfezione INT NOT NULL AUTO_INCREMENT,
      Peso FLOAT,
      PrezzoAcquisto FLOAT,
      DataAcquisto DATE,
      DataConsegna DATE,
      DataScadenza DATE,
      Aspetto INT, # ???
      Stato INT, # ???
      QuantitaRimanente FLOAT,
      Ingrediente INT,
      Scaffale INT,
      PRIMARY KEY (IdConfezione)
);

CREATE TABLE Ingrediente (
      IdIngrediente INT NOT NULL AUTO_INCREMENT,
      Nome VARCHAR(20),
      Provenienza VARCHAR(20),
      TipoProduzione VARCHAR(20),
      Allergene BOOLEAN,
      PRIMARY KEY (IdIngrediente)
);

## Sistemare nome nel documento
CREATE TABLE Strumento (
      IdStrumento INT NULL AUTO_INCREMENT,
      Tipo VARCHAR(20),
      Nome VARCHAR(20),
      PRIMARY KEY (IdStrumento)
);

## Sistemare nome nel documento
CREATE TABLE UtilizziStrumento (
      Utilizzo INT,
      Strumento INT,
      PRIMARY KEY (Utilizzo, Strumento)
);

CREATE TABLE Ricetta (
      IdRicetta INT NOT NULL AUTO_INCREMENT,
      TestoRicetta BLOB, # ???
      PRIMARY KEY (IdRicetta)
);

## Sistemare nome nel documento
CREATE TABLE IngredienteRicetta (
      Ricetta INT,
      Ingrediente INT,
      Quantità FLOAT,
      PRIMARY KEY (Ricetta) # perché non anche ingrediente??
);

CREATE TABLE Passo (
      Ricetta INT,
      nPasso INT,
      DescrizionePasso BLOB,
      Strumento INT,
      TempoUtilizzo INT, # In secondi
      Ingrediente INT,
      QuantitàUtilizzata FLOAT,
      PRIMARY KEY (Ricetta, nPasso)
);

CREATE TABLE Menu (
      IdMenu INT NOT NULL AUTO_INCREMENT,
      Sede INT,
      DataInizio DATE,
      DataFine DATE,
      PRIMARY KEY (IdMenu)
);

CREATE TABLE Piatto (
      IdPiatto INT NOT NULL AUTO_INCREMENT,
      Menu INT,
      Ricetta INT,
      Novita BOOLEAN, ## ??
      PRIMARY KEY (IdPiatto)
);

## A che serve questa tabella?
CREATE TABLE VariazioniPiatto (
      IdPiatto INT,
      DescrizioneVariazione BLOB,
      PRIMARY KEY (IdPiatto)
);

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

CREATE TABLE Ordine (
      IdOrdine INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Piatto INT,
      Variazione1 BLOB, ## ??
      Variazione2 BLOB, ## ??
      Variazione3 BLOB, ## ??
      OrdineConsegna INT,
      Stato INT,
      PRIMARY KEY (IdOrdine)
);

CREATE TABLE Prenotazione (
      IdPrenotazione INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      NumeroTelefono INT,
      Tavolo INT,
      OraPrenotazione TIMESTAMP,
      nPersone INT,
      PRIMARY KEY (IdPrenotazione)
);

CREATE TABLE Pony (
      IdPony INT NOT NULL AUTO_INCREMENT,
      TipoMezzo INT,
      Stato INT,
      PRIMARY KEY (IdPony)
);

CREATE TABLE StatoConsegna (
      IdStato INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Pony INT,
      Stato INT,
      Ora TIMESTAMP,
      Data DATE,
      PRIMARY KEY (IdStato)
);

CREATE TABLE Account (
      Username VARCHAR(20),
      Password VARCHAR(20),
      Nome VARCHAR(20),
      Cognome VARCHAR(20),
      Via VARCHAR(20),
      nCivico INT,
      Comune VARCHAR(20),
      Citta VARCHAR(20),
      FruibilitaPrenotazioni BOOLEAN DEFAULT TRUE,
      Sesso INT, # 0 per maschio, 1 per femmina
      PRIMARY KEY (Username)
);

CREATE TABLE Recensione (
      Account VARCHAR(20),
      IdRecensione INT,
      GiudizioGlobale INT,
      GiudizioTesto INT,
      PRIMARY KEY (IdRecensione)
);

## Aggiustare nome nel documento
CREATE TABLE DomandaQuestionario (
      IdDomanda INT NOT NULL AUTO_INCREMENT,
      Domanda BLOB,
      PRIMARY KEY (IdDomanda)
);

CREATE TABLE Compilazione (
      IdDomanda INT,
      IdRecensione INT,
      IdRisposta INT,
      PRIMARY KEY (IdDomanda, IdRecensione, IdRisposta)
);

## Aggiustare il nome nel documento
CREATE TABLE Risposta (
      IdRisposta INT NOT NULL AUTO_INCREMENT,
      Risposta BLOB,
      Scala INT,
      PRIMARY KEY (IdRisposta)
);

## Aggiustare il nome del documento?
## A che serve questa tabella??
CREATE TABLE PossibilitàRisposta (
      IdDomanda INT,
      IdRisposta INT,
      PRIMARY KEY (IdDomanda)
);

CREATE TABLE ValutazioneRecensione (
      Account VARCHAR(20),
      Recensione INT,
      Veridicita INT,
      Accuratezza INT,
      Descrizione BLOB,
      PRIMARY KEY (Account, Recensione)
);

CREATE TABLE PropostaPiatto (
      IdPropostaPiatto INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      Nome VARCHAR(20),
      PRIMARY KEY (IdPropostaPiatto)
);

## Aggiustare il nome del documento
CREATE TABLE IngredienteNuovoPiatto (
      PropostaPiatto INT,
      Ingrediente INT,
      Quantità FLOAT,
      PRIMARY KEY (PropostaPiatto, Ingrediente)
);

CREATE TABLE ValutazionePropostaPiatto (
      Account VARCHAR(20),
      PropostaPiatto INT,
      Valutazione INT,
      Descrizione BLOB,
      PRIMARY KEY (Account, PropostaPiatto)
);

CREATE TABLE VariantePiatto (
      IdVariante INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      Piatto INT,
      PRIMARY KEY (IdVariante)
);

CREATE TABLE ModificaVariazione (
      IdModifica INT NOT NULL AUTO_INCREMENT,
      VariantePiatto INT,
      Modifica BLOB, ## ???
      PRIMARY KEY (IdModifica)
);

CREATE TABLE ValutazioneVariazione (
      Account VARCHAR(20),
      VariantePiatto INT,
      Valutazione INT,
      PRIMARY KEY (Account, VariantePiatto)
);

# Il organizzatore può essere diverso dal nome
# di colui che ha effettuato la "prenotazione" della serata?
# se deve essere uguale, il nome ed il cognome non sono deducibili
# dalla tabella Account?
CREATE TABLE Serata (
      IdSerata INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      NomeOrganizzatore VARCHAR(20),
      CognomeOrganizzatore VARCHAR(20),
      TelefonoOrganizzatoreSala INT,
      Allestimento BLOB,
      nPersone INT,
      PRIMARY KEY (IdSerata)
);

--------------------------------------------------------------------------------
-- Creazione trigger
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Inserimento elementi nelle tabelle
--------------------------------------------------------------------------------

INSERT INTO Sede (Via, nCivico, Citta) VALUES
      ("Pascoli", 45, "Pisa"),
      ("Fratelli", 23, "Roma"),
      ("delle Vittime", 12, "Roma"),
      ("Europa", 2, "Pisa"),
      ("Filzi", 10, "Livorno");

INSERT INTO Magazzino (IdSede) VALUES
      (2),
      (6),
      (1),
      (2),
      (3),
      (4),
      (7),
      (2),
      (1),
      (8),
      (9);

INSERT INTO Account (Username, Password, Nome, Cognome, Via, nCivico, Comune, Citta, Sesso) VALUES
      ("mario01", "qweutr", "Mario", "Rossi", "del commercio", 98, "Pisa", "Pisa", 0),
      ("luca12", "tretre1", "Luca", "Paoli", "Est", 78, "Collesalvetti", "Livorno", 0),
      ("paola44", "54354tf", "Paola", "Amici", "Roma", 125, "Livorno", "Livorno", 1),
      ("ettore11", "rengregre", "Ettore", "Sallusti", "del vascello", 90, "Cecina", "Livorno", 0);

INSERT INTO ValutazioneRecensione (Account, Recensione, Veridicita, Accuratezza, Descrizione) VALUES
      ("mario01", 3, 2, 1, "Pessima recensione"),
      ("mario01", 4, 5, 5, "Pienamente d'accordo");

--------------------------------------------------------------------------------
-- Query di prova
--------------------------------------------------------------------------------

SELECT * FROM Sede;
SELECT * FROM Magazzino;
SELECT * FROM Account;
SELECT * FROM ValutazioneRecensione;

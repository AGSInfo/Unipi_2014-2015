DROP DATABASE IF EXISTS ProgettoRistoranti;

CREATE DATABASE ProgettoRistoranti;

USE ProgettoRistoranti;

--------------------------------------------------------------------------------
-- CREAZIONE TABELLE
--------------------------------------------------------------------------------

CREATE TABLE Sede (
      IdSede INT,
      Via VARCHAR(20),
      nCivico INT,
      Citta VARCHAR(20),
      PRIMARY KEY (IdSede)
);

CREATE TABLE Magazzino (
      IdMagazzino INT,
      IdSede INT,
      PRIMARY KEY (IdSede)
);

CREATE TABLE Scaffale (
      IdScaffale INT,
      IdMagazzino INT,
      PRIMARY KEY (IdScaffale)
);

CREATE TABLE Confezione (
      IdConfezione INT,
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
      IdIngrediente INT,
      Nome VARCHAR(20),
      Provenienza VARCHAR(20),
      TipoProduzione VARCHAR(20),
      Allergene BOOLEAN,
      PRIMARY KEY (IdIngrediente)
);

## Sistemare nome nel documento
CREATE TABLE Strumento (
      IdStrumento INT,
      Tipo VARCHAR(20),
      Nome VARCHAR(20),
      PRIMARY KEY (IdStrumento)
);

## Sistemare nome nel documento
CREATE TABLE UtilizziStrumento (
      Utilizzo INT,
      Strumento INT,
      PRIMARY KEY (Utilizzo, Strumento)
)

CREATE TABLE Ricetta (
      IdRicetta INT,
      TestoRicetta BLOB, # ???
      PRIMARY KEY (IdRicetta)
);

## Sistemare nome nel documento
CREATE TABLE IngredienteRicetta (
      Ricetta INT,
      Ingrediente INT,
      Quantità FLOAT,
      PRIMARY KEY (Ricetta) # perché non anche ingrediente??
)

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
      IdMenu INT,
      Sede INT,
      DataInizio DATE,
      DataFine DATE,
      PRIMARY KEY (IdMenu)
);

CREATE TABLE Piatto (
      IdPiatto INT,
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
      IdComanda INT,
      Tavolo INT,
      Ora TIMESTAMP,
      TakeAway BOOLEAN,
      Account VARCHAR(20),
      Stato INT,
      Prezzo FLOAT,
      PRIMARY KEY (IdComanda)
);

CREATE TABLE Ordine (
      IdOrdine INT,
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
      IdPrenotazione INT,
      Account VARCHAR(20),
      NumeroTelefono INT,
      Tavolo INT,
      OraPrenotazione TIMESTAMP,
      nPersone INT,
      PRIMARY KEY (IdPrenotazione)
);

CREATE TABLE Pony (
      IdPony INT,
      TipoMezzo INT,
      Stato INT,
      PRIMARY KEY (IdPony)
);

CREATE TABLE StatoConsegna (
      IdStato INT,
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
      FruibilitàPrenotazioni BOOLEAN,
      Sesso INT, # 0 per maschio, 1 per femmina
      PRIMARY KEY (Username)
);

CREATE TABLE Recensione (
      IdRecensione INT,
      Account VARCHAR(20),
      GiudizioGlobale INT,
      GiudizioTesto INT,
      PRIMARY KEY (IdRecensione)
);

## Aggiustare nome nel documento
CREATE TABLE DomandaQuestionario (
      IdComanda INT,
      Domanda BLOB,
      PRIMARY KEY (IdDomanda)
);

CREATE TABLE Compilazione (
      IdDomanda INT,
      IdRecensione INT,
      IdRisposta INT,
      PRIMARY KEY (IdDomanda, IdRecensione, IdRisposta)
);

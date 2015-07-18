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
      TipoProduzione ENUM ('intensiva', 'biologica'),
      Allergene BOOLEAN,

      PRIMARY KEY (IdIngrediente)
);

--------------------------------------------------------------------------------

CREATE TABLE Confezione (
      IdConfezione INT NOT NULL AUTO_INCREMENT,
      Peso FLOAT, # in grammi
      PrezzoAcquisto FLOAT,
      DataAcquisto DATE,
      DataConsegna DATE,
      DataScadenza DATE,
      Aspetto ENUM ('intatto', 'rovinato'),
      Stato ENUM ('completo', 'parziale', 'in uso') DEFAULT 'completo', # ???
      QuantitaRimanente FLOAT,
      Ingrediente INT,
      Scaffale INT,

      PRIMARY KEY (IdConfezione),
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente),
      FOREIGN KEY (Scaffale) REFERENCES Scaffale(IdScaffale)
);

--------------------------------------------------------------------------------

CREATE TABLE Strumento (
      IdStrumento INT AUTO_INCREMENT,
      Tipo ENUM ('M','S'),
      Nome VARCHAR(20),
      Utilizzo TEXT,

      PRIMARY KEY (IdStrumento)
);

--------------------------------------------------------------------------------

CREATE TABLE Ricetta (
      IdRicetta INT NOT NULL AUTO_INCREMENT,
      TestoRicetta TEXT,
	  IngredientePrincipale INT,
      Quantita FLOAT,
      PRIMARY KEY (IdRicetta)
);

--------------------------------------------------------------------------------

CREATE TABLE IngredienteRicetta (
      Ricetta INT,
      Ingrediente INT,
      Quantita FLOAT,

      PRIMARY KEY (Ricetta, Ingrediente), # perché c è scritto solo ricetta??
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta),
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente),
      CHECK (Quantita >= 0)
);

--------------------------------------------------------------------------------

CREATE TABLE Passo (
      Ricetta INT,
      nPasso SMALLINT,
      DescrizionePasso TEXT,
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
      Nome VARCHAR(60),
	  Novita BOOL,
      Ricetta INT,

      PRIMARY KEY (IdPiatto),
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta)

);
-------------------------------------------------------------------------------

CREATE TABLE Menu_Piatto(

	IdPiatto INT NOT NULL,
	IdMenu INT NOT NULL,
	Prezzo FLOAT,

	PRIMARY KEY( IdPiatto,IdMenu),
	FOREIGN KEY (IdMenu) REFERENCES Menu(IdMenu),
	FOREIGN KEY (IdPiatto) REFERENCES Piatto(IdPiatto)

);
--------------------------------------------------------------------------------

-- Questa tabella indica le possibili variazioni che può avere un piatto

CREATE TABLE VariazioniPiatto (

	  IdVariazione INT AUTO_INCREMENT,
      IdPiatto INT,
      DescrizioneVariazione Text,
      PRIMARY KEY (IdVariazione),
      FOREIGN KEY (IdPiatto) REFERENCES Piatto(IdPiatto)
);

--------------------------------------------------------------------------------
Create table Sala (
    IdSala INT NOT NULL AUTO_INCREMENT,
	Sede INT ,
	PRIMARY KEY(IdSala),
	FOREIGN KEY(Sede) REFERENCES Sede(IdSede)
);

CREATE TABLE Tavolo
(

	IdTavolo INT AUTO_INCREMENT,
	NumTavolo INT ,
	Posti INT,
	Sala INT,
	PRIMARY KEY(IdTavolo),
	FOREIGN KEY (Sala) REFERENCES Sala(IdSala),

	UNIQUE(NumTavolo,Sala)
);

CREATE TABLE Comanda (

      IdComanda INT NOT NULL AUTO_INCREMENT,
      IdTavolo INT,
      Ora TIMESTAMP,
      TakeAway BOOLEAN,
      Account VARCHAR(20),
      Stato ENUM('nuova','parziale','evasa') DEFAULT 'nuova',

      PRIMARY KEY (IdComanda),

      FOREIGN KEY (IdTavolo) REFERENCES Tavolo(IdTavolo)


);

--------------------------------------------------------------------------------

CREATE TABLE Ordine (
      IdOrdine INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Piatto INT,
      Variazione1 INT,
      Variazione2 INT,
      Variazione3 INT,
      Stato enum('attesa','preparazione','servizio') Default 'attesa',

     PRIMARY KEY (IdOrdine),
     FOREIGN KEY (Comanda) REFERENCES Comanda(IdComanda),
	 FOREIGN KEY (Variazione1) REFERENCES VariazioniPiatto(IdVariazione),
	 FOREIGN KEY (Variazione2) REFERENCES VariazioniPiatto(IdVariazione),
	 FOREIGN KEY (Variazione3) REFERENCES VariazioniPiatto(IdVariazione),
	 FOREIGN KEY (Piatto) REFERENCES Piatto(IdPiatto)
);

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
      Sesso ENUM ('M', 'F'),
      PRIMARY KEY (Username)
);


CREATE TABLE Prenotazione (

      IdPrenotazione INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      NumeroTelefono INT,
      Tavolo INT,
      OraPrenotazione TIMESTAMP,
      nPersone INT,

      PRIMARY KEY (IdPrenotazione),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY(Tavolo) REFERENCES Tavolo(IdTavolo)
);

--------------------------------------------------------------------------------

CREATE TABLE Pony (
      IdPony INT NOT NULL AUTO_INCREMENT,
      TipoMezzo INT,
      Stato ENUM ('libero', 'occupato') DEFAULT 'libero',
      PRIMARY KEY (IdPony)
);

--------------------------------------------------------------------------------

CREATE TABLE StatoConsegna (
      IdStato INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Pony INT,
      Stato ENUM ('programmato', 'in consegna', 'consegnato', 'ritorno') DEFAULT 'programmato',
      Ora TIMESTAMP,

      PRIMARY KEY (IdStato),
      FOREIGN KEY (Comanda) REFERENCES Comanda(IdComanda),
      FOREIGN KEY (Pony) REFERENCES Pony(IdPony)
);

--------------------------------------------------------------------------------

CREATE TABLE Recensione (

      IdRecensione INT NOT NULL AUTO_INCREMENT,
	  Account VARCHAR(20),
      GiudizioGlobale INT,
      GiudizioTesto TEXT,
      DataRecensione DATE,


      Tipo ENUM ('Ristorante','Piatto'),
      PiattoRecensito INT,
      PRIMARY KEY (IdRecensione),
      FOREIGN KEY (Account) REFERENCES Account(Username),
	  FOREIGN KEY (PiattoRecensito) REFERENCES Piatto( IdPiatto),
	  CHECK (GiudizioGlobale >= 0 AND GiudizioGlobale <= 5)
);

--------------------------------------------------------------------------------

CREATE TABLE DomandaQuestionario (
      IdDomanda INT NOT NULL AUTO_INCREMENT,
      Domanda TEXT,
      PRIMARY KEY (IdDomanda)
);

--------------------------------------------------------------------------------

CREATE TABLE Compilazione(

     IdRecensione INT,
     IdDomanda INT,
	 Risposta ENUM ('molto poco','poco','abbastanza','molto','moltissimo'),
	 PRIMARY KEY (IdRecensione,IdDomanda),
	 FOREIGN KEY(IdRecensione) REFERENCES Recensione(IdRecensione),
	 FOREIGN KEY(IdDomanda) REFERENCES DomandaQuestionario(IdDomanda)
 );

--------------------------------------------------------------------------------

CREATE TABLE ValutazioneRecensione (
      Account VARCHAR(20),
      Recensione INT,
      Veridicita INT,
      Accuratezza INT,
      Descrizione TEXT,

      PRIMARY KEY (Account, Recensione),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY (Recensione) REFERENCES Recensione(IdRecensione),
      CHECK (Veridicita >= 0 AND Veridicita <= 5 AND Accuratezza >= 0 AND Accuratezza <= 5)
);

--------------------------------------------------------------------------------

CREATE TABLE PropostaPiatto (
      IdPropostaPiatto INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      Nome VARCHAR(255),

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
      Descrizione TEXT,

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
      Modifica TEXT,

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

CREATE TABLE Serata (
      IdSerata INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      NomeOrganizzatore VARCHAR(20),
      CognomeOrganizzatore VARCHAR(20),
      TelefonoOrganizzatoreSala INT,
      Allestimento TEXT,
      nPersone INT,
      Sala INT,
      Data TIMESTAMP,

      PRIMARY KEY (IdSerata),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY (Sala)  REFERENCES Sala(IdSala)
);

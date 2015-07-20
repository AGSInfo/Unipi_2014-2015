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
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE Magazzino (
      IdMagazzino INT NOT NULL AUTO_INCREMENT,
      IdSede INT,

      PRIMARY KEY (IdMagazzino),
      FOREIGN KEY (IdSede) REFERENCES Sede(IdSede) ON DELETE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esiste un vincolo di integrita referenziale tra l'attributo IdSede di Magazzino e IdSede 
-- di Sede
--------------------------------------------------------------------------------

CREATE TABLE Scaffale (
      IdScaffale INT NOT NULL AUTO_INCREMENT,
      IdMagazzino INT,

      PRIMARY KEY (IdScaffale),
      FOREIGN KEY (IdMagazzino) REFERENCES Magazzino(IdMagazzino)
      ON DELETE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esiste un vincolo di integrita referenziale tra l'attributo IdMagazzino
-- di Magazzino e IdMagazzino di Magazzino
--------------------------------------------------------------------------------

CREATE TABLE Ingrediente (
      IdIngrediente INT NOT NULL AUTO_INCREMENT,
      Nome VARCHAR(20),
      Provenienza VARCHAR(20),
      TipoProduzione ENUM ('intensiva', 'biologica'),
      Allergene BOOLEAN,

      PRIMARY KEY (IdIngrediente)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

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
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente) ON DELETE CASCADE,
      FOREIGN KEY (Scaffale) REFERENCES Scaffale(IdScaffale) ON DELETE SET NULL
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esistono due vincoli di integrita referenziale tra l'attributo Ingrediente
-- di Confezione e IdIngrediente di Ingrediente e tra Scaffale di Confezione
-- e IdScaffale di Scaffale
--------------------------------------------------------------------------------

CREATE TABLE Strumento (
      IdStrumento INT AUTO_INCREMENT,
      Tipo ENUM ('M','S'),
      Nome VARCHAR(20),
      Utilizzo TEXT,
	  Sede INT,
      PRIMARY KEY (IdStrumento),
      FOREIGN KEY(Sede) REFERENCES Sede(IdSede) ON DELETE SET NULL
      ON UPDATE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esiste un vincolo di integrita referenziale tra l'attributo Sede
-- di Strumento e IdSede di Sede
--------------------------------------------------------------------------------

CREATE TABLE Ricetta (
      IdRicetta INT NOT NULL AUTO_INCREMENT,
      TestoRicetta TEXT,
	  IngredientePrincipale INT,
      Quantita FLOAT,
      Allergene BOOL DEFAULT FALSE,
      PRIMARY KEY (IdRicetta),
      check(Quantita >= 0),
      FOREIGN KEY (IngredientePrincipale) REFERENCES Ingrediente(IdIngrediente)
      ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esiste un vincolo di integrita referenziale tra l'attributo IngredientePrincipale
-- di Ricetgta e IdIngrediente di Ingrediente
--------------------------------------------------------------------------------

CREATE TABLE IngredienteRicetta (
      Ricetta INT,
      Ingrediente INT,
      Quantita FLOAT,

      PRIMARY KEY (Ricetta, Ingrediente), 
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta) ON DELETE CASCADE,
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente)
      ON DELETE CASCADE,
      CHECK (Quantita >= 0)
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esistono due vincoli di integrita referenziale tra l'attributo Ingrediente
-- di IngredienteRicetta e IdIngrediente di Ingrediente e tra Ricetta 
-- di IngredienteRicetta e IdRicetta di Ricetta
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
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta) on DELETE CASCADE,
      FOREIGN KEY (Strumento) REFERENCES Strumento(IdStrumento) ON DELETE SET NULL,
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente) ON DELETE SET NULL,
      CHECK (TempoUtilizzo >= 0 AND QuantitaUtilizzata >= 0)
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esistono tre vincoli di integrita referenziale tra l'attributo Ingrediente
-- di Passo e IdIngrediente di Ingrediente e tra Ricetta 
-- di Psso e IdRicetta di Ricetta e tra Struemnto di Passo e IdStrumento di Strumento
--------------------------------------------------------------------------------

CREATE TABLE Menu (
      IdMenu INT NOT NULL AUTO_INCREMENT,
      Sede INT,
      DataInizio DATE,
      DataFine DATE,

      PRIMARY KEY (IdMenu),
      FOREIGN KEY (Sede) REFERENCES Sede(IdSede) ON DELETE CASCADE 
	  ON UPDATE CASCADE,
      CHECK (DataInizio <= DataFine)
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esiste un vincolo di integrita referenziale tra l'attributo Sede
-- di Menu e IdSede di Sede
--------------------------------------------------------------------------------


CREATE TABLE Piatto (
      IdPiatto INT NOT NULL AUTO_INCREMENT,
      Nome VARCHAR(60),
	Novita BOOL,
      Ricetta INT,
      
      PRIMARY KEY (IdPiatto),
      FOREIGN KEY (Ricetta) REFERENCES Ricetta(IdRicetta) on Delete SET NULL
      ON UPDATE CASCADE

)ENGINE=INNODB DEFAULT CHARSET=latin1;
-- Esiste un vincolo di integrita referenziale tra l'attributo Ricetta
-- di Piatto e IdRicetta di Ricetta
-------------------------------------------------------------------------------

CREATE TABLE Menu_Piatto(

	IdPiatto INT NOT NULL,
	IdMenu INT NOT NULL,
	Prezzo FLOAT,

	PRIMARY KEY( IdPiatto,IdMenu),
	FOREIGN KEY (IdMenu) REFERENCES Menu(IdMenu) ON DELETE CASCADE,
	FOREIGN KEY (IdPiatto) REFERENCES Piatto(IdPiatto) ON DELETE CASCADE

)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------


CREATE TABLE VariazioniPiatto (

	  IdVariazione INT AUTO_INCREMENT,
      IdPiatto INT,
      DescrizioneVariazione Text,
      PRIMARY KEY (IdVariazione),
      FOREIGN KEY (IdPiatto) REFERENCES Piatto(IdPiatto) on Delete CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------
Create table Sala (
    IdSala INT NOT NULL AUTO_INCREMENT,
	Sede INT ,
	PRIMARY KEY(IdSala),
	FOREIGN KEY(Sede) REFERENCES Sede(IdSede) ON DELETE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE Tavolo
(

	IdTavolo INT AUTO_INCREMENT,
	NumTavolo INT ,
	Posti INT,
	Sala INT,
	PRIMARY KEY(IdTavolo),
	FOREIGN KEY (Sala) REFERENCES Sala(IdSala) ON DELETE CASCADE,

	UNIQUE(NumTavolo,Sala)
)ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE Comanda (

      IdComanda INT NOT NULL AUTO_INCREMENT,
      IdTavolo INT,
      Ora TIMESTAMP,
      TakeAway BOOLEAN,
      Account VARCHAR(20),
      Stato ENUM('nuova','parziale','evasa') DEFAULT 'nuova',

      PRIMARY KEY (IdComanda),

      FOREIGN KEY (IdTavolo) REFERENCES Tavolo(IdTavolo) ON DELETE SET NULL


)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE Ordine (
      IdOrdine INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Piatto INT,
      Stato enum('attesa','preparazione','servizio') Default 'attesa',

     PRIMARY KEY (IdOrdine),
     FOREIGN  KEY (Comanda) REFERENCES Comanda(IdComanda) ON DELETE CASCADE,
	 FOREIGN KEY (Piatto) REFERENCES Piatto(IdPiatto) ON DELETE SET NULL
)ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE OrdineVariazione(
	IdOrdine INT NOT NULL,
	IdVariazione INT NOT NULL,
	PRIMARY KEY(IdOrdine,IdVariazione)
	FOREIGN KEY (IdOrdine) REFERENCES Ordine(IdOrdine) on DELETE CASCADE
	FOREIGN KEY (IdVariazione) REFERENCES VariazioniPiatto(IdVarazione) on DELETE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;


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
)ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE Prenotazione (

      IdPrenotazione INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      NumeroTelefono INT,
      Tavolo INT,
      OraPrenotazione TIMESTAMP,
      nPersone INT,

      PRIMARY KEY (IdPrenotazione),
      FOREIGN KEY (Account) REFERENCES Account(Username) on Delete Cascade on UPDATE CASCADE,
      FOREIGN KEY(Tavolo) REFERENCES Tavolo(IdTavolo) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE Pony (
      IdPony INT NOT NULL AUTO_INCREMENT,
      TipoMezzo INT,
      Stato ENUM ('libero', 'occupato') DEFAULT 'libero',
      PRIMARY KEY (IdPony)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE StatoConsegna (
      IdStato INT NOT NULL AUTO_INCREMENT,
      Comanda INT,
      Pony INT,
      Stato ENUM ('programmato', 'in consegna', 'consegnato', 'ritorno') DEFAULT 'programmato',
      Ora TIMESTAMP,

      PRIMARY KEY (IdStato),
      FOREIGN KEY (Comanda) REFERENCES Comanda(IdComanda) ON DELETE CASCADE,
      FOREIGN KEY (Pony) REFERENCES Pony(IdPony) ON DELETE SET NULL
)ENGINE=INNODB DEFAULT CHARSET=latin1;
-
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
      FOREIGN KEY (Account) REFERENCES Account(Username) on DELETE CASCADE,
	  FOREIGN KEY (PiattoRecensito) REFERENCES Piatto( IdPiatto) ON DELETE CASCADE,
	  CHECK (GiudizioGlobale >= 0 AND GiudizioGlobale <= 5)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE DomandaQuestionario (
      IdDomanda INT NOT NULL AUTO_INCREMENT,
      Domanda TEXT,
      PRIMARY KEY (IdDomanda)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE Compilazione(

     IdRecensione INT,
     IdDomanda INT,
	 Risposta ENUM ('molto poco','poco','abbastanza','molto','moltissimo'),
	 PRIMARY KEY (IdRecensione,IdDomanda),
	 FOREIGN KEY(IdRecensione) REFERENCES Recensione(IdRecensione) ON DELETE CASCADE,
	 FOREIGN KEY(IdDomanda) REFERENCES DomandaQuestionario(IdDomanda) ON DELETE CASCADE
 )ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE ValutazioneRecensione (
      Account VARCHAR(20),
      Recensione INT,
      Veridicita INT,
      Accuratezza INT,
      Descrizione TEXT,

      PRIMARY KEY (Account, Recensione),
      FOREIGN KEY (Account) REFERENCES Account(Username) ON DELETE CASCADE,
      FOREIGN KEY (Recensione) REFERENCES Recensione(IdRecensione) ON DELETE CASCADE,
      CHECK (Veridicita >= 0 AND Veridicita <= 5 AND Accuratezza >= 0 AND Accuratezza <= 5)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE PropostaPiatto (
      IdPropostaPiatto INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      Nome VARCHAR(255),

      PRIMARY KEY (IdPropostaPiatto),
      FOREIGN KEY (Account) REFERENCES Account(Username)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE IngredienteNuovoPiatto (
      PropostaPiatto INT,
      Ingrediente INT,
      Quantita FLOAT,

      PRIMARY KEY (PropostaPiatto, Ingrediente),
      FOREIGN KEY (PropostaPiatto) REFERENCES PropostaPiatto(IdPropostaPiatto)
      ON DELETE CASCADE,
      FOREIGN KEY (Ingrediente) REFERENCES Ingrediente(IdIngrediente)
      ON DELETE CASCADE,
      CHECK (Quantita >= 0)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE ValutazionePropostaPiatto (
      Account VARCHAR(20),
      PropostaPiatto INT,
      Valutazione INT,
      Descrizione TEXT,

      PRIMARY KEY (Account, PropostaPiatto),
      FOREIGN KEY (Account) REFERENCES Account(Username) ON DELETE CASCADE,
      FOREIGN KEY (PropostaPiatto) REFERENCES PropostaPiatto(IdPropostaPiatto)
      ON DELETE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE VariantePiatto (
      IdVariante INT NOT NULL AUTO_INCREMENT,
      Account VARCHAR(20),
      Piatto INT,

      PRIMARY KEY (IdVariante),
      FOREIGN KEY (Account) REFERENCES Account(Username) ON DELETE CASCADE,
      FOREIGN KEY (Piatto) REFERENCES Piatto(IdPiatto) ON DELETE CASCADE
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE ModificaVariazione (
      IdModifica INT NOT NULL AUTO_INCREMENT,
      VariantePiatto INT,
      Modifica TEXT,

      PRIMARY KEY (IdModifica),
      FOREIGN KEY (VariantePiatto) REFERENCES VariantePiatto(IdVariante)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

--------------------------------------------------------------------------------

CREATE TABLE ValutazioneVariazione (
      Account VARCHAR(20),
      VariantePiatto INT,
      Valutazione INT,

      PRIMARY KEY (Account, VariantePiatto),
      FOREIGN KEY (Account) REFERENCES Account(Username),
      FOREIGN KEY (VariantePiatto) REFERENCES VariantePiatto(IdVariante),
      CHECK (Valutazione >= 0 OR Valutazione <= 5)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

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
)ENGINE=INNODB DEFAULT CHARSET=latin1;

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
      Aspetto INT, --> ???
      Stato INT, --> ???
      QuantitàRimanente FLOAT, --> ???
      Ingrediente INT,
      Scaffale INT,
      PRIMARY KEY (IdConfezione)
);

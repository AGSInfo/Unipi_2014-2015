DROP DATABASE IF EXISTS ProgettoRistoranti;

CREATE DATABASE ProgettoRistoranti;

CREATE TABLE Sede (
      IdSede INT,
      Via VARCHAR(20),
      nCivico INT,
      Citta VARCHAR(20),
      PRIMARY KEY (IdSede)
);

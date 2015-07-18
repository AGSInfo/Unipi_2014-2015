SET FOREIGN_KEY_CHECKS = 0;

truncate TABLE Sede;

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

-- ------------------------------------------------------------------------------

TRUNCATE TABLE Magazzino;
INSERT INTO Magazzino (IdSede) VALUES
      (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);
-- ------------------------------------------------------------------------------

TRUNCATE TABLE Scaffale;

INSERT INTO Scaffale (IdMagazzino) VALUES
      (2), (2), (1), (9), (1), (2), (3), (4), (5), (6), (7), (8), (8), (7),
      (1), (3), (10), (3), (4), (5);

-- ------------------------------------------------------------------------------

TRUNCATE TABLE Ingrediente;

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
      ("Tagliatelle", "Italia", "biologica", FALSE),
      ("Carne di Pollo","Italia","intensiva",TRUE),
      ("Brodo","Italia","intensiva",TRUE),
      ("Limone","Italia","Biologica",FALSE),
      ("Bistecca di Bue","Argentina","Intensiva",TRUE),
      ("Cotolette di Maiale","Italia","Biologica",FALSE),
      ("Pomodoro","Italia","Biologica",FALSE),
      ("Cipolle","Italia","Biologica",FALSE),
      ("Spaghetti","Italia","Intensiva",TRUE),
      ("Pesci Misti","Mar Mediterraneo","Biologica",TRUE),
      ("Farina 00","Italia","Intensiva",TRUE),
      ("Funghi Porcini","Italia","Intensiva",FALSE),
      ("Riso","Italia","Intensiva",False),
      ("Tartufo","Italia",NULL,False),
      ("Carne di Cinghiale","Italia",NULL,False),
      ("Panna da cucina","Italia","Biologica",TRUE);


-- ------------------------------------------------------------------------------
TRUNCATE TABLE Confezione;

INSERT INTO Confezione (Peso, PrezzoAcquisto, DataAcquisto, DataConsegna, DataScadenza, Aspetto, Ingrediente, Scaffale) VALUES

      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", 'intatto', 1, 5),
	  (1000, 1, "2015-01-01", "2015-01-08", "2016-01-01", 'intatto', 1, 2),
	  (1000, 1, "2015-01-01", "2015-01-05", "2016-01-01", 'intatto', 1, 4),
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", 'intatto', 2, 3),
      (1000, 1, "2015-03-01", "2015-03-10", "2016-01-01", 'rovinato', 3, 1),
      (1000, 10, "2015-01-05","2015-01-10", "2016-01-01", 'intatto', 4, 7),
	  (1000, 5, "2015-02-01", "2015-02-10", "2016-01-01", 'intatto', 5, 3),
      (1000, 3, "2015-01-01", "2015-01-20", "2016-01-01", 'rovinato', 6, 3),
      (1000, 8, "2015-01-01", "2015-01-07", "2016-01-01", 'intatto', 7, 1),
      (1000, 5, "2015-01-01", "2015-01-12", "2016-01-01", 'intatto', 8, 7),
	  (1000, 3, "2015-01-01", "2015-01-09", "2016-01-01", 'rovinato', 9, 2),
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", 'intatto', 10, 3),
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", 'intatto', 2, 1),
      (1000, 1, "2015-01-01", "2015-01-10", "2016-01-01", 'rovinato', 4, 7),
      (5000,15,"2015-03-21","2015-03-23","2105-03-27",'intatto',11,7);

-- ------------------------------------------------------------------------------
Truncate Table Strumento;

INSERT INTO Strumento (Tipo,Nome,Utilizzo) VALUES
('M',"Forno","Cuocere"),('M',"Impastatrice","Preparare la pasta"),
('S',"Frusta","Sbattere"),('M',"Friggitrice","Friggere"),
('S',"Mixer","Frullare gli ingredienti"),('M',"Piastra Elettrica","Cottura Elettrica"),
('S',"Taglia Verdure","Tagliare le Verdure"),('S',"Lavello","Lavare gli ingrediento"),
('S',"Fornelli","Cuocere a fiamma"),('M',"Affettatrice","Affettare la carne"),
('S',"Brace","Cottura");

-- -----------------------------------------------------------------------------------
Truncate Table Ricetta;
INSERT INTO Ricetta (TestoRicetta,IngredientePrincipale,Quantita) VALUES
("Per realizzare la ricetta del pollo alla maceratese inizia col procurarti
un pollo ruspante da 1 kg e 1/2 diviso in 8 pezzi e con le interiora a parte. Sala e pepa i pezzi di pollo dentro e fuori. Pulisci le interiora,
riducile a tocchetti e soffriggile in una casseruola con l’olio e il burro. Quindi unisci i pezzi di pollo e rosolali girandoli un paio di volte.
,Aggiungi brodo e acqua, in pari quantità, in modo da raggiungere un livello di 5 cm. Copri la casseruola con un foglio di alluminio e poi con il coperchio e cuoci per circa un’ora.
,Togli il pollo dalla casseruola e mettilo su un piatto da portata. Filtra il fondo di cottura, sbattilo con i tuorli, il succo del limone, sale
 e pepe e irrora il pollo con la salsina ottenuta. Servi il pollo alla maceratese. ",11,1500),

 ("Per Prepare gli spaghetti al pomodoro buttare i pomodori in una pentola di acqua salata bollente per qualche minuto e poi toglierli e spelarli.
 Tagliate i pomodori a pezzi. Prendete una casseruola ampia e antiaderente, versatevi tre cucchiai di olio extravergine di oliva, e portatelo a temperatura.
 Pelate le cipolle, tritatele. Fatele soffriggere dolcemente nell'olio. Aggiungete i pomodori e fateli cuocere a fiamma media fino a
 quando l'acqua dell'ortaggio non si rapprende regalandoci una meravigliosa salsa, sempre mescolando di quando in quando (circa 25 minuti).
Aggiungete una presa di zucchero per regolare l'acidità. Nel frattempo lessate gli spaghetti in abbondante acqua salata in ebollizione,
scolateli al dente. A fine cottura dei pomodori freschi, insaporite con sale e basilico sminuzzato. Spegnete i fornelli e lasciate
riposare il tutto per qualche minuto. Versate gli spaghetti direttamente nella pentola della salsa (se non dovete conservarla) e mescolate per bene.
 Impiattate e condite con un filo di olio d'oliva a crudo.",NULL,NULL),

("Cuocete gli spaghetti in acqua bollente e salata.
Nel frattempo, tagliate il guanciale a listarelle e fatelo soffriggere in una padella senza aggiungere olio.
In contemporanea sbattere i tuorli delle uova con il pecorino in una terrina: aggiungete due cucchiai di acqua di cottura degli spaghetti e una macinata di pepe nero.
Scolate gli spaghetti al dente.
Versate gli spaghetti nella padella col guanciale e mescolate bene.
Togliete la padella da fuoco e aggiungete i tuorli sbattuti: mescolate bene e aggiungete un cucchiaio dell'acqua di cottura per un risultato cremoso.
Spolverate con Pecorino grattugiato e una macinata di pepe nero.
Servite immediatamente.",NULL,NULL),


("Cuocete gli spaghetti in acqua bollente e salata.
Nel frattempo, tagliate il guanciale a listarelle e fatelo soffriggere in una padella senza aggiungere olio.
In contemporanea sbattere i tuorli delle uova con il pecorino in una terrina: aggiungete due cucchiai di acqua di cottura degli spaghetti e una macinata di pepe nero.
Scolate gli spaghetti al dente.
Versate gli spaghetti nella padella col guanciale e mescolate bene.
Togliete la padella da fuoco e aggiungete i tuorli sbattuti: mescolate bene e aggiungete un cucchiaio dell'acqua di cottura per un risultato cremoso.
Spolverate con Pecorino grattugiato e una macinata di pepe nero.
Servite immediatamente.",NULL,NULL),

("Preparate la brace in modo che sia viva ma senza fiamma. Se usate una bistecchiera,
fatela scaldare bene. Mettete la bistecca a temperatura ambiante sulla griglia,
fatela cuocere per 5 minuti ogni lato fino a che la superficie sarà ben colorita e leggermente abbrustolita.
Togliete la bistecca dal fuoco, insaporite con sale e pepe entrambi i lati e portate in tavola.",15,500),

("per prima cosa prepariamo la pasta in questo modo: su di una spianatoia sistemate la farina a fontana e al centro mettete l'olio,
 il lievito sciolto in un pò d'acqua tiepida e un pizzico si sale. Impastate il tutto, unendo altra acqua se serve, e fate una bella palla
(la pasta deve risultare asciutta e soda). Copritela con un canovaccio pulitissimo e fatela riposare almeno 2 ore in un luogo caldo ed asciutto.
Trascorso il tempo tagliate la pasta in tante parti per quante pizze volete ricavare. Stendetela col mattarello e datele la tradizionale forma rotonda.
Aggiungete il pomodoro sgocciolato e spezzettato e il sale. Dopo circa 20 minuti di cottura a 250 gradi aggiungete la mozzarella e l'olio,
quando la mozzarella sarà diventata filante aggiungete il basilico. Sfornate dopo qualche minuto e servite caldissimo.",NULL,NULL),

("Esplora il significato del termine: Sbattete le uova e pepatele (senza salarle perché il sale staccherebbe l’impanatura durante la cottura).
Incidete le costolette lungo il bordo di tessuto connettivo, per evitare che si arriccino durante la cottura, poi intingetele nelle uova, bagnandole uniformemente;
 quindi passatele nel pangrattato, facendo in modo che se ne rivestano bene.
Sciogliete il burro nella padella, facendolo scaldare fino a quando diventerà di colore nocciola molto intenso, quindi friggetevi le cotolette,
girandole una sola volta a metà cottura: dovrebbero essere sufficienti 6-8 minuti per lato.
Togliete le cotolette dalla padella usando il mestolo forato, salatele e servitele irrorate con una parte del burro di cottura,
 dopo averle decorate con spicchi di limone e qualche fogliolina di prezzemolo.Sbattete le uova e pepatele
 (senza salarle perché il sale staccherebbe l’impanatura durante la cottura). Incidete le costolette lungo il bordo di tessuto connettivo,
 per evitare che si arriccino durante la cottura, poi intingetele nelle uova, bagnandole uniformemente; quindi passatele nel pangrattato, facendo in modo che se ne rivestano bene.
Sciogliete il burro nella padella, facendolo scaldare fino a quando diventerà di colore nocciola molto intenso,
 quindi friggetevi le cotolette, girandole una sola volta a metà cottura: dovrebbero essere sufficienti 6-8 minuti per lato.
Togliete le cotolette dalla padella usando il mestolo forato, salatele e servitele
irrorate con una parte del burro di cottura, dopo averle decorate con spicchi di limone e qualche fogliolina di prezzemolo.",16,150);

-- ------------------------------------------------------------------------------
TRUNCATE TABLE Passo;
INSERT INTO Passo (Ricetta,nPasso,DescrizionePasso,Strumento,TempoUtilizzo, Ingrediente,QuantitaUtilizzata) VALUES
(1,1,"Salare e pepare 1.5 Kg di pollo diviso in 8 pezzi",NULL,3,11,1500),
(1,2,"Soffriggere le interiora del pollo e uniscile agli 8 pezzi",9,5,NULL,NULL),
(1,3,"Aggiungere Brodo e Acqua fino a raggiungere 5 cm",NULL,2,12,20),
(1,4,"Preparare il Sugo con due tuorli di uova",NULL,2,5,2),
(1,5,"Aggiungere il succo di Limone e condire con sale e pepe",NULL,1,13,1),
(1,6,"Servire in Tavola",NULL,NULL,NULL,NULL),
(2,1,"Buttare i pomodori in una pentola di acqua salata e lasciarli bollire per 2 minuti",NULL,3,18,100),
(2,2,"Pelare i pomodori e versarli in una pentola insieme a 3 cucchiai di olio",NULL,1,NULL,NULL),
(2,3,"Tritare le cipolle e falle soffiriggere nel l'olio insieme ai pomodori a fiamma media",NULL,25,19,20),
(2,4,"Preparare gli spacchetti facendoli bollire",NULL,14,20,100),
(2,5,"Condire gli spaghetti scolati con il sugo",NULL,1,NULL,NULL);

-- ------------------------------------------------------------------------------
truncate TABLE Piatto;
INSERT INTO Piatto (Nome,Novita,Ricetta) VALUES

("Pollo alla Maceratese",TRUE,1),
("Pasta al Pomodoro",TRUE,2),
("Pasta alla carbonara",TRUE,1),
("Bistecca alla fiorentina",TRUE,1),
("Pizza Margherita",TRUE,1),
("Cotolette alla milanese",TRUE,1);

-- ------------------------------------------------------------------------------
TRUNCATE TABLE Account;
INSERT INTO Account (Username, Password, Nome, Cognome, Via, nCivico, Comune, Citta, Sesso) VALUES
      ("mario01", "qweutr", "Mario", "Rossi", "del commercio", 98, "Pisa", "Pisa", 'M'),
      ("luca12", "tretre1", "Luca", "Paoli", "Est", 78, "Collesalvetti", "Livorno", 'M'),
      ("paola44", "54354tf", "Pxaola", "Amici", "Roma", 125, "Livorno", "Livorno", 'F'),
      ("lucia11", "4n3aaaa", "Lucia", "Ettori", "del Valico", 1, "Pisa", "Pisa", 'F'),
      ("gianfra22", "fewnf911", "Gianfranco", "Spostali", "del Risorgimento", 34, "Cenaia", "Pisa", 'F'),
      ("ettore11", "rengregre", "Ettore", "Sallusti", "del vascello", 90, "Cecina", "Livorno", 'M'),
      ("laura44", "nty34843", "Laura", "Rossi", "Europa", 9, "Pisa", "Pisa", 'F'),
	  ("FraMaria87", "abdu1212","Francesco", "Maria", "Danimarca", 34, "Firenze", "Firenze", 'M'),
      ("Samu81", "renegade32", "Samuele", "Vittorini", "Aretina", 356, "Sieci", "Firenze", 'M'),
      ("laura84", "farmar1822", "Laura", "Grazini", "Europa", 9, "Vinovo", "Torino", 'F');

-- ------------------------------------------------------------------------------
TRUNCATE TABLE Recensione;

INSERT INTO Recensione (Account, GiudizioGlobale, GiudizioTesto, DataRecensione, Tipo, PiattoRecensito) VALUES
      ("mario01", 5, "Veramente ottimo!", current_date(),'Ristorante',NULL),
      ("luca12", 2, "Poco soddisfatto..", current_date(),'Piatto',NULL),
      ("ettore11", 3, "Abbastanza buono..", current_date(),'Ristorante',NULL),
	  ("Paola44", 5, "Veramente ottimo!", current_date(),'Piatto',NULL),
      ("gianfra22", 1, "Poco soddisfatto..", current_date(),'Ristorante',NULL),
      ("Samu81", 4, "Molto buono..", current_date(),'Piatto',NULL),
	  ("laura84", 5, "Piatto Delizioso, consigliatissimo!", current_date(),'Piatto',NULL),
      ("FraMaria87", 2, "Piatto che non vale il prezzo", current_date(),'Piatto',NULL),
      ("lucia11", 3, "Ottimo Ristorante, servizio ottimo e piatti deliziosi", current_date(),'Ristorante',NULL),
	  ("mario01", 5, "Piatto Meraviglioso, ottima la qualità degli ingredienti e sapori eccezionali!", current_date(),'Piatto',NULL);

-- ------------------------------------------------------------------------------
TRUNCATE TABLE ValutazioneRecensione;

INSERT INTO ValutazioneRecensione (Account, Recensione, Veridicita, Accuratezza, Descrizione) VALUES
      ("mario01", 2, 2, 1, "Pessima recensione"),
      ("mario01", 3, 5, 5, "Pienamente d accordo"),
      ("luca12", 1, 1, 2, "Recensione molto scarsa"),
	  ("Paola44", 5, 2, 1, "Non mi trovo d'accordo con la recensione"),
      ("mario01", 6, 5, 5, "Ottima recensione, semplice ma diretta"),
      ("Samu81", 4, 1, 1, "Recensione molto approssimativa in tutti i punti trattati"),
	  ("mario01", 9, 4, 2, "Recensione non troppo accurata ma veritiera"),
      ("ettore11", 8, 5, 4, "Recensione scritta molto bene"),
      ("FraMaria87", 7, 5, 2, "Mi trovo in accordo con la recensione ma comunque è troppo approssimativa"),
	  ("gianfra22", 10, 5, 5, "Recensione esaustiva e corretta secondo i miei parametri");

-- ------------------------------------------------------------------------------

 TRUNCATE TABLE Menu;

 INSERT INTO Menu (Sede,DataInizio,DataFine) VALUES
	(1,current_date()-interval 4 month,NULL),
	(2,current_date()-interval 4 month,NULL),
	(3,current_date()-interval 4 month,NULL),
	(4,current_date()-interval 4 month,NULL),
    (5,current_date()-interval 4 month,NULL),
	(6,current_date()-interval 4 month,NULL),
	(7,current_date()-interval 4 month,NULL),
    (8,current_date()-interval 4 month,NULL),
    (9,current_date()-interval 4 month,NULL),
    (10,current_date()-interval 4 month,NULL);

-- -------------------------------------------------------------------------------


TRUNCATE TABLE Menu_Piatto;

INSERT INTO Menu_Piatto (IdPiatto,IdMenu,Prezzo) VALUES
(1,2,NULL),(1,4,NULL),(1,5,NULL),(1,6,NULL),(2,1,NULL),
(2,3,NULL),(2,5,NULL),(2,6,NULL),(3,6,NULL),(5,4,NULL),
(6,1,NULL),(6,5,NULL),(8,3,NULL),(9,4,NULL),(9,5,NULL);

-- ----------------------------------------------------------------------------------

TRUNCATE TABLE VariazioniPiatto;

INSERT INTO VariazioniPiatto(IdPiatto,DescrizioneVariazione) VALUES
(3,"Aggiungere la panna"),(3,"Rimuovere la pancetta\guanciale"),
(4,"Cotta al sangue"),(4,"Ben Cotta"),(4,"Senza Condimento"),
(5,"Senza Formaggio"),(5,"Aggiunta di cipolla"),(6,"Con Ketchup"),
(6,"Senza condimento");

-- ----------------------------------------------------------------------------------

TRUNCATE TABLE Sala;

INSERT INTO Sala(Sede) VALUES
(1),(1),(2),(3),(3),(3),(4),(4),(4),(5),
(6),(7),(7),(7),(8),(8),(9),(9),(9),(9),(10);

-- -----------------------------------------------------------------------------------

TRUNCATE TABLE Tavolo;

Insert into Tavolo(NumTavolo,Posti,Sala) VALUES

(1,4,1),(2,5,1),(1,10,2),(2,2,2),(1,4,3),(2,6,3),
(1,4,4),(1,4,5),
(1,4,6),(1,4,7),(1,4,8),(1,4,10),(1,4,9);

-- ----------------------------------------------------------------------------------

TRUNCATE TABLE Comanda;

INSERT INTO Comanda(IdTavolo,Ora,TakeAway,Account) VALUES
(1,current_timestamp(),FALSE,NULL),
(NULL,current_timestamp(),True,"luca12"),
(2,current_timestamp(),FALSE,NULL),
(NULL,current_timestamp(),True,"luca12"),
(5,current_timestamp(),FALSE,NULL),
(NULL,current_timestamp(),True,"mario01"),
(8,current_timestamp(),FALSE,NULL),
(NULL,current_timestamp(),True,"gianfra22"),
(5,current_timestamp(),FALSE,NULL),
(NULL,current_timestamp(),True,"FraMaria87");

-- --------------------------------------------------------------------------------------

Truncate table Ordine;

INSERT INTO Ordine (Comanda,Piatto,Variazione1,Variazione2,Variazione3) VALUES
(1,2,NULL,NULL,NULL),(1,1,NULL,NULL,NULL),(2,4,3,NULL,NULL),(2,3,1,2,NULL),
(3,5,NULL,NULL,NULL),(4,5,6,7,NULL),(6,5,6,NULL,NULL),(5,1,NULL,NULL,NULL),
(10,6,NULL,NULL,NULL),(10,6,8,NULL,NULL),(9,1,NULL,NULL,NULL),(9,4,NULL,NULL,NULL);


-- -------------------------------------------------------------------------------------

TRUNCATE TABLE Prenotazione;

Insert into Prenotazione(Account,NumeroTelefono,Tavolo,OraPrenotazione,nPersone)
values

(NULL,00000000,1,timestampadd(hour,3,current_timestamp()),2),
("mario01",Null,3,timestampadd(hour,2,current_timestamp()),4),
("gianfra22",Null,2,timestampadd(hour,6,current_timestamp()),1),
(NULL,0458565,3,timestampadd(hour,7,current_timestamp()),3),
(NULL,33382382,4,timestampadd(hour,2,current_timestamp()),1),
("FraMaria87",0458565,3,timestampadd(hour,5,current_timestamp()),3),
(NULL,04585433,1,timestampadd(hour,4,current_timestamp()),7),
("lucia11",NULL,10,timestampadd(hour,1,current_timestamp()),1),
("luca12",NULL,9,timestampadd(hour,1,current_timestamp()),2);

-- -----------------------------------------------------------------------------------

Truncate Table DomandaQuestionario;

INSERT INTO DomandaQuestionario(Domanda) VALUES
("Le piace l'arredamento del ristorante?"),("Si è trovato bene con il servizio?"),
("L'esposizione dei piatti nel menu è chiara?"),("La cena è stata comfortevole?"),
("Il tracciamento della preparazione dei piatti è stata precisa?"),
("La qualità dei piatti è stata soddisfaciente?"),
("Il personale è stato cortese durante l'intera cena?"),
("Il tavolo assegnato è stato sufficientemente ampio per le persone?"),
("E'stato facile trovarci?"),("Ritornerebbe volentieri?");

-- ------------------------------------------------------------------------------------------

Truncate Table Compilazione;

INSERT INTO Compilazione(IdRecensione,IdDomanda,Risposta)
Values
(1,1,'molto'),(1,2,'abbastanza'),(1,3,'moltissimo'),(1,4,'abbastanza'),(1,5,'poco'),
(1,6,'moltissimo'),(1,7,'abbastanza'),(1,8,'poco'),(1,9,'molto poco'),(1,10,'abbastanza');

-- ------------------------------------------------------------------------------------------
Truncate Table PropostaPiatto;

INSERT INTO PropostaPiatto (Account,Nome) VALUES
("gianfra22","Paste allo scoglio"),("gianfra22","Calzone ai Funghi"),
("gianfra22","Tartara di Salmone"),("gianfra22","Pizza marinara"),
("lucia11","Pizza Atomica"),("lucia11","Pasta panna e salmone"),("lucia11","Risotto allo zafferano"),
("lucia11","Risotto al tartufo"),
("ettore11","Pasta al sugo di cinghiale"),("ettore11","Frittura mista");

-- -------------------------------------------------------------------------------------------

Truncate Table  IngredienteNuovoPiatto;

INSERT INTO  IngredienteNuovoPiatto(PropostaPiatto,Ingrediente,Quantita) VALUES
(10,23,200),(4,18,50),(4,19,10),(7,20,100),(7,21,10),
(8,11,100),(8,22,60),(8,18,20),(6,4,20),(6,23,100);

-- -------------------------------------------------------------------------------------------

Truncate Table ValutazionePropostaPiatto;

INSERT INTO ValutazionePropostaPiatto(Account,PropostaPiatto,Valutazione,Descrizione) VALUES
("gianFra22",5,3,"Buona Idea"),("gianFra22",6,2,"Piatto che non ha senso"),
("gianFra22",7,5,"Adoro questo Piatto!"),
("mario01",1,4,"Questo piatto arricchirebbe notevolmente la varieta del menu"),
("mario01",5,1,"Pessima Idea"),("mario01",10,5,"Idea Eccellente"),
("FraMaria87",9,5,"Buonissimo!"),
("gianfra22",9,1,"Piatto rischioso in quanto di difficile preparazione"),
("ettore11",1,5,"Il mio piatto preferito!"),
("ettore11",5,1,"Piazza Terrificante..");

-- --------------------------------------------------------------------------------------------

Truncate Table VariantePiatto;

Insert Into VariantePiatto (Account,Piatto) VALUES

("ettore11",1),("ettore11",5),("mario01",2),("mario01",4),
("gianfra22",3),("gianfra22",6),("FraMaria87",7),("FraMaria87",8),
("lucia11",10),("lucia11",9);

-- ---------------------------------------------------------------------------------------------

TRUNCATE TABLE ModificaVariazione;

INSERT INTO ModificaVariazione(VariantePiatto,Modifica) VALUES
(2,"Usare solo pomodori ciliegini"),(2,"Aggiungere 50 ml di aceto balsamico durante la cottura"),
(2,"Prima di servire decorare con due foglie di basilico"),(2,"Usare solo pomodori ciliegini"),
(3,"Usare la pancetta al posto del guanciale"),(3,"Versare la panna quando la pasta non è troppo calda"),
(3,"Aumentare la dose di pepe"),(4,"Aumentare di un paio di minuti il tempo di cottura se la richiesta della bistecca è 'ben cotta'"),
(4,"Versare dell'olio sul piatto in cui si andrà a servire la bistecca"),
(5,"Aumentare la quantita di pomodoro presente sulla pizza");

-- ----------------------------------------------------------------------------------------------------

Truncate Table ValutazioneVariazione;

INSERT INTO ValutazioneVariazione (Account,VariantePiatto,Valutazione) VALUES
("ettore11",3,4),("ettore11",3,4),("mario01",1,2),("mario01",2,5),
("mario01",4,4),("gianfra22",9,5),("gianfra22",10,2),("gianfra22",2,3),
("lucia11",1,3),("lucia11",3,4);


-- -----------------------------------------------------------------------------------------------------

TRUNCATE TABLE Serata;

INSERT INTO Serata(Account,NomeOrganizzatore,CognomeOrganizzatore,Allestimento,nPersone,Sala,Data)
VALUES
("ettore11",NULL,NULL,NULL,"Decorazioni Colorate",20,1,current_timestamp()),
("lucia11",NULL,NULL,NULL,"Tavoli in cerchio",10,3,current_timestamp()),
(NULL,"Mario","Rossi",32323232,"Sala Rossa",5,6,current_timestamp()),
("mario01",NULL,NULL,NULL,NULL,13,1,timestampadd(day,1,current_timestamp())),
("gianfra22",NULL,NULL,NULL,"Tavoli a scacchiera",12,6,current_timestamp()),
(NULL,"Giuseppe","Signori",43243242,NULL,25,10,current_timestamp()),
("FraMaria87",NULL,NULL,NULL,"Decorazioni Colorate",25,7,current_timestamp()),
("ettore11",NULL,NULL,NULL,"Decorazioni Colorate",20,1,timestampadd(day,5,current_timestamp())),
(NULL,"Marco","Lamberti",344334242,"Decorazioni Colorate",12,5,current_timestamp()),
(NULL ,"Matteo","Manti",32333434432,NULL,11,4,current_timestamp());

-- ---------------------------------------------------------------------------

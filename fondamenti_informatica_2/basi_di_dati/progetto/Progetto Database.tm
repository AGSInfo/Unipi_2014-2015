<TeXmacs|1.99.2>

<style|<tuple|generic|italian|doxygen>>

<\body>
  <\hide-preamble>
    \;

    <assign|by-text|<\macro>
      <localize|by> Alessandro Sieni e Gianluca Mondini

      \;
    </macro>>

    <assign|table-of-contents-text|<\macro>
      Indice

      \;
    </macro>>
  </hide-preamble>

  <\doc-data|<doc-title|Progetto Basi di Dati
  2014-2015>|<doc-author|<author-data|<author-name|>>>>
    \;

    \;

    \;

    \;
  <|doc-data>
    \;
  </doc-data>

  <section|Introduzione>

  <section|Progettazione Concettuale>

  <subsection|Glossario>

  <\description>
    <item*|Account>Profilo personale di un cliente iscritto tramite il
    portale online

    <item*|Comanda>Prenotazione da parte di un tavolo oppure di un account
    per una determinata ora

    <item*|Tavolo>Struttura che permette ad numero prefissato di persone di
    consumare del cibo all'interno di una data sala

    <item*|Sala>Luogo fisico appartenente ad una determinata sede al cui
    interno sono contenuti dei tavoli

    <item*|TakeAway>Servizio che permette di consumare un pasto al di fuori
    della sede

    <item*|Ingrediente>Unità indivisibile che compone le ricette

    <item*|Confezione>Contenitore di una certa quantità di un dato
    ingrediente

    <item*|Magazzino>Luogo di stoccaggio delle confezioni, assegnato
    univocamente ad una sede

    <item*|Passo (ricetta)>Passo che compone una ricetta; fa riferimento ad
    al massimo un ingrediente ed uno strumento utilizzato.

    <item*|Pony>Mezzo di trasporto a due o quattro ruote che permette di
    consegnare a domicilio un pasto

    <item*|Sede>Struttura fisica presso la quale è possibile consumare pasti

    <item*|Scaffale>Struttura adibita al contenimento di una o più confezioni

    <item*|Prenotazione>Richiesta da parte di un account di prenotazione di
    un tavolo presso una determinata sede

    <item*|Recensione>Valutazione da parte di un account di un piatto oppure
    di un ristorante

    <item*|Valutazione recensione>Valutazione da parte di un account di una
    recensione scritta da un altro account

    <item*|Serata>Evento della durata di una sera che prevede un determinato
    allestimento, l'utilizzo di un certo numero di tavoli e l'occupazione di
    una data sala
  </description>

  <section|Progettazione Logica>

  <subsection|Modello Logico>

  <subsection|Analisi di alcune operazioni effettuabili>

  <subsubsection|Tabella dei volumi>

  Nella tabella dei volumi sono indicate approssimativamente la quantità di
  istanze di ogni singola associazione ed entità che sarranno memorizzate nel
  sistema che andremmo a realizzare (ovviamente la tabella non indica il peso
  effettivo in termini di Byte di ogni istanza ma solo il numero delle
  istanze di esse che si presume siano presenti all'inerno del nostro
  sistema). Con la colonna `` Tipo '' verrà indicato se le istanze di tale
  riga saranno riferite ad una associazione(R) o a delle entità(E).

  \;

  <tabular|<tformat|<cwith|3|3|4|4|cell-lborder|2
  >|<cwith|3|3|4|4|cell-rborder|2 >|<cwith|3|3|4|4|cell-bborder|2
  >|<cwith|3|3|4|4|cell-tborder|2 >|<cwith|2|2|3|3|cell-hyphen|n>|<twith|table-hmode|auto>|<cwith|13|13|4|4|cell-vpart|10>|<table|<row|<cell|<with|font-series|bold|Nome>>|<cell|<with|font-series|bold|Tipo>>|<cell|<with|font-series|bold|Volume>>|<with|font-series|bold|Motivazione>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Sede>|<cell|E>|<cell|5>|<cell|Si
  presume che il sistema centralizzato gestisca 5 sedi
  >>|<row|<cell|Possiede>|<cell|R>|<cell|10>|<cell|In media ogni Sede ha 2
  magazzini>>|<row|<cell|Magazzino>|<cell|E>|<cell|10>|<cell|Cardinalità
  (1,1) con Possiede>>|<row|<cell|Scaffallatura>|<cell|R>|<cell|400>|<cell|In
  media un magazzino ha 40 scaffali (40 *
  10)>>|<row|<cell|Scaffale>|<cell|E>|<cell|400>|<cell|Cardinalità(1,1) con
  Scaffale>>|<row|<cell|Ingrediente>|<cell|E>|<cell|100>|<cell|Si presume che
  siano presenti 100 ingredienti>>|<row|<cell|Contenimento>|<cell|R>|<cell|2000>|<cell|In
  media ci sono 20 confezioni per ingrediente (20*100 =
  2000)>>|<row|<cell|Confezione>|<cell|E>|<cell|2000>|<cell|Cardinalità (1,1)
  con Contenimento>>|<row|<cell|Stoccaggio>|<cell|R>|<cell|5>|<cell|In media
  uno scaffale conterrà 5 confezioni (2000 / 400 =
  5)>>|<row|<cell|Ricetta>|E|<cell|100>|<cell|Si ipotizza che siano inserite
  nel sistema 100 diverse ricette>>|<row|<cell|Principale>|<cell|R>|<cell|50>|<cell|Si
  ipotizza che in media solo 0,5 ricette richiedano un ingrediente
  principale>>|<row|<cell|Procedimento>|<cell|R>|<cell|1000>|<cell|In media
  una ricetta è composta da 10 passaggi>>|<row|<cell|Passi>|<cell|E>|<cell|1000>|<cell|Cardinalità
  (1,1) con Procedimento>>|<row|<cell|IngrdientePasso>|<cell|R>|<cell|1000>|<cell|Cardinalità
  (1,1) con Passi>>|<row|<cell|Utilzzo>|<cell|R>|<cell|1000>|<cell|Cardinalitò
  (1,1) con Passi>>|<row|<cell|Strumento>|<cell|E>|<cell|40>|<cell|Si ipotzza
  siano presenti 40 struementi>>|<row|<cell|Locazione>|<cell|R>|<cell|5>|<cell|Cardinalità
  (0,1) con Sede>>|<row|<cell|Esposizione>|<cell|R>|<cell|100>|<cell|Si
  ipotizza che in media vengano memorizzato 20 menu per sede
  >>|<row|<cell|Menu>|<cell|E>|<cell|100>|<cell|Cardinalità (1,1) con
  Esposizione>>|<row|<cell|MenuPiatto>|<cell|R>|<cell|3000>|<cell|In media
  ogni menu espone 30 piatti (30 * 100 = 3000
  )>>|<row|<cell|Piatti>|<cell|E>|<cell|3000>|<cell|Cardinalità (1,1) con
  RelazioneP>>|<row|<cell|Descrizione>|<cell|R>|<cell|3000>|<cell|Cardinalità
  (1,1) con Piatti>>|<row|<cell|Modifiche>|<cell|R>|<cell|15000>|<cell|In
  media ogni piatto ha 5 possibili modifiche>>|<row|<cell|VariazionePiatto>|<cell|E>|<cell|15000>|<cell|Cardinalità
  (1,1) con Modifiche>>|<row|<cell|Sede_Sala>|<cell|R>|<cell|40>|<cell|In
  media ogni Sede possiede 8 Sale>>|<row|<cell|Sala>|<cell|E>|<cell|40>|<cell|Cardinalità(1,1)
  con Sede_Sala>>|<row|<cell|Presenza>|<cell|R>|<cell|400>|<cell|In media
  ogni sala è composta da 10 tavoli>>|<row|<cell|Tavolo>|<cell|E>|<cell|400>|<cell|Cardinalità(1,1)
  con Presenza>>|<row|<cell|Account>|<cell|E>|<cell|500>|<cell|Si ipotizzano
  che siano registrati 500 account nel sistema>>|<row|<cell|RelazioneAP>|<cell|R>|<cell|2900>|<cell|In
  media ogni account effettua 5 prenotazioni e 400 invece siano
  telefoniche>>|<row|<cell|Prenotazione>|<cell|E>|<cell|2900>|<cell|Cardinalità(1,1)
  con RelazioneAP>>|<row|<cell|Occupa>|<cell|R>|<cell|2900>|<cell|Cardinalità(1,1)
  con Prenotazione>>|<row|<cell|Scrittura>|<cell|R>|<cell|1500>|<cell|In
  media ogni account scrive 3 recensioni>>|<row|<cell|Recensione>|<cell|E>|<cell|1500>|<cell|Cardinalità(1,1)
  con Scrittura>>|<row|<cell|ValutazioneR>|<cell|E>|<cell|2000>|<cell|Si
  presume siano presenti 2000 Valutazioni di
  recensioni>>|<row|<cell|DomandeQuest>|<cell|E>|<cell|10>|<cell|Si
  ipotizzano 10 domande per questionario>>|<row|<cell|Compilazione>|<cell|R>|<cell|15000>|<cell|Ogni
  questionario è composto da 10 domande da cui deve essere scelta una solo
  risposta>>|<row|<cell|Organizzazione>|<cell|R>|<cell|100>|<cell|Si ipotizza
  che in media 0.2 account organizzino una
  serata>>|<row|<cell|Serata>|<cell|E>|<cell|100>|<cell|Cardinalità (1,1) con
  Organizzazione>>|<row|<cell|Allestimento>|<cell|R>|<cell|100>|<cell|Cardinalità
  (1,1) con Serata>>|<row|<cell|Illustra>|<cell|R>|<cell|100>|<cell|In media
  0.2 account propongono un nuovo piatto>>|<row|<cell|PropostaPiatto>|<cell|E>|<cell|100>|<cell|Cardinalità
  (1,1) con Illustra>>|<row|<cell|IngredientePP>|<cell|R>|<cell|500>|<cell|In
  media \ ogni PropostaPiatto contiene 5 ingredienti
  conosciuti>>|<row|<cell|ValutazionePP>|<cell|R>|<cell|400>|<cell|Ciascuna
  PropostaPiatto viene valutata in media 4
  volte>>|<row|<cell|Proposta>|<cell|R>|<cell|250>|<cell|in media ogni
  account su 2 propone una variazione ad un
  piatto>>|<row|<cell|VariazionePiatto>|<cell|E>|<cell|250>|<cell|Cardinalità(1,1)
  con Proposta>>|<row|<cell|ElementiVar.>|<cell|R>|<cell|750>|<cell|Ogni
  VariazionePiatto contiene in media tre modifiche ad un piatto
  esistente>>|<row|<cell|ModificheVar.>|<cell|E>|<cell|750>|Cardinalità (1,1)
  con ElementiVariazione.>|<row|<cell|Locazione>|<cell|R>|<cell|4000>|<cell|In
  media da ogni tavolo sono partite 10 comande>>|<row|<cell|Comanda>|<cell|E>|<cell|5000>|<cell|Cardinalità(1,1)
  con Locazione più 1000 comande take away>>|<row|<cell|Invio>|<cell|R>|<cell|1000>|<cell|Cardinalità(0,1)
  con Comanda in quanto vengono inviate solo 1000 comande
  take-away>>|<row|<cell|Pony>|<cell|E>|<cell|50>|<cell|Si ipotizzano 50 pony
  presenti>>|<row|<cell|Associtato>|<cell|R>|<cell|5>|<cell|Cardinalità(1,1)
  con Sede (In media 10 pony per Sede)>>|<row|<cell|RelazioneC>|<cell|R>|<cell|3000>|<cell|Ogni
  consegna prevede 3 stati (Partito,Consegnato,Tornato) quindi 3 * 1000 =
  3000>>|<row|<cell|StatiConsegna>|<cell|E>|<cell|3000>|<cell|Cardinalità(1,1)
  con \ RelazioneC>>|<row|<cell|Occupazione>|<cell|R>|<cell|60>|<cell|3000 /
  50 = 60 in media>>|<row|<cell|Richiesta>|<cell|R>|<cell|10000>|<cell|In
  media ogni comanda richiede 2 piatti>>|<row|<cell|Ordine>|<cell|E>|<cell|10000>|<cell|Cardinalità
  (1,1) con Richiesta>>|<row|<cell|IngredienteRicetta>|<cell|R>|<cell|600>|<cell|In
  media 1 ricetta usa 6 Ingredienti>>|<row|<cell|OrdineVariazione>|<cell|R>|<cell|1000>|<cell|In
  media un ordine su dieci richiede una variazione>>>>>

  <subsubsection|Analisi Ridondanze>

  Dalle Tavole di accesso è possibile vedere che le due ridondanze
  (l'attributo allergene e l'associazione ingredientePiatto) portano alcuni
  benefici in termini di operazioni elementari, anche se non in grande
  quantità. Data la natura delle ridondanze è comunque opportuno conservarle
  in quanto non sono richieste particolari operazioni di aggiornamento in
  quanto sia gli ingrdienti necessari che l'indicazione se un piatto è un
  allergene o meno sono ridondanze che una volta ottenuto non necessitano di
  aggiornamenti,fatta eccezione per alcuni rarrissimi casi.

  <subsection|Vincoli di Integrita Referenziali>

  - Esiste un vincolo di integrita referenziale tra l'attributo IdSede di
  Magazzino e IdSede di Sede

  - Esiste un vincolo di integrita referenziale tra l'attributo IdMagazzino
  di Magazzino e IdMagazzino di Magazzino

  -Esistono due vincoli di integrita referenziale tra l'attributo Ingrediente
  di Confezione e IdIngrediente di Ingrediente e tra Scaffale di Confezione e
  IdScaffale di Scaffale

  -Esiste un vincolo di integrita referenziale tra l'attributo Sede di
  Strumento e IdSede di Sede

  -Esiste un vincolo di integrita referenziale tra l'attributo
  IngredientePrincipale di Ricetgta e IdIngrediente di Ingrediente

  -Esistono due vincoli di integrita referenziale tra l'attributo Ingrediente
  di IngredienteRicetta e IdIngrediente di Ingrediente e tra Ricetta di
  IngredienteRicetta e IdRicetta di Ricetta

  -Esistono tre vincoli di integrita referenziale tra l'attributo Ingrediente
  di Passo e IdIngrediente di Ingrediente e tra Ricetta di Passo e IdRicetta
  di Ricetta e tra Struemnto di Passo e IdStrumento di Strumento

  -Esiste un vincolo di integrita referenziale tra l'attributo Sede di Menu e
  IdSede di Sede

  -Esiste un vincolo di integrita referenziale tra l'attributo Ricetta di
  Piatto e IdRicetta di Ricetta

  -Esistono due vincoli di integrita referenziale tra l'attributo IdMenu di
  Menu_Piatto e \ IdMenu di Menu \ e tra IdPiatto di Menu_Piatto e IdPiatto
  di Piatto

  -Esiste un vincolo di integrita referenziale tra l'attributo IdPiatto di
  VariazioniPiatto e IdPiatto di Piatto

  -Esiste un vincolo di integrita referenziale tra l'attributo Sede di Sala e
  IdSede di Sede

  -Esiste un vincolo di integrita referenziale tra l'attributo Sala di tavolo
  e IdSala di Sala

  -Esistono due vincoli di integrita referenziale tra l'attributo Comanda di
  Ordine e IdComanda di di Comanda e tra Piatto di Ordine e IdPiatto di
  Piatto

  -Esistono due vincoli di integrita referenziale tra l'attributo IdOrdine di
  OrdineVariazione e IdOrdine di di Ordine e tra IdVariazione di
  OrdineVariazione e IdVariazione di VaraizioniPiatto

  -Esistno due vincoli di integrita referenziale tra l'attributo Account di
  Prenotazione e Username di Account e tra Tavolo di prenotazione e IdTavolo
  di Tavolo

  -Esistono due vincoli di integrita referenziale tra l'attributo Comanda di
  StatoConsegna e IdComanda di Comanda e tra Pony di StatoConsegna e IdPony
  di Pony

  -Esistono due vincoli di integrita referenziale tra l'attributo Account di
  Recensione e Username di Account e tra PiattoRecensito di Recensione e
  IdPiatto \ di Piatto

  -Esistono due vincoli di integrita referenziale tra l'attributo
  IdRecensione di Compilazione e IdRecensione di Recensione e tra IdDomanda
  di Recensione e IdDomanda di Domanda

  -Esistono due vincoli di integrita referenziale tra l'attributo Account di
  ValutazioneRecensione e Username di Account e tra Recensione di
  ValutazioneRecensione e IdRecensione di Recensione

  -Esiste un vincolo di integrita referenziale tra l'attributo Accountdi
  PropostaPiatto e Username di Account

  -Esistono due vincoli di integrita referenziale tra l'attributo Proposta di
  IngredienteNuovoPiatto e IdPropostaPiatto di PropostaPiatto e tra
  Ingrediente di IngredientNuovoPiatto e IdIngrediente di Ingredinete

  -Esistono due vincoli di integrita referenziale tra l'attributo Account di
  ValutazioneRecensione e Username di Account e tra Recensione di
  ValutazioneRecensione e IdRecensione di Recensione

  -Esiste un vincolo di integrita referenziale tra l'attributo VariantePiatto
  di ModificaVariazione e IdVariante di VariantePiatto

  -Esistono due vincoli di integrita referenziale tra l'attributo Account di
  ValutazioneRecensione e Username di Account e tra Recensione di
  ValutazioneRecensione e IdRecensione di Recensione

  -Esistono due vincoli di integrita referenziale tra l'attributo Account di
  Serata e Username di Account e tra Sala di Seraya e IdSala di Sala

  \;

  <subsection|Dipendenze funzionali e normalizzazione (BCNF)>

  -IdSede \ \ \<gtr\> \ \ Via, Numero Civico, Citta

  - Sede è in BCNF

  IdMagazzino \<gtr\> IdSede

  - Magazzino è in BCNF

  IdScaffale \ \ \<gtr\> \ \ IdMagazzino\ 

  - Scaffale è in BCNF\ 

  IdIngrediente \ \ \<gtr\> \ \ Nome, Provenienza, TipoProduzione, Allergene

  - Ingrediente è in BCNF

  IdConfezione \ \ \<gtr\> \ \ Peso, PrezzoAcquisto, DataAcquisto,
  DataConsegna, DataScadenza, Aspetto, Stato, QuantitàRimanente,
  IdIngrediente, IdScaffale

  - Confezione è in BCNF

  IdStrumento \ \ \<gtr\> \ \ TipoStrumento, NomeStrumento,
  UtilizzoStrumento,Sede

  - Strumento è in BCNF

  IdRicetta \ \ \<gtr\> \ \ TestoRicetta, IdIngrediente (ingrediente
  principale),Quantita

  Ricetta è in BCNF

  IdRicetta, IdPasso \ \ \<gtr\> \ \ DescrizionePasso, Strumento,
  TempoUtilizzo, Ingrediente, QuantitaUtilizzata,Allergene

  Passo è in BCNF

  IdMenu \ \ \<gtr\> \ \ IdSede, DataInizio, DataFine

  Menu è in BCNF

  IdPiatto \ \ \<gtr\> \ \ Nome, Novita, IdRicetta

  Piatto è in BCNF

  IdPiatto, IdMenu \ \ \<gtr\> \ \ Prezzo

  MenuPiatto è in BCNF

  IdVariazione \ \ \<gtr\> \ \ Piatto, DescrizioneVariazione

  VariazionePiatto è in BCNF

  IdSala \ \ \<gtr\> \ \ IdSede

  Sala è in BCNF

  IdTavolo \ \ \<gtr\> \ \ Sala, Posti, NumeroTavolo

  Tavolo é in BCNF

  IdComanda \ \ \<gtr\> \ \ Tavolo, Ora, TakeAway, Account, Stato

  Comanda è in BCNF

  IdOrdine \ \ \<gtr\> \ \ Comanda, Piatto,Stato

  Ordine è in BCNF

  OrdineVariazione è in BCNF

  Username \ \ \<gtr\> \ \ Password, Nome, Cognome, Via, nCivico, Comune,
  Citta, FruibilitàPrenotazioni, Sesso

  Account è in BCNF

  IdPrenotazione \ \ \<gtr\> \ \ Username, NumeroTelefono, IdTavolo,
  OraPrenotazione, Numero di persone

  Prenotazione è in BCNF

  IdPony \ \ \<gtr\> \ \ Tipo di mezzo, Stato

  Pony è in BCNF

  IdStatoConsegna \ \ \<gtr\> \ \ IdComanda, IdPony, Stato, Ora

  StatoConsegna è in BCNF

  IdRecensione \ \ \<gtr\> \ \ Username, GiudizioGlobale, GiudizioTesto,
  DataRecensione

  Recensione è in BCNF

  IdDomanda \ \ \<gtr\> \ \ Domanda

  Domanda è in BCNF

  IdRecensione, IdDomanda \ \ \<gtr\> \ \ Risposta

  Compilazione è in BCNF

  Username, IdRecensione \ \ \<gtr\> \ \ Veridicità, Accuratezza, Descrizione

  ValutazioneRecensione è in BCNF

  IdPropostaPiatto \ \ \<gtr\> \ \ Account, Nome

  PropostaPiatto è in BCNF\ 

  IdPropostaPiatto, IdIngrediente \ \ \<gtr\> \ \ Quantità

  IngredientePropostaPiatto è in BCNF

  Username, IdPropostaPiatto \ \ \<gtr\> \ \ Valutazione, Descrizione

  ValutazionePropostaPiatto è in BCNF

  IdVariante \ \ \<gtr\> \ \ Username, IdPiatto

  VariantePiatto è in BCNF

  IdModifica \ \ \<gtr\> \ \ VariantePiatto, Modifica

  ModificaVariantePiatto è in BCNF

  Username, VariantePiatto \ \ \<gtr\> \ \ Valutazione

  ValutazioneVariantePiatto è in BCNF

  IdSerata \ \ \<gtr\> \ \ Account, NomeOrganizzatore, CognomeOrganizzatore,
  TelefonoOrganizzatoreSala, Allestimento, NumeroDiPersone, IdSala, Data

  Serata è in BCNF

  <section|Creazione Database>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font|avant-garde>
    <associate|info-flag|minimal>
    <associate|math-font|math-stix>
    <associate|prog-scripts|r>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.4|6>>
    <associate|auto-11|<tuple|4|6>>
    <associate|auto-12|<tuple|4|6>>
    <associate|auto-13|<tuple|4|6>>
    <associate|auto-14|<tuple|3.2.7|6>>
    <associate|auto-15|<tuple|3.2.8|6>>
    <associate|auto-16|<tuple|3.2.9|7>>
    <associate|auto-17|<tuple|3.2.10|7>>
    <associate|auto-18|<tuple|3.3|8>>
    <associate|auto-19|<tuple|3.4|8>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-20|<tuple|3.5|8>>
    <associate|auto-21|<tuple|4|8>>
    <associate|auto-22|<tuple|18|?>>
    <associate|auto-23|<tuple|19|?>>
    <associate|auto-24|<tuple|20|?>>
    <associate|auto-25|<tuple|21|?>>
    <associate|auto-26|<tuple|22|?>>
    <associate|auto-27|<tuple|23|?>>
    <associate|auto-28|<tuple|3|?>>
    <associate|auto-29|<tuple|3.1|?>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-30|<tuple|3.1.1|?>>
    <associate|auto-31|<tuple|3.1.2|?>>
    <associate|auto-32|<tuple|3.1.3|?>>
    <associate|auto-33|<tuple|3.1.4|?>>
    <associate|auto-34|<tuple|3.1.5|?>>
    <associate|auto-35|<tuple|3.1.6|?>>
    <associate|auto-36|<tuple|3.1.7|?>>
    <associate|auto-37|<tuple|3.1.8|?>>
    <associate|auto-38|<tuple|3.1.9|?>>
    <associate|auto-39|<tuple|3.1.10|?>>
    <associate|auto-4|<tuple|3|1>>
    <associate|auto-40|<tuple|3.2|?>>
    <associate|auto-41|<tuple|3.3|?>>
    <associate|auto-42|<tuple|3.4|?>>
    <associate|auto-43|<tuple|4|?>>
    <associate|auto-5|<tuple|3.1|1>>
    <associate|auto-6|<tuple|3.2|1>>
    <associate|auto-7|<tuple|3.2.1|2>>
    <associate|auto-8|<tuple|3.2.2|2>>
    <associate|auto-9|<tuple|3.3|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Progettazione
      Concettuale> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Glossario
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Associazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Progettazione
      Logica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Modello Logico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Analisi di alcune operazioni
      effettuabili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|3.2.1<space|2spc>Tabella dei volumi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Dipendenze funzionali e
      normalizzazione (BCNF) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Creazione
      Database> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
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

  <subsection|Glossario degli attributi>

  <subsection|Associazioni>

  <section|Progettazione Logica>

  <subsection|Modello Logico>

  - Account(Username,Password,Nome,Cognome,Via,nCivico,Comune,Citta,FruibilitàPrenotazioni,Sesso)

  - Comanda(IdComanda,Tavolo,Ora,TakeAway,Account,Stato,Prezzo)

  - Compilazione(IdDomanda,IdRecensione,IdRisposta)

  - Confezione(IdConfezione,Peso,PrezzoAcquisto,DataAquisto,DataConsegna,DataScadenza,Aspetto,Stato,QuantitaRimanente,Ingrediente,Scaffale)

  - DomandeQuestionario(IdDomanda,Domanda)

  - Ingrediente(IdIngrediente,Nome,Provenienza,TipoProduzione,Allergene)

  - IngredienteNuovoPiatto(PropostaPiatto,Ingrediente,Quantità)

  - IngredienteRicetta(Ricetta,Ingrediente,Quantità)

  - Magazzino(IdMagazzino,IdSede)

  - Menu(IdMenu,Sede,DataInizio,DataFine)

  - ModificaVariazione(IdModifica,VariantePiatto,Modifica)

  - Ordine(IdOrdine,Comanda,Piatto,Variazione1,Variazione2,Variazione3,OrdineConsegna,Stato)

  - Passo(Ricetta,nPasso,DescrizionePasso,Strumento,TempoUtilizzo,Ingrediente,QuantitaUtilizzata)

  - Piatto(IdPiatto,Menu,Ricetta,Novita)

  - Pony(IdPony,TipoMezzo,Stato)

  - PossibilitaRisposta(IdDomanda,IdRisposta)

  - Prenotazione(IdPrenotazione,Account,NumeroTelefono,Tavolo,OraPrenotazione,nPersone)

  - PropostaPiatto(idPropostaPiatto,Account,Nome)

  - Recensione(IdRecensione,Account,GiudizioGlobale,GiudizioTesto)

  - Ricetta(IdRicetta,TestoRicetta)

  - Risposta(IdRisposta,Risposta,Scala)

  - Scaffale(IdScaffale,IdMagazzino)

  - Sede(IdSede,via,nCivico,Citta)

  - Serata(IdSerata,Account,NomeOrganizzatore,CognomeOrganizzatore,TelefonoOrganizzatoreSala,Allestimento,nPersone)

  - StatoConsegna(IdStato,Comanda,Pony,Stato,Ora,Data)

  - Strumenti(IdStrumento,Tipo,Nome)

  - Utilizzo(IdUtilizzo,DescrizioneUtilizzo)

  - UtilizzoStrumento(Utilizzo,Strumento)

  - ValutazionePropostaPiatto(Account,PropostaPiatto,Valutazione,Descrizione)

  - ValutazioneRecensione(Account,Recensione,Veridicita,Accuratezza,Descrizione)

  - ValutazioneVariazione(Account,VariantePiatto,Valutazione)

  - VariantePiatto(IdVariante,Account,Piatto)

  - VariazionePiatto(IdPiatto,DescrizioneVariazione)

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
  (1,1) con Passi>>|<row|<cell|Utilzzo>|<cell|R>|<cell|1000>|<cell|Cardinaliṭ
  (1,1) con Passi>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Esposizione>|<cell|R>|<cell|100>|<cell|Si
  ipotizza che in media vengano memorizzato 20 menu per sede
  >>|<row|<cell|Menu>|<cell|E>|<cell|100>|<cell|Cardinalità (1,1) con
  Esposizione>>|<row|<cell|RelazioneP>|<cell|R>|<cell|3000>|<cell|In media
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
  ipotizzano 10 domande per questionario>>|<row|<cell|Possibilita>|<cell|E>|<cell|300>|<cell|In
  media ogni domanda ha 3 possibili risposte>>|<row|<cell|Compilazione>|<cell|R>|<cell|15000>|<cell|Ogni
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
  50 = 60 in media>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>>>>

  <subsection|Analisi Ridondanze>

  <subsection|Dipendenze funzionali e normalizzazione (BCNF)>

  <subsection|Schema logico>

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
    <associate|auto-10|<tuple|3.4|4>>
    <associate|auto-11|<tuple|3.5|5>>
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
    <associate|auto-4|<tuple|2.2|1>>
    <associate|auto-40|<tuple|3.2|?>>
    <associate|auto-41|<tuple|3.3|?>>
    <associate|auto-42|<tuple|3.4|?>>
    <associate|auto-43|<tuple|4|?>>
    <associate|auto-5|<tuple|3|1>>
    <associate|auto-6|<tuple|3.1|1>>
    <associate|auto-7|<tuple|3.2|3>>
    <associate|auto-8|<tuple|3.2.1|3>>
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

      <with|par-left|<quote|1tab>|2.1<space|2spc>Glossario degli attributi
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

      <with|par-left|<quote|2tab>|3.2.2<space|2spc>Operazione 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|3.2.3<space|2spc>Operazione 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|3.2.4<space|2spc>Operazione 3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|3.2.5<space|2spc>Operazione 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|2tab>|3.2.6<space|2spc>Operazione 5
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|3.2.7<space|2spc>Operazione 6
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|3.2.8<space|2spc>Operazione 7
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|3.2.9<space|2spc>Operazione 8
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|3.2.10<space|2spc>Operazione 9
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Analisi Ridondanze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Dipendenze funzionali e
      normalizzazione (BCNF) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Schema logico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Creazione
      Database> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <chapter|Glossario>

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

  <chapter|Dipendenze funzionali>

  IdSede \ \ \<gtr\> \ \ Via, Numero Civico, Citta

  Sede è in BCNF

  Magazzino è in BCNF

  IdScaffale \ \ \<gtr\> \ \ IdMagazzino\ 

  Scaffale è in BCNF\ 

  IdIngrediente \ \ \<gtr\> \ \ Nome, Provenienza, TipoProduzione, Allergene

  Ingrediente è in BCNF

  IdConfezione \ \ \<gtr\> \ \ Peso, PrezzoAcquisto, DataAcquisto,
  DataConsegna, DataScadenza, Aspetto, Stato, QuantitàRimanente,
  IdIngrediente, IdScaffale

  Confezione è in BCNF

  IdStrumento \ \ \<gtr\> \ \ TipoStrumento, NomeStrumento,
  UtilizzoStrumento,Sede

  Strumento è in BCNF

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

  IdOrdine \ \ \<gtr\> \ \ Comanda, Piatto, Variazione1, Variazione2,
  Variazione3

  Ordine è in BCNF

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

  \;

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Glossario>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Dipendenze
      funzionali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|1fn>
    </associate>
  </collection>
</auxiliary>
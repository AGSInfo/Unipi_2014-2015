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

  \;

  <\doc-data|<doc-title|Progetto Basi di Dati
  2014-2015>|<doc-author|<author-data|<author-name|<verbatim|<samp|<em|Alessandro
  <name|<em|Sieni,Mondini>> Gianluca<name|>>>>>>>>
    \;

    \;

    \;

    \;
  <|doc-data>
    \;
  </doc-data>

  <new-page*>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Introduzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Progettazione
    Concettuale> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Glossario degli attributi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|2.2<space|2spc>Associazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Progettazione
    Logica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <with|par-left|1tab|3.1<space|2spc>Analisi di alcune operazioni
    effettuabili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|2tab|3.1.1<space|2spc>Tabella dei volumi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|2tab|3.1.2<space|2spc>Operazione 1
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|2tab|3.1.3<space|2spc>Operazione 2
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|2tab|3.1.4<space|2spc>Operazione 3
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|2tab|3.1.5<space|2spc>Operazione 4
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|2tab|3.1.6<space|2spc>Operazione 5
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|2tab|3.1.7<space|2spc>Operazione 6
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|2tab|3.1.8<space|2spc>Operazione 7
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <with|par-left|2tab|3.1.9<space|2spc>Operazione 8
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>>

    <with|par-left|2tab|3.1.10<space|2spc>Operazione 9
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>>

    <with|par-left|1tab|3.2<space|2spc>Analisi Ridondanze
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>>

    <with|par-left|1tab|3.3<space|2spc>Dipendenze funzionali e
    normalizzazione (BCNF) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>>

    <with|par-left|1tab|3.4<space|2spc>Schma logico
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>>
  </table-of-contents>

  <new-page*>

  <section|Introduzione>

  \;

  <section|Progettazione Concettuale>

  <subsection|Glossario degli attributi>

  <subsection|Associazioni>

  <section|Progettazione Logica>

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

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|3|3|4|4|cell-lborder|2
  >|<cwith|3|3|4|4|cell-rborder|2 >|<cwith|3|3|4|4|cell-bborder|2
  >|<cwith|3|3|4|4|cell-tborder|2 >|<cwith|2|2|3|3|cell-hyphen|n>|<table|<row|<cell|Nome>|<cell|Tipo>|<cell|Volume>|Motivazione>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Sede>|<cell|E>|<cell|5>|<cell|Si
  presume che il sistema centralizzato gestisca 5 sedi
  differenti>>|<row|<cell|Magazzino_Sede>|<cell|R>|<cell|10>|<cell|In media
  ogni Sede ha 2 magazzini>>|<row|<cell|Magazzino>|<cell|E>|<cell|10>|<cell|Cardinalità
  (1,1) con Magazzino_Sede>>>>>

  \;

  <subsubsection|Operazione 1>

  Testo: Identificare tutti i piatti preparabili nell'attuale menu delle sede
  presente a Roma.

  Frequenza: 70 volte al giorno.

  \;

  <strong|Con \ Ridondanza>

  Query:\ 

  <\verbatim-code>
    Create or replace view PiattiRoma as\ 

    select * from Piatto P, Menu_Piatto MP, \ M, Sede S where

    P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id

    and S.Citta = "Roma" and M.DataFine is NULL;

    \;

    Select * from PiattiRoma as PR ,Ingredienti_Piatto as IP where\ 

    PR.id = IP.ID_Piatto and IP.qta \<gtr\>\ 

    (Select sum(qta) from Magazzino M,Sede S,Scaffale SC, Confezione C where

    M.Sede = S.Id and S.citta = "Roma" and SC.Id_Magazzino = S.Id and
    C.scaffale = SC.id

    and C.ingrediente = IP.ingrediente group by C.ingrediente);
  </verbatim-code>

  Tavola degli accessi:\ 

  <strong|Senza Ridondanza >

  Query:

  Tavola degli accessi:

  <subsubsection|Operazione 2>

  Testo: Per ogni sede identificare il cliente che ha effettuato il maggior
  numero di recensioni nell \ \ \ \ \ \ \ \ \ \ \ \ attuale mese.

  Frequenza: 1 volta al mese.

  \;

  <strong|Senza Ridondanza>

  Query:

  <\verbatim-code>
    Create or replace view Piatti_Sedi as\ 

    select * from Piatto P, Menu_Piatto MP, \ M, Sede S where

    P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id\ 

    and M.DataFine is NULL;

    \;

    Select * from Piatti_Sede PS, Passi P, Ingredienti I where

    Ps.Id = P.Id_Piatto and P.ID_Ingrediente = I.id\ 

    group by PS.Id\ 

    Having (count(*) = (SELECT count(*) from Passi P2, Ingredienti I2\ 

    where P2.ID_Ingrediente = I2.ID and P2.Id_Piatto = P.Id_Piatto\ 

    and I2.Allergene IS NOT NULL)) order by PS.NomeSede;
  </verbatim-code>

  Tavola degli accessi:

  \;

  <strong|Con Ridondanza>

  Query:

  <\verbatim-code>
    Create or replace view Piatti_Sedi as\ 

    select * from Piatto P, Menu_Piatto MP, \ M, Sede S where

    P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id\ 

    and M.DataFine is NULL;

    \;

    Select * from Piatti_Sedi as PS group by PS.IdPiatto\ 

    having(count(*) = (select count(*) from PiattiSedi as PS2\ 

    where PS2.IdPiatto = PS.IdPiatto and PS2.Allergene IS NOT NULL));
  </verbatim-code>

  Tavola degli accessi:\ 

  <subsubsection|Operazione 3>

  Testo: Visualizzare l'attuale menu esclusi i piatti che contengono almeno
  un allergene nella sede di Firenze.

  Frequenza : 200 volte al giorno.

  <strong|Senza Ridondanza>

  Query:

  <\verbatim-code>
    Create or replace view PiattiFirenze as\ 

    select * from Piatto P, Menu_Piatto MP, \ M, Sede S where

    P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id

    and S.Citta = "Firenze" and M.DataFine is NULL;

    \;

    Select * from PiattiFirenze as PR ,Ingredienti_Piatto as IP,Ingredienti
    AS I where\ 

    PR.id = IP.ID_Piatto and I.id = IP.Id_Ingrediente

    and IP.qta \<gtr\>\ 

    (Select sum(qta) from Magazzino M,Sede S,Scaffale SC, Confezione C where

    M.Sede = S.Id and S.citta = "Firenze" and SC.Id_Magazzino = S.Id and
    C.scaffale = SC.id

    and C.ingrediente = IP.ingrediente group by C.ingrediente) and NOT EXISTS\ 

    (select * from I where I.allergene is NULL);
  </verbatim-code>

  \ Tavola degli accessi:\ 

  \;

  <strong|Con Ridondanza>

  Query:

  <\verbatim-code>
    Create or replace view PiattiFirenze as\ 

    select * from Piatto P, Menu_Piatto MP, \ M, Sede S where

    P.Id = MP.Id_Piatto and MP.Id_Menu = M.id and M.Sede = S.id

    and S.Citta = "Firenze" and M.DataFine is NULL;

    \;

    Select * from PiattiFirenze as PR ,Ingredienti_Piatto as IP,Ingredienti
    AS I where\ 

    PR.id = IP.ID_Piatto and I.id = IP.Id_Ingrediente

    and IP.qta \<gtr\>\ 

    (Select sum(qta) from Magazzino M,Sede S,Scaffale SC, Confezione C where

    M.Sede = S.Id and S.citta = "Firenze" and SC.Id_Magazzino = S.Id and
    C.scaffale = SC.id

    and C.ingrediente = IP.ingrediente group by C.ingrediente) and
    PR.allergene is NULL;
  </verbatim-code>

  Tavola degli accessi:

  \;

  <subsubsection|Operazione 4>

  Testo: Visualizzare tutti i comuni in ordine decrescente che hanno
  effettuato richieste take away.

  Frequenza : 10 volte al giorno.

  Qui le ridondanze trovate non incidono in alcun modo sul comportamento
  della query

  Query:\ 

  <\verbatim-code>
    Select Nome,count(*) as N_Consegne from Consegna C\ 

    \;

    group by C.Comune order by N_Consegne asc
  </verbatim-code>

  Tavola degli accessi:\ 

  \;

  <subsubsection|Operazione 5>

  Testo: Visualizzare il piatto più richiesti per ogni sede

  Frequenza : 2 volte al giorno.

  Query:\ 

  <subsubsection|Operazione 6>

  Testo : Mostrare quale è stato il piatto in per ogni sede \ ad aver avuto
  il maggior numero di \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ recensioni positive.

  Frequenza: 2 volte al giorno.

  Query:\ 

  <subsubsection|Operazione 7>

  Testo: Inserire un piatto in un menu presente in una sede a scelta.

  Frequenza : 1 volta al giorno.

  Con Ridondanza

  Query: \ \ \ \ \ \ .

  Senza Ridondanza

  Query:

  <subsubsection|Operazione 8>

  Testo: Per ogni magazzino indicare quali sono le confezioni che sono in
  scadenza o che sono state \ \ \ \ \ \ \ \ \ aperte(quindi che hanno un
  degrado più veloce).

  Frequenza : 100 volte al giorno.

  Query:\ 

  \;

  <subsubsection|Operazione 9>

  Testo: Indicare il guadagno(al netto delle spese degli ingredienti) al
  termine di ogni giornata per ciascuna sede

  Frequenza : 1 volta al giorno.

  Query:\ 

  <subsection|Analisi Ridondanze>

  <subsection|Dipendenze funzionali e normalizzazione (BCNF)>

  <subsection|Schma logico>

  <section|Creazione Database>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font|avant-garde>
    <associate|math-font|math-stix>
    <associate|prog-scripts|r>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|3.1.4|4>>
    <associate|auto-11|<tuple|3.1.5|4>>
    <associate|auto-12|<tuple|3.1.6|5>>
    <associate|auto-13|<tuple|3.1.7|6>>
    <associate|auto-14|<tuple|3.1.8|6>>
    <associate|auto-15|<tuple|3.1.9|6>>
    <associate|auto-16|<tuple|3.1.10|6>>
    <associate|auto-17|<tuple|3.2|6>>
    <associate|auto-18|<tuple|3.3|6>>
    <associate|auto-19|<tuple|3.4|6>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-20|<tuple|4|?>>
    <associate|auto-26|<tuple|3.3.14.1|?>>
    <associate|auto-29|<tuple|3.3.17|?>>
    <associate|auto-3|<tuple|2.1|3>>
    <associate|auto-4|<tuple|2.2|3>>
    <associate|auto-5|<tuple|3|3>>
    <associate|auto-6|<tuple|3.1|3>>
    <associate|auto-7|<tuple|3.1.1|3>>
    <associate|auto-8|<tuple|3.1.2|3>>
    <associate|auto-9|<tuple|3.1.3|3>>
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

      <with|par-left|<quote|1tab>|3.1<space|2spc>Analisi di alcune operazioni
      effettuabili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|3.1.1<space|2spc>Tabella dei volumi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|3.1.2<space|2spc>Operazione 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|3.1.3<space|2spc>Operazione 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|3.1.4<space|2spc>Operazione 3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|3.1.5<space|2spc>Operazione 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|3.1.6<space|2spc>Operazione 5
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|2tab>|3.1.7<space|2spc>Operazione 6
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|3.1.8<space|2spc>Operazione 7
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|3.1.9<space|2spc>Operazione 8
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|3.1.10<space|2spc>Operazione 9
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Analisi Ridondanze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Dipendenze funzionali e
      normalizzazione (BCNF) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Schma logico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Dispensa Fondamenti II>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>SQL>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Definizioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Istruzione Select
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3<space|2spc>Join
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|2tab|1.3.1<space|2spc>Join naturale
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|2tab|1.3.2<space|2spc>Join esterni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|1.4<space|2spc>Select annidate
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|1.5<space|2spc>Operatori insiemistici
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|1.6<space|2spc>Union
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|1.7<space|2spc>Differenza (except)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>
  </table-of-contents>

  <section|SQL>

  <subsection|Definizioni>

  Con il termine SQL(Structured Query Language) si intende un linguaggio di
  modellazione, interrogazion e manipolazioni di dati all'interno di un
  DataBase che comprende tre ``sottolinguaggi'':s

  <\itemize-dot>
    <item>DDL(Data Definition Language): Sezione del linguaggio che ci
    consente di definire i dati all'interno del database.

    <item>DML(Data Manipulation Language): Sezione del linguaggio che ci
    consente di manipolare (inserire, modificare, eliminare) dati all'interno
    del database.

    <item>QL(Query Language): Sezione del linguaggio che ci consente di
    interrogare il database per ottenere da esso le informazioni ricercate.
  </itemize-dot>

  \;

  <subsection|Istruzione Select>

  L'istruzione Select è una particolare istruzione che ci consente di
  ottenere una serie di attributi definita, con ordine anch'esso definito, da
  una o piàù tabelle che rispettano una particolare condizione, anch'essa
  definita in sede di programmazione.

  <subsection|Join>

  Quando si parla dell'operatore Join si intende un operazione che comprende
  due tabelle, mettendole in relazione e scegliendo le righe di entrambe le
  tabelle che soddisfano la condizione (es : tab1.nome = tab2.cognome)
  trasformandole in un unica riga.

  <subsubsection|Join naturale>

  \;

  <subsubsection|Join esterni>

  Il join esterno (outer join) è un operatore di relazione esterno che
  confronta gli attributi scelti, mettendo insieme le righe che soddisfano la
  condizione, mentre le righe che non la soddisfano la condizione se
  appartengono alla prima tabella appariranno, mentre verrano scartate le
  righe della seconda tabella. Gli attributi delle righe della prima tabella
  che non hanno corrispondenza nella seconda verranno settati a NULL. Un
  esempio di join esterno (sinistro in questo caso) è
  <cpp|sddhhhhint<with|prog-font-shape|italic|s>>

  <\render-code>
    `` Select a.nome from a,b where a left join b on a.id = b.matricola``
  </render-code>

  <subsection|Select annidate>

  Le select annidate sono operazioni di selezione che possono essere inseriti
  dentro altre operatori (in qualunque posizione noi si voglia).

  \;

  <strong|Vantaggi>

  <\itemize-dot>
    <item>Minor occupazione di memoria (non vengono fatti dispendiosi join)

    <item>Possibilità di selezionare un solo elemento, escludendo i duplicati
    (rendendo inutile in alcuni casi la keyword''distinct'')
  </itemize-dot>

  <strong|Svantaggi>

  <\itemize-dot>
    <item>Non si possono usare operatori insiemistici all'interno di\ 
  </itemize-dot>

  <strong|Esempio di Select annidate>

  <\render-code>
    Select a,b from tabell<em|>a1 where a = (select c from tabella2 where d =
    ``pippo'')
  </render-code>

  <subsection|Operatori insiemistici>

  <subsection|Union>

  L'operatore Union serve a fare l'unione tra due relazioni (visti come
  insieme).Di per sé l'operatore union scarta tuttle le righe che sono
  doppie, per scegliere indistintamente tutte le righe dell'insieme unione si
  aggiunghe la keyword ``all'' dopo la parola union.

  <subsection|Differenza (except)>

  L'operatore except
</body>

<\initial>
  <\collection>
    <associate|prog-scripts|r>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|1.7|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-4|<tuple|1.3|?>>
    <associate|auto-5|<tuple|1.3.1|?>>
    <associate|auto-6|<tuple|1.3.2|?>>
    <associate|auto-7|<tuple|1.4|?>>
    <associate|auto-8|<tuple|1.5|?>>
    <associate|auto-9|<tuple|1.6|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>SQL>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Definizioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Istruzione Select
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Join
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.3.1<space|2spc>Join naturale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|1.3.2<space|2spc>Join esterni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Select annidate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Operatori insiemistici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Union
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Differenza (except)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>
    </associate>
  </collection>
</auxiliary>
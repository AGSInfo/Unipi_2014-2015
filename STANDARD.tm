<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <section|Appunti del<space|0.2spc> 00 gennaio 0000>

  Il titolo della sezione va inserito nella forma sopraindicata.

  Scorciatoia da tastiera: <verbatim|ALT+1>

  <subsection|Titolo dell'argomento>

  Il titolo dell'argomento è di tipo Sotto-sezione e viene inserito con
  <verbatim|ALT+2>

  Esempio di inserimento definizione:

  <subsubsection|Punto esterno>

  Un punto <math|x<rsub|0>> si definisce esterno se..

  \;

  Esempio di inserimento teorema:

  <subsubsection|Teorema di prova>

  <strong|Ipotesi>

  <\itemize>
    <item>Ipotesi 1

    <item>Ipotesi 2
  </itemize>

  <\strong>
    Tesi
  </strong>

  Esiste un <math|\<epsilon\>> ecc...

  <strong|Dimostrazione>

  Passaggi della dimostrazione.

  \;

  Il testo Teorema di prova è di tipo Sotto-sotto-sezione e viene inserito
  con <verbatim|ALT+3>

  Il testo Punto esterno è di tipo Sotto-sotto-sezione e viene inserito con
  <verbatim|ALT+3>

  I testi Ipotesi, Tesi e Dimostrazione sono semplicemente testo grassetto e
  vengono inseriti con <verbatim|F6>; questo evita che le voci vengano
  inserite inutilmente nell'indice

  \;

  <section|Note generali>

  <subsection|Formule matematiche>

  È preferibile inserire le formule matematiche in forma centrata, del tipo

  <\equation*>
    f<around*|(|x|)>=sin<around*|(|x|)>+<sqrt|cos<around*|(|x|)><rsup|2>>
  </equation*>

  a meno che queste non vengano inserite all'interno di un testo, ad esempio
  in una dimostrazione. Esempio: presi due valori <math|x<rsub|0> > e
  <math|x<rsub|1> >, per i quali vale la relazione
  <math|x<rsub|0>=2*x<rsub|1>>, possiamo considerare <math|P<around*|(|x|)> >
  come

  <\equation*>
    P<around*|(|x|)>=x<rsub|1><rsup|2>+sin<around*|(|x<rsub|0>|)><rsup|3>
  </equation*>

  Nelle formule matematiche in forma centrata è preferibile inserire appunti
  mantenendo la linea, ovvero:

  <\equation*>
    f<around*|(|x|)>=a+b<text| \ con >a=3x<text| \ e >b=2y
  </equation*>

  anziché

  <\equation*>
    f<around*|(|x|)>=a+b
  </equation*>

  con <math|a=3x> e <math|b=2y>

  Ovviamente è compito dello stesore del documento valutare quale delle due
  forme risulti più gradevole e semplice

  Gli spazi sono di vitale importanza per la chiarezza. Inserire

  <\equation*>
    \<exists\> \<lambda\> \<in\> <with|math-font|Bbb*|R> <text| \ :
    \ >\<lambda\>+2=10
  </equation*>

  anziché

  <\equation*>
    \<exists\>\<lambda\>\<in\><with|math-font|Bbb*|R>:\<lambda\>+2=10
  </equation*>

  <subsection|Formattazione del testo>

  È preferibile evitare di formattare manualmente il testo, utilizzando le
  parti del testo (Sezioni, Paragrafi) per enfatizzarlo. Nel caso in cui non
  siano sufficienti, utilizzare tipi pre-formattati disponibili tramite il
  menù <verbatim|Inserisci> della barra degli strumenti.

  <subsection|Layout della pagina>

  Durante la stesura del documento è preferibile mantere il layout della
  pagina come preimpostato, ovvero Foglio A4 verticale con colonna singola.
  Prima della stampa viene discusso il layout più adatto a seconda del tipo
  di contenuto del documento.

  \;
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|2.3|?>>
    <associate|auto-11|<tuple|2.3|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.1.1|?>>
    <associate|auto-4|<tuple|1.1.2|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|auto-6|<tuple|2.1|?>>
    <associate|auto-7|<tuple|2.2|?>>
    <associate|auto-8|<tuple|2.3|?>>
    <associate|auto-9|<tuple|2.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Appunti
      del<space|0.2spc> 00 gennaio 0000> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Titolo dell'argomento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|2tab>|1.1.1<space|2spc>Punto esterno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1.1.2<space|2spc>Teorema di prova
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|4tab>|Ipotesi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Tesi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Dimostrazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Note
      generali> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Formule matematiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Formattazione del testo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Layout della pagina
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>
    </associate>
  </collection>
</auxiliary>
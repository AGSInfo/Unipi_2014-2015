<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Formulario di fisica>|<doc-author|<author-data|<author-name|Gianluca
  Mondini e di chiunque altro mi aiuti>>>>

  ATTENZIONE: il seguente formulario potrebbe contenere errori. Non mi assumo
  nessuna responsabilità sui contenuti. Il formulario è ancora in costruzione
  e necessita una revisione.

  Sono contenute alcune brevi descrizioni delle formule, che molto
  probabilmente saranno eliminate prima della stampa.

  A destra di alcune formule è indicata l'unità di misura del valore
  corrispondente all'interno di parentesi quadre (es. <math|V=I\<cdot\>R
  <around*|[|v|]>>)

  <chapter|Cinematica>

  \;

  <chapter|Elettromagnetismo>

  <section|Campo elettrico>

  <subsection|Legge di Coulomb>

  <\equation*>
    F<rsub|e>=k<rsub|e>\<cdot\><frac|<around*|\||q<rsub|1>|\|>\<cdot\><around*|\||q<rsub|2>|\|>|r<rsup|2>>
  </equation*>

  dove <math|k<rsub|e>=8.9876\<times\>10<rsup|9>
  N\<cdot\>m<rsup|2>/C<rsup|2>><math|>. <math|k<rsub|e>> si può indicare
  anche come <math|<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>>

  <subsection|Vettore campo elettrico>

  <\equation*>
    <wide|E|\<vect\>>\<equiv\><frac|<wide|F<rsub|e>|\<vect\>>|q<rsub|0>>*<around*|[|<frac|N|C>|]>
  </equation*>

  <subsection|Momento di dipolo elettrico>

  Dato un sistema di cariche, il momento elettrico (o momento di dipolo) è
  una grandezza vettoriale che quantifica la separazione tra le cariche
  positive e negative, ovvero la polarità del sistema, e si misura in Coulomb
  per metro.

  Date due cariche di segno opposto e uguale modulo <math|q>, il momento
  elettrico <math|p> è definito come

  <\equation*>
    <wide|p|\<vect\>>=q*\<cdot\><wide|d|\<vect\>>
  </equation*>

  dove <math|<wide|d|\<vect\>>> è il vettore spostamento dell'uno rispetto
  all'altro, orientato dalla carica negativa alla carica positiva.

  <subsection|Flusso elettrico>

  È proporzionale al numero di linee di campo elettrico che attraversano una
  superficie. Se il campo elettrico è uniforme e forma un angolo con la
  normale ad una superficie di area <math|A>, il flusso elettrico attraverso
  la superficie è

  <\equation*>
    \<Phi\><rsub|E>=E*A*cos<around*|(|\<theta\>|)>
    <around*|[|<frac|N*m<rsup|2>|C>|]>
  </equation*>

  <subsection|Flusso elettrico (legge di Gauss)>

  Data una superficie chiusa,

  <\equation*>
    \<Phi\><rsub|E>=<big|oint><wide|E|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=<frac|<big|sum>q<rsub|in>|\<varepsilon\><rsub|0>>
  </equation*>

  \;

  dove <math|<big|sum>q<rsub|in>> è la carica totale contenuta all'interno
  della superficie.

  In pratica, il flusso attraverso una superficie è uguale alla somma delle
  cariche interne diviso <math|\<varepsilon\><rsub|0>>. Le cariche esterne
  non danno un contributo al flusso in quanto le linee di forza entrano ed
  escono, quindi la somma dei contributi è nulla.

  <subsection|Equilibrio elettrostatico>

  Un conduttore in equilibrio elettrostatico ha le seguenti proprietà:

  <\enumerate>
    <item>Il campo elettrico all'interno del conduttore è ovunque nullo sia
    che il conduttore sia pieno sia che sia cavo

    <item>Un qualunque eccesso di carica su un conduttore isolato deve
    risiedere interamente sulla sua superficie

    <item>Il campo elettrico in un punto nelle immediate vicinanze del
    conduttore è perpendicolare alla sua superficie ed ha intensità
    <math|\<sigma\>/\<varepsilon\><rsub|0>>, dove <math|\<sigma\>> è la
    densità di carica superficiale in quel punto

    <item>Su un conduttore di forma irregolare la densità di carica è massima
    dove il raggio di curvatura della superficie è minimo.
  </enumerate>

  <subsection|Differenza di potenziale>

  <\equation*>
    \<Delta\>V\<equiv\><frac|\<Delta\>U|q<rsub|0>>=-<big|int><rsub|<around*|(|A|)>><rsup|<around*|(|B|)>><wide|E|\<vect\>>\<cdot\>d<wide|s|\<vect\>>
  </equation*>

  <subsection|Variazione di energia potenziale>

  Quando una carica di prova positiva <math|q<rsub|0>> si sposta dal punto
  <math|<around*|(|A|)>> al punto <math|<around*|(|B|)>> in un campo
  elettrico <math|<wide|E|\<vect\>>>, la variazione di energia potenziale del
  sistema carica-campo è

  <\equation*>
    \<Delta\>U=-q<rsub|0>*<big|int><rsub|<around*|(|A|)>><rsup|<around*|(|B|)>><wide|E|\<vect\>>*\<cdot\>d<wide|s|\<vect\>>
  </equation*>

  <section|Campo magnetico>

  Il campo magnetico è costituito da linee chiuse

  <subsection|Teorema di Ampère>

  È il duale del teorema di Gauss per il campo magnetico

  La circuitazione del campo magnetico lungo una linea <math|\<gamma\>> è
  uguale a <math|\<mu\><rsub|0>> moltiplicata per la somma delle correnti
  <math|I<rsub|i>> concatenate con la linea stessa

  <\equation*>
    <big|oint><rsub|\<gamma\>>B\<cdot\>d*l=\<mu\><rsub|0>*<big|sum><rsub|i>I<rsub|i>
  </equation*>

  <subsubsection|Legge di Biot-Savart>

  Si applica nel caso di un filo rettilineo indefinito percorso da corrente
  stazionaria <math|I>. Supponendo di essere nel vuoto, il modulo di <math|B>
  è inversamente proporzionale alla distanza dal filo <math|r> secondo
  l'espressione:

  <\equation*>
    B=\<mu\><rsub|0>\<cdot\><frac|I|2*\<pi\>*r>
  </equation*>

  Si ricava dal teorema di Ampère integrando <math|d*l> lungo la
  circonferenza di raggio <math|r> e considerando la corrente <math|I> come
  l'unica corrente concatenata alla linea <math|\<gamma\>>.

  <subsection|Particella in movimento in un campo magnetico uniforme>

  La traiettoria della particella è circolare, ed il piano del cerchio è
  perpendicolare al campo magnetico. Il raggio <math|r> della traiettoria
  circolare è

  <\equation*>
    r=<frac|m*v|q*B>
  </equation*>

  dove <math|m> è la massa della particella e <math|q> la sua carica. La
  velocità angolare della particella carica è

  <\equation*>
    \<omega\>=<frac|q*B|m>
  </equation*>

  <subsection|Momento di dipolo magnetico>

  <\equation*>
    <wide|m|\<vect\>>=I\<cdot\>S <around*|[|A\<cdot\>m<rsup|2>|]>
  </equation*>

  La direzione è data dalla direzione positiva di attraversamento di
  <math|S>, che viene individuata tramite la regola della mano destra
  (ponendo il pollice nella direzione della corrente <math|I> che scorre
  lungo il ``contorno'' di <math|S>)

  <subsection|Campo magnetico generato da un solenoide>

  <\equation*>
    <around*|\||B|\|>=\<mu\><rsub|o>\<cdot\>n\<cdot\>I
  </equation*>

  <subsection|Energia potenziale>

  L'energia potenziale del sistema formato da un momento di dipolo magnetico
  in un campo magnetico è

  <\equation*>
    U=-<wide|\<mu\>|\<vect\>>\<cdot\><wide|B|\<vect\>>
  </equation*>

  <chapter|Costanti>

  <\itemize>
    <item>Costante dielettrica (o permittività) del vuoto

    <\equation*>
      \<varepsilon\><rsub|0>=8.8542\<times\>10<rsup|-12>
      C<rsup|2>/N\<cdot\>m<rsup|2>
    </equation*>

    <item>Permeabilità magnetica del vuoto

    <\equation*>
      \<mu\><rsub|0>=4*\<pi\>\<times\>10<rsup|-7> H/m
    </equation*>

    (necessita di revisione)

    <\equation*>
      \<mu\><rsub|0>\<cong\>1.25663706144\<times\>10<rsup|-6> H/m
    </equation*>

    si può anche esprimere in <math|T\<cdot\>m/A>

    <item>Costante di Coulomb

    <\equation*>
      k<rsub|e>=8.9876\<times\>10<rsup|9> N\<cdot\>m<rsup|2>/C<rsup|2>
    </equation*>

    <item>Massa dell'elettrone

    <\equation*>
      m<rsub|e>\<cong\>9.1093826\<times\>10<rsup|-31> kg
    </equation*>
  </itemize>
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|1.7|?>>
    <associate|auto-11|<tuple|1.8|?>>
    <associate|auto-12|<tuple|2|?>>
    <associate|auto-13|<tuple|2.1|?>>
    <associate|auto-14|<tuple|2.1.1|?>>
    <associate|auto-15|<tuple|2.2|?>>
    <associate|auto-16|<tuple|2.3|?>>
    <associate|auto-17|<tuple|2.4|?>>
    <associate|auto-18|<tuple|2.5|?>>
    <associate|auto-19|<tuple|3|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|1|?>>
    <associate|auto-4|<tuple|1.1|?>>
    <associate|auto-5|<tuple|1.2|?>>
    <associate|auto-6|<tuple|1.3|?>>
    <associate|auto-7|<tuple|1.4|?>>
    <associate|auto-8|<tuple|1.5|?>>
    <associate|auto-9|<tuple|1.6|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Cinematica>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Elettromagnetismo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Campo
      elettrico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Legge di Coulomb
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Vettore campo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Flusso elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Flusso elettrico (legge di
      Gauss) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Equilibrio elettrostatico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Differenza di potenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Variazione di energia
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Campo
      magnetico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Campo magnetico generato da
      un solenoide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|1fn>
    </associate>
  </collection>
</auxiliary>
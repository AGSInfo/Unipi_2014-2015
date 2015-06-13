<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Formulario di fisica>|<doc-author|<author-data|<author-name|Gianluca
  Mondini e di chiunque altro mi aiuti>>>>

  ATTENZIONE: il seguente formulario potrebbe contenere errori. Non mi assumo
  nessuna responsabilit� sui contenuti. Il formulario � ancora in costruzione
  e necessita una revisione.

  Sono contenute alcune brevi descrizioni delle formule, che molto
  probabilmente saranno eliminate prima della stampa.

  <chapter|Cinematica>

  \;

  <chapter|Elettromagnetismo>

  <section|Campo elettrico>

  <subsection|Legge di Coulomb>

  <\equation*>
    F<rsub|e>=k<rsub|e>\<cdot\><frac|<around*|\||q<rsub|1>|\|>\<cdot\><around*|\||q<rsub|2>|\|>|r<rsup|2>>
  </equation*>

  dove <math|k<rsub|e>=8.9876\<times\>10<rsup|9>
  N\<cdot\>m<rsup|2>/C<rsup|2>>. <math|k<rsub|e>> si pu� indicare anche come
  <math|<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>>

  <subsection|Vettore campo elettrico>

  <\equation*>
    <wide|E|\<vect\>>\<equiv\><frac|<wide|F<rsub|e>|\<vect\>>|q<rsub|0>>*<around*|[|<frac|N|C>|]>
  </equation*>

  <subsection|Flusso elettrico>

  � proporzionale al numero di linee di campo elettrico che attraversano una
  superficie. Se il campo elettrico � uniforme e forma un angolo con la
  normale ad una superficie di area <math|A>, il flusso elettrico attraverso
  la superficie �

  <\equation*>
    \<Phi\><rsub|E>=E*A*cos<around*|(|\<theta\>|)>
    <around*|[|<frac|N*m<rsup|2>|C>|]>
  </equation*>

  <subsection|Flusso elettrico (legge di Gauss)>

  <\equation*>
    \<Phi\><rsub|E>=<big|oint><wide|E|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=<frac|q<rsub|in>|\<varepsilon\><rsub|0>>
  </equation*>

  dove <math|q<rsub|in>> � la carica totale contenuta all'interno della
  superficie

  <subsection|Equilibrio elettrostatico>

  Un conduttore in equilibrio elettrostatico ha le seguenti propriet�:

  <\enumerate>
    <item>Il campo elettrico all'interno del conduttore � ovunque nullo sia
    che il conduttore sia pieno sia che sia cavo

    <item>Un qualunque eccesso di carica su un conduttore isolato deve
    risiedere interamente sulla sua superficie

    <item>Il campo elettrico in un punto nelle immediate vicinanze del
    conduttore � perpendicolare alla sua superficie ed ha intensit�
    <math|\<sigma\>/\<varepsilon\><rsub|0>>, dove <math|\<sigma\>> � la
    densit� di carica superficiale in quel punto

    <item>Su un conduttore di forma irregolare la densit� di carica � massima
    dove il raggio di curvatura della superficie � minimo.
  </enumerate>

  <subsection|Differenza di potenziale>

  <\equation*>
    \<Delta\>V\<equiv\><frac|\<Delta\>U|q<rsub|0>>=-<big|int><rsub|<around*|(|A|)>><rsup|<around*|(|B|)>><wide|E|\<vect\>>\<cdot\>d<wide|s|\<vect\>>
  </equation*>

  <subsection|Variazione di energia potenziale>

  Quando una carica di prova positiva <math|q<rsub|0>> si sposta dal punto
  <math|<around*|(|A|)>> al punto <math|<around*|(|B|)>> in un campo
  elettrico <math|<wide|E|\<vect\>>>, la variazione di energia potenziale del
  sistema carica-campo �

  <\equation*>
    \<Delta\>U=-q<rsub|0>*<big|int><rsub|<around*|(|A|)>><rsup|<around*|(|B|)>><wide|E|\<vect\>>*\<cdot\>d<wide|s|\<vect\>>
  </equation*>

  <section|Campo magnetico>

  <subsection|Campo magnetico generato da un solenoide>

  <\equation*>
    <around*|\||B|\|>=\<mu\><rsub|o>\<cdot\>n\<cdot\>I
  </equation*>

  <chapter|Costanti>

  <\itemize>
    <item>Costante dielettrica (o permittivit�) del vuoto

    <\equation*>
      \<varepsilon\><rsub|0>=8.8542\<times\>10<rsup|-12>
      C<rsup|2>/N\<cdot\>m<rsup|2>
    </equation*>
  </itemize>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-10|<tuple|1.7|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-11|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-12|<tuple|2.1|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-13|<tuple|3|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-2|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-3|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-4|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-5|<tuple|1.2|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-6|<tuple|1.3|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-7|<tuple|1.4|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-8|<tuple|1.5|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-9|<tuple|1.6|?|../../../.TeXmacs/texts/scratch/no_name_3.tm>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Campo
      magnetico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Campo magnetico generato da
      un solenoide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|1fn>
    </associate>
  </collection>
</auxiliary>
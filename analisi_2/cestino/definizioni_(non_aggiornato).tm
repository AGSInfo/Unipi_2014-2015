<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Raccolta definizioni di Analisi
  II>|<doc-author|<author-data|<author-name|Mondini Gianluca e di chiunque
  altro mi aiuti>>>>

  <subsubsection|<paragraph|Sfera aperta (o intorno di raggio di centro
  <math|x<rsub|0>> e raggio <math|p>)>>

  Dato <math|x \<in\>R> e <math|p\<gtr\>0> si definisce:

  <\equation*>
    B<around*|(|x<rsub|0>,p|)>=B<rsub|p><around*|(|x<rsub|0>|)>=<around*|{|x\<in\>R<rsup|n>
    : <around*|\||x-x<rsub|0>|\|>\<less\>p|}>
  </equation*>

  <subsubsection|<paragraph|Sfera chiusa di centro <math|x<rsub|0>> e raggio
  di <math|p>>>

  Dato <math|x \<in\>R> e <math|p\<gtr\>0> si definisce:

  <\equation*>
    B<around*|(|x<rsub|0>,p|)>=B<rsub|p><around*|(|x<rsub|0>|)>=<around*|{|x\<in\>R
    : <around*|\||x-x<rsub|0>|\|>\<leqslant\>p|}>
  </equation*>

  <subsubsection|Punto interno>

  Dato <math|x<rsub|0>\<in\>R<rsup|n>> e <math|\<Omega\>\<in\>R<rsup|n>>,
  <math|x<rsub|0>> si dice punto interno ad <math|\<Omega\>> se

  <\equation*>
    \<exists\>p : B<rsub|p><around*|(|x<rsub|0>|)>\<subseteq\>\<Omega\>
  </equation*>

  Attenzione: ci� non significa necessariamente che
  <math|x<rsub|0>\<in\>\<Omega\>>

  <subsubsection|Punto esterno>

  <subsubsection|Punto di frontiera>

  <subsubsection|Punto isolato>

  <subsubsection|Punto di accumulazione>

  <subsubsection|Insieme aperto>

  <subsubsection|Insieme chiuso>

  <subsubsection|Insieme limitato>

  <subsubsection|Insieme convesso>

  <subsubsection|Chiusura di un insieme>

  <subsubsection|Insieme compatto>

  <subsubsection|Successione>

  <subsubsection|Successione convergente>

  <subsubsection|Successione divergente>

  <subsubsection|Successioni oscillanti>

  <subsubsection|Funzione scalare>

  <subsubsection|Funzione vettoriale>

  <subsubsection|Continuit� di <math|f:R<rsup|n>\<rightarrow\>R<rsup|m>>>

  <subsubsection|Curva parametrica>

  <subsubsection|Curva chiusa>

  Una curva chiusa <math|\<gamma\>> � una funzione continua

  <\equation*>
    \<gamma\><around*|[|a,b|]>\<rightarrow\>\<Omega\><text| \ con
    \ >\<Omega\>\<subseteq\>R<rsup|n>
  </equation*>

  tale che\ 

  <\equation*>
    \<gamma\><around*|(|a|)>=\<gamma\><around*|(|b|)>
  </equation*>

  <subsubsection|Curva costante>

  Una curva costante <math|\<gamma\>> � una funzione

  <\equation*>
    \<gamma\><around*|[|a,b|]>\<rightarrow\>R<rsup|n><text| \ con
    \ >\<Omega\>\<subseteq\>R<rsup|n>
  </equation*>

  tale che

  <\equation*>
    \<gamma\><around*|(|t|)>=x<rsub|0><text| \ \ \ >\<forall\> t
    \<in\><around*|[|a,b|]><text| \ e \ >x<rsub|0>\<in\>\<Omega\>
  </equation*>

  <subsubsection|Curva semplice>

  Una curva semplice <math|\<gamma\>> � una funzione

  <\equation*>
    \<gamma\>:<around*|[|a,b|]>\<rightarrow\>R<rsup|n><text| \ iniettiva su
    \ ><around*|(|a,b|)>
  </equation*>

  cio� tale che

  <\equation*>
    \<gamma\><around*|(|t|)>\<neq\>\<gamma\><around*|(|s|)><text| \ se
    \ >t\<neq\>s<text| \ per ogni \ >t,s\<in\><around*|(|a,b|)>
  </equation*>

  <subsubsection|Insieme connesso (per archi)>

  Dato <math|\<Omega\>\<subseteq\>R<rsup|n>\<nocomma\>>, si dir� un insieme
  connesso se

  <\equation*>
    \<forall\> x,y\<in\>\<Omega\><text| \ >\<exists\>
    \<gamma\>:<around*|[|a,b|]>\<rightarrow\>\<Omega\><text| \ :
    \ >\<gamma\><around*|(|a|)>=x<text| \ e
    \ >\<gamma\><around*|(|b|)>=y<text| \ continua>
  </equation*>

  In pratica: presi due punti qualsiasi <math|x,y\<in\>\<Omega\>> esiste una
  curva parametrica (o arco) <math|\<gamma\>> continua appartenente ad
  <math|\<Omega\>> che conginunge i due punti.

  <subsubsection|Insieme semplicemente connesso>

  Definizione ``pratica'': un insieme � semplicemente connesso quando �
  connesso e ``non ha buchi'' (attenzione! la seguente definizione � valida
  soltanto in <math|R<rsup|2>>)

  <subsubsection|Funzione oscillante>

  <subsubsection|Derivata direzionale>

  <subsubsection|Derivata parziale>

  Se nel calcolare la derivata direzionale si usa come direzione quella dei
  vettori della base canonica la derivata direzionale prende il nome di
  derivata parziale.

  <\equation*>
    <frac|\<partial\>*f<around*|(|x<rsub|0>|)>|\<partial\>*e<rsub|i>>=<frac|\<partial\>*f<around*|(|x<rsub|0>|)>|\<partial\>*x<rsub|i>>=lim<rsub|t\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+t*e<rsub|i>|)>-f<around*|(|x<rsub|0>|)>|t>
  </equation*>

  <subsubsection|Punto estremo>

  <subsubsection|Funzioni (positivamente) omogenee>

  <subsubsection|Funzioni 0-omogenee>

  <subsubsection|Differenziale>

  Preso <math|f:\<Omega\>\<rightarrow\>R> con
  <math|\<Omega\>\<subseteq\>R<rsup|n>>, <math|f > si dice differenziabile in
  <math|x<rsub|0>\<in\>\<Omega\>> se

  <\equation*>
    \<exists\> A:R<rsup|n<rprime|'>>\<rightarrow\>R<text| \ lineare tale che
    \ >lim<rsub|w\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+w|)>-f<around*|(|x<rsub|0>|)>-A<around*|(|w|)>|<around*|\||w|\|>>=0
  </equation*>

  L'applicazione lineare <math|A<around*|(|w|)>> si chiama differenziaile di
  <math|f> nel punto <math|x<rsub|0>> secondo l'incremento di <math|w> e si
  sindica con

  <\equation*>
    df<around*|(|x<rsub|0>,w|)>=A<around*|(|w|)><text| \ con
    \ >x<rsub|0>,w\<in\>R<rsup|n>
  </equation*>

  <subsubsection|Matrice Jacobiana>

  Data una funzione <math|f:R<rsup|n>\<rightarrow\>R<rsup|m>> con
  <math|x<rsub|0>\<in\>R<rsup|n>> la matrice Jacobiana
  <math|J<around*|(|x<rsub|0>|)>\<in\>R<rsup|n\<times\>m>> � formata dalle
  derivate parziali prime di <math|f> nel punto <math|x<rsub|0>>

  <\equation*>
    J<around*|(|x<rsub|0>|)>=<matrix|<tformat|<table|<row|<cell|\<nabla\>f<rsub|1><around*|(|x<rsub|0>|)>>>|<row|<cell|\<ldots\>>>|<row|<cell|\<nabla\>f<rsub|n><around*|(|x<rsub|0>|)>>>>>>=<matrix|<tformat|<table|<row|<cell|<frac|\<partial\>f<rsub|1><around*|(|x<rsub|0>|)>|\<partial\>x<rsub|1>>>|<cell|\<ldots\>>|<cell|<frac|\<partial\>f<rsub|1><around*|(|x<rsub|0>|)>|\<partial\>x<rsub|n>>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|<frac|\<partial\>f<rsub|n><around*|(|x<rsub|0>|)>|\<partial\>x<rsub|1>>>|<cell|\<ldots\>>|<cell|<frac|\<partial\>f<rsub|n><around*|(|x<rsub|0>|)>|\<partial\>x<rsub|n>>>>>>>
  </equation*>

  <subsubsection|Funzione di classe <math|C<rsup|1><around*|(|\<Omega\>|)>>>

  Presa una funzione <math|f:\<Omega\>\<rightarrow\>R> con
  <math|\<Omega\>\<in\>R<rsup|n>> si dice di classe
  <math|C<rsup|1><around*|(|\<Omega\>|)>> se:

  <\itemize>
    <item><math|f> � continua in <math|\<Omega\>>

    <item><math|f<rprime|'>> � continua <math|\<rightarrow\>> derivate
    parziali prime continue in <math|\<Omega\>>
  </itemize>

  <subsubsection|Campo di vettori di classe <math|C<rsup|K>>>

  <subsubsection|Curva regolare>

  Una curva <math|\<gamma\>:<around*|[|a,b|]>\<rightarrow\>R<rsup|n>> si dir�
  regolare se:

  <\equation*>
    <around*|\||<wide|\<gamma\>|\<dot\>><around*|(|t|)>|\|>\<neq\>0<text|
    \ per ogni \ >t\<in\><around*|[|a,b|]>
  </equation*>

  <subsubsection|Campi irrotazionali>

  Un campo <math|A> di classe <math|C<rsup|1>> � detto irrotazionale se
  <math|<around*|(|A<rsub|i>|)><rsub|x<rsub|j>>=<around*|(|A<rsub|j>|)>x<rsub|i>>
  \ \ <math|\<forall\> i \<neq\>j>

  <subsubsection|Forme chiuse>

  Una forma differenziale <math|\<alpha\><around*|(|x,w|)>=A<around*|(|x|)>*w>
  � detta chiusa se il suo campo associato <math|A> � irrotazionale

  <subsubsection|Curve deformabili ad omotope>

  Due curve

  <\equation*>
    \<gamma\><rsub|1><around*|[|0,1|]>\<rightarrow\>\<Omega\>\<nocomma\><text|,
    \ \ \ >\<gamma\><rsub|2><around*|[|0,1|]>\<rightarrow\>\<Omega\>
  </equation*>

  e

  <\equation*>
    \<gamma\><rsub|1><around*|(|0|)>=\<gamma\><rsub|2><around*|(|0|)><text|,
    \ \ \ >\<gamma\><rsub|1><around*|(|1|)>=\<gamma\><rsub|2><around*|(|1|)>
  </equation*>

  si dicono deformabili ad omotope se <math|\<exists\>>
  <math|h:<around*|[|0,1|]>\<times\><around*|[|0,1|]>\<rightarrow\>\<Omega\>>
  continua tale che

  <\equation*>
    h<around*|(|0,t|)>=\<gamma\><rsub|1><around*|(|t|)><text| \ e
    \ >h<around*|(|1,t|)>=\<gamma\><rsub|2><around*|(|t|)>
  </equation*>

  <subsubsection|Insieme semplicemente connesso>

  Un insieme <math|\<Omega\>\<subseteq\>R<rsup|n>> si dir� semplicemente
  connesso se ogni curva chiusa

  <\equation*>
    \<gamma\>:<around*|[|0,1|]>\<rightarrow\>\<Omega\>
  </equation*>

  � omotopa in <math|\<Omega\>> ad una curva costante

  <\equation*>
    \<sigma\><around*|(|t|)>\<equiv\>x<rsub|0><text|
    \ \ \ >\<forall\>t\<in\><around*|[|0,1|]>
  </equation*>

  <subsubsection|Insieme a stella>

  L'insieme <math|\<Omega\>\<subseteq\>R<rsup|n>> � detto a stella se

  <\equation*>
    \<exists\>x<rsub|0>\<in\>\<Omega\><text| \ tale che il segmento
    \ ><wide|x<rsub|0>|\<bar\>>x\<subseteq\>\<Omega\><text| \ >per ogni
    x\<in\>\<Omega\>
  </equation*>

  In sostanza, <math|\<Omega\>> � un insieme a stella se esiste un suo punto
  che \ ``vede tutti gli altri''

  \ 
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|4|?>>
    <associate|auto-11|<tuple|5|?>>
    <associate|auto-12|<tuple|6|?>>
    <associate|auto-13|<tuple|7|?>>
    <associate|auto-14|<tuple|8|?>>
    <associate|auto-15|<tuple|9|?>>
    <associate|auto-16|<tuple|10|?>>
    <associate|auto-17|<tuple|11|?>>
    <associate|auto-18|<tuple|12|?>>
    <associate|auto-19|<tuple|13|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-20|<tuple|14|?>>
    <associate|auto-21|<tuple|15|?>>
    <associate|auto-22|<tuple|16|?>>
    <associate|auto-23|<tuple|17|?>>
    <associate|auto-24|<tuple|18|?>>
    <associate|auto-25|<tuple|19|?>>
    <associate|auto-26|<tuple|20|?>>
    <associate|auto-27|<tuple|21|?>>
    <associate|auto-28|<tuple|22|?>>
    <associate|auto-29|<tuple|23|?>>
    <associate|auto-3|<tuple|2.1|?>>
    <associate|auto-30|<tuple|24|?>>
    <associate|auto-31|<tuple|25|?>>
    <associate|auto-32|<tuple|26|?>>
    <associate|auto-33|<tuple|27|?>>
    <associate|auto-34|<tuple|28|?>>
    <associate|auto-35|<tuple|29|?>>
    <associate|auto-36|<tuple|30|?>>
    <associate|auto-37|<tuple|31|?>>
    <associate|auto-38|<tuple|32|?>>
    <associate|auto-39|<tuple|33|?>>
    <associate|auto-4|<tuple|1.3|?>>
    <associate|auto-40|<tuple|34|?>>
    <associate|auto-41|<tuple|35|?>>
    <associate|auto-42|<tuple|36|?>>
    <associate|auto-43|<tuple|37|?>>
    <associate|auto-44|<tuple|38|?>>
    <associate|auto-45|<tuple|39|?>>
    <associate|auto-46|<tuple|40|?>>
    <associate|auto-47|<tuple|41|?>>
    <associate|auto-48|<tuple|42|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|auto-6|<tuple|3|?>>
    <associate|auto-7|<tuple|1|?>>
    <associate|auto-8|<tuple|2.3|?>>
    <associate|auto-9|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|2tab>|1<space|2spc><assign|paragraph-numbered|false><assign|paragraph-prefix|<macro|<compound|the-paragraph>.>><assign|paragraph-nr|1><hidden|<tuple>><assign|subparagraph-nr|0><flag|indice|dark
      green|what><assign|auto-nr|2><write|toc|<with|par-left|<quote|4tab>|Sfera
      aperta (o intorno di raggio di centro
      <with|mode|<quote|math>|x<rsub|0>> e raggio <with|mode|<quote|math>|p>)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>><toc-notify|toc-4|Sfera
      aperta (o intorno di raggio di centro
      <with|mode|<quote|math>|x<rsub|0>> e raggio
      <with|mode|<quote|math>|p>)><no-indent><with|font-series|<quote|bold>|math-font-series|<quote|bold>|<vspace*|0.5fn>Sfera
      aperta (o intorno di raggio di centro
      <with|mode|<quote|math>|x<rsub|0>> e raggio
      <with|mode|<quote|math>|p>)<space|2spc>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|4tab>|Sfera aperta (o intorno di raggio di centro
      <with|mode|<quote|math>|x<rsub|0>> e raggio <with|mode|<quote|math>|p>)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.15fn>>

      <with|par-left|<quote|2tab>|2<space|2spc><assign|paragraph-numbered|false><assign|paragraph-prefix|<macro|<compound|the-paragraph>.>><assign|paragraph-nr|1><hidden|<tuple>><assign|subparagraph-nr|0><flag|indice|dark
      green|what><assign|auto-nr|6><write|toc|<with|par-left|<quote|4tab>|Sfera
      chiusa di centro <with|mode|<quote|math>|x<rsub|0>> e raggio di
      <with|mode|<quote|math>|p> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.15fn>>><toc-notify|toc-4|Sfera
      chiusa di centro <with|mode|<quote|math>|x<rsub|0>> e raggio di
      <with|mode|<quote|math>|p>><no-indent><with|font-series|<quote|bold>|math-font-series|<quote|bold>|<vspace*|0.5fn>Sfera
      chiusa di centro <with|mode|<quote|math>|x<rsub|0>> e raggio di
      <with|mode|<quote|math>|p><space|2spc>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|4tab>|Sfera chiusa di centro
      <with|mode|<quote|math>|x<rsub|0>> e raggio di
      <with|mode|<quote|math>|p> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.15fn>>

      <with|par-left|<quote|2tab>|3<space|2spc>Punto interno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|4<space|2spc>Punto esterno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|5<space|2spc>Punto di frontiera
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|6<space|2spc>Punto isolato
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|2tab>|7<space|2spc>Punto di accumulazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|8<space|2spc>Insieme aperto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|9<space|2spc>Insieme chiuso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|10<space|2spc>Insieme limitato
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|11<space|2spc>Insieme convesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|2tab>|12<space|2spc>Chiusura di un insieme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|2tab>|13<space|2spc>Insieme compatto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|14<space|2spc>Successione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|2tab>|15<space|2spc>Successione convergente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|16<space|2spc>Successione divergente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|17<space|2spc>Successioni oscillanti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|18<space|2spc>Funzione scalare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|19<space|2spc>Funzione vettoriale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|2tab>|20<space|2spc>Continuit� di
      <with|mode|<quote|math>|f:R<rsup|n>\<rightarrow\>R<rsup|m>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|2tab>|21<space|2spc>Curva parametrica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|2tab>|22<space|2spc>Curva chiusa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|23<space|2spc>Curva costante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|2tab>|24<space|2spc>Curva semplice
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|2tab>|25<space|2spc>Insieme connesso (per archi)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|2tab>|26<space|2spc>Funzione oscillante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|27<space|2spc>Derivata direzionale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|28<space|2spc>Derivata parziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|2tab>|29<space|2spc>Punto estremo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|30<space|2spc>Funzioni (positivamente)
      omogenee <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|2tab>|31<space|2spc>Funzioni 0-omogenee
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|2tab>|32<space|2spc>Differenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|2tab>|33<space|2spc>Matrice Jacobiana
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|2tab>|34<space|2spc>Funzione di classe
      <with|mode|<quote|math>|C<rsup|1><around*|(|\<Omega\>|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|2tab>|35<space|2spc>Campo di vettori di classe
      <with|mode|<quote|math>|C<rsup|K>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|2tab>|36<space|2spc>Curva regolare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|37<space|2spc>Campi irrotazionali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|2tab>|38<space|2spc>Forme chiuse
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|2tab>|39<space|2spc>Curve deformabili ad omotope
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|40<space|2spc>Insieme semplicemente
      connesso <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|2tab>|41<space|2spc>Insieme a stella
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>
    </associate>
  </collection>
</auxiliary>
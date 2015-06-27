<TeXmacs|1.99.2>

<style|<tuple|book|italian>>

<\body>
  <doc-data|<doc-title|Scritto analisi 2>>

  \;

  <section|Come risolvere gli esercizi>

  <subsection|Insiemi>

  <subsubsection|Insieme a stella>

  Un insieme <math|\<Omega\>\<subseteq\>R<rsup|n>> viene detto ``a stella''
  se

  <\equation*>
    \<exists\> x<rsub|0> \<in\> \<Omega\><text| \ tale che il segmento
    \ ><wide|x<rsub|0>|\<bar\>>x \<subseteq\>\<Omega\><text| \ >\<forall\>
    x\<in\>\<Omega\>
  </equation*>

  In sostanza <math|\<Omega\>> è un insieme ``a stella'' se esiste un suo
  punto che ``vede tutti gli altri''

  <subsubsection|Insieme connesso>

  Un insieme è connesso se esiste una curva che unisce ogni suo punto

  <subsubsection|Insieme semplicemente connesso>

  Un insieme <math|\<Omega\>\<subseteq\>R<rsup|n>> si dirà semplicemente
  connesso se ogni curva chiusa <math|\<gamma\>:<around*|[|0,1|]>\<rightarrow\>\<Omega\>>
  è omotopa in <math|\<Omega\>> ad una curva costante
  <math|\<sigma\><around*|(|t|)>\<equiv\>x<rsub|0><space|1em>\<forall\>t\<in\><around*|[|0,1|]>>.
  In <math|R<rsup|2>> un insieme è semplicemente connesso se è connesso
  ``senza buchi''.

  <subsubsection|Insieme aperto>

  In ogni punto dell'insieme è possibile ``spostarsi di poco'' senza uscire
  dall'insieme

  <subsubsection|Insieme chiuso>

  È il complementare di un insieme aperto

  <subsubsection|Insieme compatto>

  (da verificare)

  Un insieme è compatto se è chiuso e limitato

  <subsection|Derivata direzionale>

  \;

  Data la funzione <math|f<around*|(|x,y|)>>, la derivata in direzione
  <math|<around*|(|v<rsub|1>,v<rsub|2>|)>> in
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> vale

  <\equation*>
    v<rsub|1>*f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>+v<rsub|2>*f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>
  </equation*>

  <subsection|Limiti>

  <\equation*>
    lim<rsub|0,x\<rightarrow\>0>f<around*|(|x,y|)>=lim<rsub|y,0\<rightarrow\>0><around*|(|x,y|)>=lim<rsub|x\<rightarrow\>0>f<around*|(|x|)>=L?<space|1em>\<Longrightarrow\><space|1em>lim<rsub|x,y\<rightarrow\>0>=L
  </equation*>

  <subsubsection|Restrinzione su retta>

  <\equation*>
    y=m<around*|(|x-x<rsub|0>|)>+y<rsub|0><space|1em>con<space|1em>m\<in\>R
  </equation*>

  <\equation*>
    lim<rsub|x\<rightarrow\>x<rsub|0>>f<around*|(|x,m<around*|(|x-x<rsub|0>|)>+y<rsub|0>|)>
  </equation*>

  Se il limite dipende da <math|m> allora significa che il limite di partenza
  non esiste. In caso contrario non è possibile concludere nulla.

  <subsection|Determinare la differenziabilità>

  <\enumerate>
    <item>Verifico che la funzione <math|f<around*|(|x,y|)>> sia continua in
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>>, utilizzando il limite se
    necessario

    <item>Verifico che la funzione sia derivabile calcolando le derivate
    parziali utilizzando il limite, verificando che esistano entrambe
    <math|<around*|(|\<neq\>\<pm\>\<infty\>|)>>

    <\equation*>
      f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)><space|1em>=<space|1em>lim<rsub|h\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+h,y<rsub|0>|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|h>
    </equation*>

    <\equation*>
      f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)><space|1em>=<space|1em>lim<rsub|k\<rightarrow\>0><frac|f<around*|(|x<rsub|0>,y<rsub|0>+k|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|k>
    </equation*>

    <with|font-series|bold|Teorema del differenziale totale:> se <math|A> ha
    derivate parziali continue in un intorno di
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è differenziabile in quel punto

    <item>Verifico la differenziabilità

    <\equation*>
      lim<rsub|<around*|(|h,k|)>\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+h,y<rsub|0>+k|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>-f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>*h-f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>*k|<sqrt|h<rsup|2>+k<rsup|2>>>
    </equation*>
  </enumerate>

  <subsection|Calcolare il potenziale di una forma differenziale>

  <\equation*>
    <text|Forma differenziale >w<around*|(|x,y|)>=A<rsub|1><around*|(|x,y|)>*dx+A<rsub|2><around*|(|x,y|)>*dy
  </equation*>

  \;

  Data una forma differenziale <math|A<rsub|1><around*|(|x,y|)>*dx+A<rsub|2><around*|(|x,y|)>*dy>

  <\enumerate>
    <item>Controllo che la forma differenziale sia chiusa (il campo associato
    <math|A=<around*|(|A<rsub|1><around*|(|x,y|)>,A<rsub|2><around*|(|x,y|)>|)>>
    deve essere irrotazionale)

    <\equation*>
      <around*|(|A<rsub|1>|)><rsub|y>=<around*|(|A<rsub|2>|)><rsub|x>
    </equation*>

    Se la forma non è chiusa, significa che non può essere esatta e quindi
    neanche integrabile (grazie alla condizione del rotore) [fine].

    <item>Se il dominio è semplicemente connesso, oltre ad essere chiusa è
    anche esatta e quindi la forma è integrabile [fine].

    <item>Calcolo manualmente una primitiva

    <item>Verifico che <math|\<nabla\>F=A>
  </enumerate>

  <subparagraph|Metodo manuale per il calcolo della primitiva>

  <\enumerate>
    <item>Calcolo\ 

    <\equation*>
      <big|int><around*|[|A<rsub|1><around*|(|x,y|)>|]>*dx=f<around*|(|x,y|)>+C<around*|(|y|)>
    </equation*>

    <item>Derivo <math|f<around*|(|x,y|)>+C<around*|(|y|)>> rispetto a
    <math|y> e pongo la derivata = <math|A<rsub|2><around*|(|x,y|)>>

    <\equation*>
      <frac|d|dy><around*|[|f<around*|(|x,y|)>+C<around*|(|y|)>|]>=A<rsub|2><around*|(|x,y|)>
    </equation*>

    <item>Ricavo <math|>C (eventulmente integrando
    <math|C<rprime|'><around*|(|y|)>> del passaggio precedente) e sostituisco
    il valore trovato in <math|f<around*|(|x,y|)>+C<around*|(|y|)>>, il
    risultato è il potenziale (ovvero una primitiva)
  </enumerate>

  <subsection|Lunghezza di una curva>

  <\equation*>
    \<wedge\>\<gamma\><around*|(|t|)>=<big|int><rsub|a><rsup|b><around*|\<\|\|\>|<wide|\<gamma\><around*|(|t|)>|\<dot\>>|\<\|\|\>>*dx
  </equation*>

  che in una sola variabile si riduce a

  <\equation*>
    <big|int><rsub|a><rsup|b><sqrt|1+<wide|f<around*|(|t|)>|\<dot\>><rsup|2>>*dt
  </equation*>

  <with|font-series|bold|Lunghezza di una curva in forma polare>

  La formula è da verificare

  Data una curva polare <math|\<rho\><around*|(|\<theta\>|)>> e
  <math|\<theta\>\<in\><around*|[|a,b|]>>, si ha

  <\equation*>
    \<wedge\>\<rho\><around*|(|\<theta\>|)>=<big|int><rsub|a><rsup|b><sqrt|<around*|(|\<rho\><rprime|'><around*|(|\<theta\>|)>|)><rsup|2>+<around*|(|\<rho\><around*|(|\<theta\>|)>|)><rsup|2>>dx
  </equation*>

  Altra formula

  <\equation*>
    \<wedge\><around*|(|\<gamma\>|)>=<big|int><rsub|a><rsup|b><sqrt|<around*|[|<wide|\<rho\><around*|(|t|)>|\<dot\>>|]><rsup|2>+<around*|[|\<rho\><around*|(|t|)>|]><rsup|2>\<cdot\><around*|[|\<theta\><around*|(|t|)>|]><rsup|2>>
  </equation*>

  <subsection|Integrale curvilineo>

  <\equation*>
    <big|int><rsub|\<gamma\>>f<around*|(|x,y|)>=<big|int><rsub|a><rsup|b>f<around*|(|\<gamma\><around*|(|t|)>|)>**<around*|\<\|\|\>|<wide|\<gamma\><around*|(|t|)>|\<dot\>>|\<\|\|\>>*dt
  </equation*>

  <subsection|Integrale di campo (integrale di linea)>

  Dato il campo vettoriale <math|f<around*|(|x,y|)>=<around*|(|f<rsub|1><around*|(|x,y|)>,f<rsub|2><around*|(|x,y|)>|)>>,
  <math|f:\<Omega\>\<rightarrow\>R<rsup|2>>,
  <math|\<Omega\>\<subseteq\>R<rsup|2>>

  e una curva <math|\<gamma\><around*|(|t|)>=<around*|(|x<around*|(|t|)>,y<around*|(|t|)>|)>>
  <math|\<gamma\>:<around*|[|a,b|]>\<rightarrow\>\<Omega\>>

  <\equation*>
    <big|int><rsub|\<gamma\>>f*d\<gamma\>=<big|int><rsub|a><rsup|b><around*|[|f<rsub|1><around*|(|x<around*|(|t|)>,y<around*|(|t|)>|)>*x<rprime|'><around*|(|t|)>+f<rsub|2><around*|(|x<around*|(|t|)>,y<around*|(|t|)>|)>*y<rprime|'><around*|(|t|)>|]>*dt=<big|int><rsub|a><rsup|b>f<around*|(|\<gamma\><around*|(|t|)>|)>*<wide|\<gamma\>|\<dot\>><around*|(|t|)>*dt
  </equation*>

  <subsection|Area della porzione di grafico (o superficie di
  <math|f<around*|(|x,y|)>>)>

  <\equation*>
    A=<big|int><rsub|a><rsup|b><big|int><rsub|c<rsup|>><rsup|d><around*|\||f<rsub|x>\<wedge\>f<rsub|y>|\|>*dy*dx
  </equation*>

  <\equation*>
    A=<big|int><rsub|a><rsup|b><around*|(|<big|int><rsub|c><rsup|d><sqrt|1+<around*|(|f<rsub|x>|)><rsup|2>+<around*|(|f<rsub|y>|)><rsup|2>>*dy|)>*dx
  </equation*>

  <with|font-series|bold|Per curve date in coordinate polari>

  <\equation*>
    A=<frac|1|2><big|int><rsub|a><rsup|b>r<rsup|2>*d\<theta\>
  </equation*>

  <subsection|Integrale superficiale>

  <\equation*>
    <big|int><rsub|\<Delta\>>f<around*|(|\<Phi\><rsub|<around*|(|u,v|)>>|)>*<around*|\||\<Phi\><rsub|u>\<wedge\>\<Phi\><rsub|v>|\|>*du*dv
  </equation*>

  <subparagraph|Esempio>

  Calcolare <math|<big|int><rsub|\<Sigma\>>x*d\<sigma\>>.
  <math|\<Sigma\>=graph<around*|(|arctan<around*|(|<frac|y|x>|)>|)>>.

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x\<gtr\>0>>|<row|<cell|y\<gtr\>0>>|<row|<cell|1\<less\>x<rsup|2>+y<rsup|2>\<less\>2>>>>>
  </equation*>

  <\equation*>
    f<rsub|x>=-<frac|y|x<rsup|2>+y<rsup|2>><space|1em>f<rsub|y>=<frac|x|x<rsup|2>+y<rsup|2>>
  </equation*>

  <\equation*>
    <sqrt|1+<frac|y<rsup|2>|<around*|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>+<frac|x<rsup|2>|<around*|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>>=<sqrt|1+<frac|1|x<rsup|2>+y<rsup|2>>>
  </equation*>

  Determino gli estremi di integrazione in coordinate polari:
  <math|\<theta\>> è compreso tra <math|0> e <math|<frac|\<pi\>|2>> in quanto
  ci troviamo nel primo quadrante, mentre
  <math|1\<less\>\<rho\>\<less\><sqrt|2>> poiché
  <math|1\<less\>\<rho\><rsup|2>\<less\>2>. Per effettuare il cambio di
  coordinate necessito del determinate della Jacobiana, ovvero
  <math|det<around*|(|J|)>=\<rho\>>

  <\equation*>
    <big|int><rsub|0><rsup|<frac|\<pi\>|2>>d\<theta\><big|int><rsub|1><rsup|<sqrt|2>>d\<rho\>*\<rho\>*cos<around*|(|\<theta\>|)>*<sqrt|<frac|1+\<rho\><rsup|2>|\<rho\><rsup|2>>>*\<rho\><text|><space|1em>=
  </equation*>

  <\equation*>
    =<space|1em><big|int><rsub|0><rsup|<frac|\<pi\>|2>>cos<around*|(|\<theta\>|)>*d\<theta\><big|int><rsub|1><rsup|<sqrt|2>>\<rho\>*<sqrt|1+\<rho\><rsup|2>>*d\<rho\><space|1em>=<space|1em>\<ldots\>
  </equation*>

  <subparagraph|Esempio>

  Calcolo della superficie laterale di un solido di rotazione

  <\equation*>
    S<rsub|laterale>=2*\<pi\>*<big|int><rsub|a><rsup|b>f<around*|(|z|)>*<sqrt|1+f<rprime|'><around*|(|z|)><rsup|2>>*dz
  </equation*>

  <with|font-series|bold|Esempio>

  Calcolo della superficie di una sfera

  <\equation*>
    f<around*|(|z|)>=<sqrt|1-z<rsup|2>>
  </equation*>

  <\equation*>
    S<rsub|sfera>=2*\<pi\>*<big|int><rsub|-1><rsup|1><sqrt|1-z<rsup|2>>*<sqrt|1+<frac|z<rsup|2>|1-z<rsup|2>>>*dz=4*\<pi\>
  </equation*>

  \;

  <subsection|Volume>

  <\equation*>
    V=<big|int><rsub|a><rsup|b>dx<big|int><rsub|c><rsup|d>dy<big|int><rsub|e><rsup|f>dz
  </equation*>

  <subparagraph|Esempio>

  Calcolo del volume di un solido ottenuto ruotando una funzione
  <math|f<around*|(|z|)>\<gtr\>0> attorno all'asse <math|z>

  <\equation*>
    T=<around*|{|<around*|(|\<rho\>,\<theta\>,z|)>\<space\><space|1em>:<space|1em><choice|<tformat|<table|<row|<cell|a\<less\>z\<less\>b>>|<row|<cell|0\<less\>\<rho\>\<less\>f<around*|(|z|)>>>|<row|<cell|0\<less\>\<theta\>\<less\>2*\<pi\>>>>>>|}>
  </equation*>

  <\equation*>
    V<around*|(|T|)>=<big|int><rsub|T>dx*dy*dz=
  </equation*>

  <\equation*>
    =<space|1em><big|int><rsub|0><rsup|2*\<pi\>>d*\<theta\><big|int><rsub|a><rsup|b>dz<big|int><rsub|0><rsup|f<around*|(|z|)>>\<rho\>*d*\<theta\>=2*\<pi\><big|int><rsub|a><rsup|b>dz*<frac|1|2>*f<rsup|2><around*|(|z|)>=\<pi\><big|int><rsub|a><rsup|b>f<rsup|2><around*|(|z|)>*dz
  </equation*>

  <with|font-series|bold|Esempio>

  Calcolo del volume di una sfera

  <\equation*>
    f<around*|(|z|)>=<sqrt|1-z<rsup|2>>
  </equation*>

  <\equation*>
    V<rsub|sfera>=\<pi\>*<big|int><rsub|-1><rsup|1>f<rsup|2><around*|(|z|)>*dz=\<pi\>*<big|int><rsub|-1><rsup|1><around*|(|1-z<rsup|2>|)>*dz=<frac|4|3>*\<pi\>
  </equation*>

  <subsection|Integrale su un insieme>

  <subsubsection|In 2 variabili>

  Se <math|T> è ``normale'

  <\equation*>
    <big|int><rsub|T>f<around*|(|x,y|)>=<big|int><rsub|a><rsup|b><big|int><rsub|c><rsup|d>f<around*|(|x,y|)>*dy*dx
  </equation*>

  <subsubsection|In 3 variabili>

  <\equation*>
    <big|int><rsub|\<Omega\>>f<around*|(|x,y,z|)>*dx*dy*dz
  </equation*>

  <subparagraph|Integrazione per strati>

  <\equation*>
    <big|int><rsub|<with|math-font|Bbb*|R>>*dz<big|int><rsub|\<Omega\><around*|(|z|)>>f<around*|(|x,y,z|)>*dx*dy
  </equation*>

  <subparagraph|Integrazione per fili>

  <\equation*>
    <big|int><rsub|\<Pi\><rsub|x,y><around*|(|\<Omega\>|)>>dx*dy<big|int><rsub|\<Omega\><around*|(|x,y|)>>f<around*|(|x,y,z|)>*dz
  </equation*>

  <subsubsection|Cambio di variabile>

  (necessita di revisione)

  <\equation*>
    <big|int><rsub|\<Omega\>>f<around*|(|x|)>*dx=<big|int><rsub|\<Omega\><rprime|'>>f<around*|(|g<around*|(|y|)>|)>*<around*|\||det<around*|(|g<rprime|'><around*|(|y|)>|)>|\|>*dy
  </equation*>

  <\itemize>
    <item><math|g:\<Omega\>\<rightarrow\>\<Omega\><rprime|'>>

    <item><math|\<Omega\>,\<Omega\><rprime|'>> aperti

    <item><math|g\<in\>C<rprime|'>>

    <item><math|g> invertibile
  </itemize>

  \;

  <subsection|Inversione locale>

  Data <math|F<around*|(|x,y|)>=<around*|(|f<around*|(|x,y|)>,g<around*|(|x,y|)>|)>>

  <math|F<around*|(|x,y|)>> è localmente invertibile in
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> se il determinante Jacobiano in
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è non nullo

  <\equation*>
    <around*|\||J<around*|(|x<rsub|0>,y<rsub|0>|)>|\|>=<around*|\||<matrix|<tformat|<table|<row|<cell|f<rsub|x>>|<cell|g<rsub|x>>>|<row|<cell|f<rsub|y>>|<cell|g<rsub|y>>>>>>|\|>\<neq\>0
  </equation*>

  <with|font-series|bold|Metodo pratico>

  <\enumerate>
    <item>Determino <math|f<around*|(|x,y|)>> e <math|g<around*|(|x,y|)>>

    <item>Calcolo <math|f<rsub|x>,f<rsub|y>,g<rsub|x>,g<rsub|y>> e li
    inserisco nella matrice Jacobiana

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|f<rsub|x>>|<cell|g<rsub|x>>>|<row|<cell|f<rsub|y>>|<cell|g<rsub|y>>>>>>
    </equation*>

    <item>Calcolo il determinante e lo impongo uguale a 0. <math|f> sarà
    invertibile nei punti trovati.
  </enumerate>

  <subparagraph|Esempio 1>

  La trasformazione <math|F:R<rsup|2>\<in\>R<rsup|2>> definita ponendo
  <math|F<around*|(|x,y|)>=<around*|(|x*y,x<rsup|2>-y<rsup|2>|)>> è
  localmente invertibile nell'intorno di <math|<around*|(|1,1|)>> e
  <math|<around*|(|1,0|)>>?

  <\equation*>
    f<around*|(|x,y|)>=x*y<space|1em>f<rsub|x>=y<space|1em>f<rsub|y>=x
  </equation*>

  <\equation*>
    g<around*|(|x,y|)>=x<rsup|2>-y<rsup|2><space|1em>g<rsub|x>=2x<space|1em>g<rsub|y>=-2y
  </equation*>

  <\equation*>
    J=<matrix|<tformat|<table|<row|<cell|y>|<cell|2x>>|<row|<cell|x>|<cell|-2y>>>>>
  </equation*>

  <\equation*>
    <around*|\||J<around*|(|1,1|)>|\|>=det<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|-2>>>>>=-4<space|1em>\<Longrightarrow\><space|1em>si
  </equation*>

  <\equation*>
    <around*|\||J<around*|(|1,0|)>|\|>=det<matrix|<tformat|<table|<row|<cell|0>|<cell|2>>|<row|<cell|1>|<cell|0>>>>>=2<space|1em>\<Longrightarrow\><space|1em>si
  </equation*>

  <subparagraph|Esempio 2>

  La trasformazione <math|T<around*|(|x,y|)>=<around*|(|x<rsup|2>y,x*y<rsup|2>|)>>
  in <math|<around*|(|0,0|)>>

  <\equation*>
    f<around*|(|x,y|)>=x<rsup|2>y<space|1em>f<rsub|x>=2*x*y<space|1em>f<rsub|y>=x<rsup|2>
  </equation*>

  <\equation*>
    g<around*|(|x,y|)>=x*y<rsup|2><space|1em>g<rsub|x>=y<rsup|2><space|1em>g<rsub|y>=2*x*y
  </equation*>

  <\equation*>
    <around*|\||J<around*|(|0,0|)>|\|>=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>>>>>=0
  </equation*>

  Quindi non è localmente invertibile (ma è differenziabile..perché?)

  <subsection|Teorema del Dini>

  <\itemize>
    <item>Per esplicitare una funzione <math|f<around*|(|x,y|)>> rispetto
    alla variabile <math|y> (o alla <math|x>) è necessario che
    <math|f<rsub|y>\<neq\>0> <math|<around*|(|o f<rsub|x>\<neq\>0|)>>

    <item>Per applicare il Th. del Dini in un punto
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è necessario che

    <\equation*>
      <choice|<tformat|<table|<row|<cell|f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>\<neq\>0>>|<row|<cell|f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>\<neq\>0>>>>>
    </equation*>
  </itemize>

  <subsection|Direzione di massima pendenza>

  <\itemize>
    <item>Direzione di massima pendenza ascendente di <math|f> in
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>>

    <\equation*>
      \<nabla\>f<around*|(|x<rsub|0>,y<rsub|0>|)>=<matrix|<tformat|<table|<row|<cell|f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>>>|<row|<cell|f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>>>>>>
    </equation*>

    <item>Direzione di massima pendenza discendente di <math|f> in
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>>

    <\equation*>
      -\<nabla\>f<around*|(|x<rsub|0>,y<rsub|0>|)>=-<matrix|<tformat|<table|<row|<cell|f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>>>|<row|<cell|f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>>>>>>
    </equation*>
  </itemize>

  Se <math|=<around*|(|0,0|)>> non è definita (punto stazionario).

  La direzione della curva di livello di una funzione <math|f> in un punto
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è ortogonale alla direzione di
  massima pendenza.

  <subsection|Vettore normale>

  Il vettore normale di <math|f<around*|(|x,y|)>> si trova:

  <\itemize>
    <item>Per una superficie parametrica:

    <\equation*>
      f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>\<wedge\>f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>
    </equation*>

    <\equation*>
      <frac|\<partial\>*x|\<partial\>*s>\<wedge\><frac|\<partial\>*x|\<partial\>*t>
    </equation*>

    \;

    <item>Per una superficie cartesiana:

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>>>|<row|<cell|f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>>>|<row|<cell|-1>>>>>
    </equation*>
  </itemize>

  Per ottenere il versore normale è necessario dividere il vettore per la sua
  norma

  Se la superficie <math|S> è data implicitamente, come la serie di punti
  <math|<around*|(|x,y,z|)>> che soddisfano <math|F<around*|(|x,y,z|)>=0>,
  allora la normale nel punto <math|<around*|(|x,y,z|)>> alla superficie è
  data dal gradiente

  <\equation*>
    \<nabla\>F<around*|(|x,y,z|)>
  </equation*>

  <subsection|Piano tangente a superficie cartesiana>

  <\equation*>
    z=f<around*|(|x<rsub|0>,y<rsub|0>|)>+f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x<rsub|0>-x<rsub|0>|)>+f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y-y<rsub|0>|)>
  </equation*>

  <subsection|Piano tangente al sostegno di una superficie parametrica>

  Necessita di revisione!

  <\enumerate>
    <item>Calcolo <math|f<around*|(|x<rsub|0>|)>> se necessario

    <item>Calcolo il vettore normale alla superficie parametrica

    <\equation*>
      \<Phi\>u<matrix|<tformat|<table|<row|<cell|x<rsub|0>>>|<row|<cell|y<rsub|0>>>>>>\<wedge\>\<Phi\><rsub|v><matrix|<tformat|<table|<row|<cell|x<rsub|0>>>|<row|<cell|y<rsub|0>>>>>>=<around*|(|E<rsub|1>,E<rsub|2>,E<rsub|3>|)>
    </equation*>

    e se <math|= 0> la superfice è non regolare

    <item>Piano tangente = <math|E<rsub|1><around*|(|x-x<rsub|0>|)>+E<rsub|2><around*|(|y-y<rsub|0>|)>+E<rsub|3><around*|(|z-z<rsub|0>|)>>
  </enumerate>

  <subsection|Polinomio di Taylor>

  <subsubsection|Formula di ordine 1>

  <\equation*>
    f<around*|(|x<rsub|0>,y<rsub|0>|)>+f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x-x<rsub|0>|)>+f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y-y<rsub|0>|)>
  </equation*>

  <subsubsection|Formula di ordine 2>

  <\equation*>
    <text|(formula di ordine I)> \<noplus\>+<frac|1|2>*f<rsub|x*x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x-x<rsub|0>|)><rsup|2>+f<rsub|x*y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x-x<rsub|0>|)><around*|(|y-y<rsub|0>|)>+<frac|1|2>f<rsub|y*y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y-y<rsub|0>|)><rsup|2>
  </equation*>

  <subsection|Punti critici>

  Da Wikipedia: se il gradiente della funzione <math|f> è nullo in un punto
  <math|x> appartenente al dominio della funzione, allora <math|f> in
  <math|x> ha un punto critico. Il determinante dell'hessiana (detto
  semplicemente hessiano) in <math|x> è anche detto discriminante in
  <math|x>. Se questo determinante è zero allora <math|x> è chiamato punto
  critico degenere della <math|f>. Negli altri punti viene chiamato non
  degenere.

  \;

  Devo considerare i punti critici della funzione pondendo tutte le derivate
  parziali = 0. L'annullamento di tutte le derivate in
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è condizione necessaria (ma non
  sufficiente) affinché <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> sia un punto
  di minimo o di massimo.

  <\equation*>
    <choice|<tformat|<table|<row|<cell|f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>=0>>|<row|<cell|f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>=0>>>>>
  </equation*>

  \;

  A questo punto calcolo l'Hessiana nei punti trovati

  <\equation*>
    H=<matrix|<tformat|<table|<row|<cell|f<rsub|xx><around*|(|x<rsub|0>,y<rsub|0>|)>\<space\>>|<cell|f<rsub|xy><around*|(|x<rsub|0>,y<rsub|0>|)>>>|<row|<cell|f<rsub|yx><around*|(|x<rsub|0>,y<rsub|0>|)>>|<cell|f<rsub|yy><around*|(|x<rsub|0>,y<rsub|0>|)>>>>>>
  </equation*>

  con <math|f<rsub|xy>=f<rsub|yx>> (grazie al teorema di Schwarz)

  \;

  Adesso posso

  <\enumerate>
    <item>Calcolare il determinante di <math|H> e verificare:

    <\itemize>
      <item><math|det\<gtr\>0> e 1<degreesign> elemento \<gtr\> 0 allora
      <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è un punto di minimo

      <item><math|det \<gtr\>0> e 1<degreesign> elemento \<less\> 0 allora
      <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è un punto di massimo

      <item><math|det\<less\>0> allora <math|<around*|(|x<rsub|0>,y<rsub|0>|)>>
      è un punto di sella
    </itemize>

    <item>Calcolare <math|det<around*|(|H-\<lambda\>*I|)>> e trovare gli
    autovalori:

    <\itemize>
      <item>Se sono concordi \<less\> 0 allora ho un punto di massimo

      <item>Se sono concordi \<gtr\> 0 allora ho un punto di minimo

      <item>Se sono discordi ho una sella

      <item>Se uno di essi = 0 allora ho un punto degenere
    </itemize>
  </enumerate>

  <section|Appunti utili>

  <subsection|Discontinuità>

  <\description>
    <item*|Discontinuità di I specie (o di salto)>Il limite sinistro e destro
    della funzione sono entrambi finiti ma non coincidono.

    <item*|Discontinuità di II specie (o essenziale)>Uno dei due limiti è
    infinito o non esiste

    <item*|Disconinuità di III specie (o eliminabile)>Il limite destro e
    quello sinistro coincidono ma la funzione nel punto non assume lo stesso
    valore del limite.
  </description>

  <subsection|Derivate>

  <subsubsection|Derivate fondamentali>

  <\equation*>
    D<around*|(|<sqrt|x>|)>=<frac|1|2*<sqrt|x>>
  </equation*>

  <\equation*>
    D<around*|(|log<rsub|b><around*|(|x|)>|)>=<frac|log<rsub|b>e|x>=<frac|1|x*ln<around*|(|b|)>>
  </equation*>

  <subsubsection|Derivate di funzioni composte>

  <\equation*>
    D<around*|(|a<rsup|f<around*|(|x|)>>|)>=a<rsup|f<around*|(|x|)>>\<cdot\>f<rprime|'><around*|(|x|)>\<cdot\>ln<around*|(|a|)>
  </equation*>

  <\equation*>
    D<around*|(|f<around*|(|x|)><rsup|g<around*|(|x|)>>|)>=f<around*|(|x|)><rsup|g<around*|(|x|)>>\<cdot\><around*|[|g<rprime|'><around*|(|x|)>\<cdot\>ln<around*|(|f<around*|(|x|)>|)>+g<around*|(|x|)>\<cdot\><frac|f<rprime|'><around*|(|x|)>|f<around*|(|x|)>>|]>
  </equation*>

  <\equation*>
    D<around*|(|x<rsup|f<around*|(|x|)>>|)>=x<rsup|f<around*|(|x|)>>\<cdot\><around*|[|f<rprime|'><around*|(|x|)>\<cdot\>ln<around*|(|x|)>+<frac|f<around*|(|x|)>|x>|]>
  </equation*>

  <subsection|Formule trigonometriche>

  <subsubsection|Formule di addizione e sottrazione>

  <\equation*>
    sen<around*|(|\<alpha\>\<pm\>\<beta\>|)>=sen<around*|(|\<alpha\>|)>*cos<around*|(|\<beta\>|)>\<pm\>sen<around*|(|\<beta\>|)>*cos<around*|(|\<alpha\>|)>
  </equation*>

  <\equation*>
    cos<around*|(|\<alpha\>\<pm\>\<beta\>|)>=cos<around*|(|\<alpha\>|)>*cos<around*|(|\<beta\>|)>\<mp\>sen<around*|(|\<alpha\>|)>*sen<around*|(|\<beta\>|)>
  </equation*>

  <\equation*>
    tan<around*|(|\<alpha\>\<pm\>\<beta\>|)>=<frac|tan<around*|(|\<alpha\>|)>\<pm\>tan<around*|(|\<beta\>|)>|1\<mp\>tan<around*|(|\<alpha\>|)>*tan<around*|(|\<beta\>|)>>
  </equation*>

  <subsubsection|Formule di duplicazione>

  <\equation*>
    sen<around*|(|2*\<alpha\>|)>=2*sen<around*|(|\<alpha\>|)>cos<around*|(|a|)>
  </equation*>

  <\equation*>
    cos<around*|(|2*\<alpha\>|)>=cos<rsup|2><around*|(|\<alpha\>|)>-sen<rsup|2><around*|(|\<alpha\>|)>=1-2*sen<rsup|2><around*|(|\<alpha\>|)>=2*cos<rsup|2><around*|(|a|)>-1
  </equation*>

  <\equation*>
    tan<around*|(|2*\<alpha\>|)>=<frac|2*tan<around*|(|\<alpha\>|)>|1-tan<rsup|2><around*|(|\<alpha\>|)>>
  </equation*>

  <subsubsection|Formule di bisezione>

  <\equation*>
    sen<around*|(|<frac|\<alpha\>|2>|)>=\<pm\><sqrt|<frac|1-cos<around*|(|\<alpha\>|)>|2>>
  </equation*>

  <\equation*>
    cos<around*|(|<frac|\<alpha\>|2>|)>=\<pm\><sqrt|<frac|1+cos<around*|(|\<alpha\>|)>|2>>
  </equation*>

  <\equation*>
    tan<around*|(|<frac|\<alpha\>|2>|)>=\<pm\><sqrt|<frac|1-cos<around*|(|\<alpha\>|)>|1+cos<around*|(|\<alpha\>|)>>>
  </equation*>

  <subsubsection|Formule parametriche>

  <\equation*>
    sen<around*|(|\<alpha\>|)>=<frac|2*tan<around*|(|<frac|\<alpha\>|2>|)>|a+tan<rsup|2><around*|(|<frac|\<alpha\>|2>|)>>
  </equation*>

  <\equation*>
    cos<around*|(|\<alpha\>|)>=<frac|1-tan<rsup|2><around*|(|<frac|\<alpha\>|2>|)>|1+tan<rsup|2><around*|(|<frac|\<alpha\>|2>|)>>
  </equation*>

  <\equation*>
    tan<around*|(|\<alpha\>|)>=<frac|2*tan<around*|(|<frac|\<alpha\>|2>|)>|1-tan<rsup|2><around*|(|<frac|\<alpha\>|2>|)>>
  </equation*>

  <subsection|Cambi di coordinate>

  <subsubsection|Coordinate polari>

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x=\<rho\>*cos<around*|(|\<theta\>|)>>>|<row|<cell|y=\<rho\>*sin<around*|(|\<theta\>|)>>>>>>
  </equation*>

  <\equation*>
    <around*|\||J|\|>=\<rho\>
  </equation*>

  <subparagraph|Coordinate polari centrate in <math|P<rsub|0>>>

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x=x<rsub|0>+\<rho\>*cos<around*|(|\<theta\>|)>>>|<row|<cell|y=y<rsub|0>+\<rho\>*sin<around*|(|j|)>>>>>>
  </equation*>

  <subsubsection|Coordinate sferiche>

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x=\<rho\>*sin<around*|(|\<theta\>|)>*cos<around*|(|\<varphi\>|)>>>|<row|<cell|y=\<rho\>*sin<around*|(|\<theta\>|)>*sin<around*|(|\<varphi\>|)>>>|<row|<cell|z=\<rho\>*cos<around*|(|\<theta\>|)>>>>>>
  </equation*>

  <\equation*>
    <around*|\||J|\|>=\<rho\><rsup|2>*sin<around*|(|\<theta\>|)>
  </equation*>

  <subsubsection|Coordinate cilindriche>

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x=\<rho\>
    cos\<theta\>>>|<row|<cell|y=\<rho\>*sin\<theta\>>>|<row|<cell|z=h>>>>>
  </equation*>

  <\equation*>
    <around*|\||J|\|>=\<rho\>
  </equation*>

  <subsection|Funzioni utili>

  <subsubsection|Circonferenza>

  <subparagraph|Equazione cartesiana>

  Centro <math|C<around*|(|x<rsub|0>,y<rsub|0>|)>> e raggio <math|r>

  <\equation*>
    <around*|(|x-x<rsub|0>|)><rsup|2>+<around*|(|y-y<rsub|0>|)><rsup|2>=r<rsup|2>
  </equation*>

  <with|font-series|bold|Equazione cartesiana in forma canonica>

  <\equation*>
    x<rsup|2>+y<rsup|2>-2*x<rsub|0>*x-2*y<rsub|0>*y+c=0
  </equation*>

  dove <math|c=a<rsup|2>+b<rsup|2>-r<rsup|2>>

  <with|font-series|bold|Condizione di realtà:>

  <\equation*>
    x<rsub|0><rsup|2>+y<rsub|0><rsup|2>-c\<gtr\>0
  </equation*>

  <subparagraph|Equazione in coordinate polari>

  <\equation*>
    \<rho\>=r
  </equation*>

  <subparagraph|Equazione parametrica>

  <\equation*>
    C:<choice|<tformat|<table|<row|<cell|x=x<rsub|0>+R*cos<around*|(|t|)>>>|<row|<cell|y=y<rsub|0>+R*sin<around*|(|t|)>>>>>>t\<in\><around*|[|0,2*\<pi\>|]>
  </equation*>

  <subsubsection|Seno iperbolico>

  <\equation*>
    senh<around*|(|x|)>=<frac|e<rsup|x>-e<rsup|-x>|2>
  </equation*>

  <\equation*>
    D<around*|(|sinh<around*|(|x|)>|)>=cosh<around*|(|x|)>
  </equation*>

  <\equation*>
    cosh<rsup|2><around*|(|x|)>-sinh<rsup|2><around*|(|x|)>=1
  </equation*>

  La funzione è sempre crescente e si annulla nel punto <math|x=0>

  <subsubsection|Coseno iperbolico>

  <\equation*>
    cosh<around*|(|x|)>=<frac|e<rsup|x>-e<rsup|-x>|2>
  </equation*>

  <\equation*>
    D<around*|(|cosh<around*|(|x|)>|)>=sinh<around*|(|x|)>
  </equation*>

  <\equation*>
    cosh<rsup|2><around*|(|x|)>-sinh<rsup|2><around*|(|x|)>=1
  </equation*>

  La funzione è sempre positiva

  <subsection|Limiti notevoli>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|ln<around*|(|1+f<around*|(|x|)>|)>|f<around*|(|x|)>>=1
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|log<rsub|a><around*|(|1+f<around*|(|x|)>|)>|f<around*|(|x|)>>=<frac|1|ln<around*|(|a|)>>
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|e<rsup|f<around*|(|x|)>>-1|f<around*|(|x|)>>=0
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|a<rsup|f<around*|(|x|)>-1>|f<around*|(|x|)>>=0
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>\<pm\>\<infty\>><around*|(|1+<frac|1|f<around*|(|x|)>>|)><rsup|f<around*|(|x|)>>=e
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|<around*|(|1+f<around*|(|x|)>|)><rsup|c>-1|f<around*|(|x|)>>=c
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|tan<around*|(|f<around*|(|x|)>|)>|f<around*|(|x|)>>=1
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|arcsin<around*|(|f<around*|(|x|)>|)>|f<around*|(|x|)>>=1
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|arctan<around*|(|f<around*|(|x|)>|)>|f<around*|(|x|)>>=1
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|sinh<around*|(|f<around*|(|x|)>|)>|f<around*|(|x|)>>=1
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|cosh<around*|(|f<around*|(|x|)>|)>-1|f<around*|(|x|)><rsup|2>>=0
  </equation*>

  <\equation*>
    lim<rsub|f<around*|(|x|)>\<rightarrow\>0><frac|tanh<around*|(|f<around*|(|x|)>|)>|f<around*|(|x|)>>=1
  </equation*>

  <subsection|Integrali>

  <subsubsection|Integrazione per parti>

  <\equation*>
    <big|int>f<around*|(|x|)>*g<rprime|'><around*|(|x|)>*dx=f<around*|(|x|)>*g<around*|(|x|)>-<big|int>f<rprime|'><around*|(|x|)>*g<around*|(|x|)>*dx+C
  </equation*>

  <\equation*>
    <big|int><rsub|a><rsup|b>f<around*|(|x|)>*g<rprime|'><around*|(|x|)>*dx=f<around*|(|b|)>*g<around*|(|b|)>-f<around*|(|a|)>g<around*|(|a|)>-<big|int><rsub|a><rsup|b>f<rprime|'><around*|(|x|)>*g<around*|(|x|)>*dx
  </equation*>

  <subsubsection|Integrali utili>

  <\equation*>
    <big|int>f<rsup|n><around*|(|x|)>*f<rprime|'><around*|(|x|)>*dx=<frac|f<rsup|n+1><around*|(|x|)>|n+1>+C
  </equation*>

  <\equation*>
    <big|int>a<rsup|f<around*|(|x|)>>*f<rprime|'><around*|(|x|)>*dx=<frac|a<rsup|f<around*|(|x|)>>|ln<around*|(|a|)>>+C
  </equation*>

  <\equation*>
    <big|int>sin<rsup|2><around*|(|x|)>*dx=<frac|1|2><around*|[|x-sin<around*|(|x|)>*cos<around*|(|x|)>|]>+C
  </equation*>

  <\equation*>
    <big|int>cos<rsup|2><around*|(|x|)>*dx=<frac|1|2><around*|[|x+sin<around*|(|x|)>*cos<around*|(|x|)>|]>+C
  </equation*>

  <\equation*>
    <big|int>sin<around*|(|t|)>*cos<around*|(|t|)>*dt=-<frac|1|2>*cos<rsup|2><around*|(|t|)>+C
  </equation*>

  Da verificare:

  <\equation*>
    <big|int><frac|1|sin<rsup|2><around*|(|x|)>>*dx=<big|int><around*|(|1+cotan<rsup|2><around*|(|x|)>|)>*dx=-cotg<around*|(|x|)>+C
  </equation*>

  <subsubsection|Sostituzioni utili>

  <\equation*>
    <choice|<tformat|<table|<row|<cell|<sqrt|x<rsup|2>+1>\<Longrightarrow\>x=sinh<around*|(|t|)>>>|<row|<cell|<sqrt|x<rsup|2>-1>\<Longrightarrow\>x=cosh<around*|(|t|)>>>|<row|<cell|<sqrt|1-x<rsup|2>>\<Longrightarrow\>x=<choice|<tformat|<table|<row|<cell|sin<around*|(|t|)>>>|<row|<cell|cos<around*|(|t|)>>>>>>>>|<row|<cell|<sqrt|-1-x<rsup|2>>\<Longrightarrow\><text|non
    ha senso in ><with|math-font|Bbb*|R>>>>>>
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
    <associate|page-orientation|portrait>
    <associate|par-columns|1>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|1.3|3>>
    <associate|auto-11|<tuple|1.3.1|3>>
    <associate|auto-12|<tuple|1.4|4>>
    <associate|auto-13|<tuple|1.5|4>>
    <associate|auto-14|<tuple|1|4>>
    <associate|auto-15|<tuple|1.6|4>>
    <associate|auto-16|<tuple|1.7|4>>
    <associate|auto-17|<tuple|1.8|5>>
    <associate|auto-18|<tuple|1.9|5>>
    <associate|auto-19|<tuple|1.10|5>>
    <associate|auto-2|<tuple|1.1|3>>
    <associate|auto-20|<tuple|2|5>>
    <associate|auto-21|<tuple|3|6>>
    <associate|auto-22|<tuple|1.11|6>>
    <associate|auto-23|<tuple|4|6>>
    <associate|auto-24|<tuple|1.12|6>>
    <associate|auto-25|<tuple|1.12.1|6>>
    <associate|auto-26|<tuple|1.12.2|6>>
    <associate|auto-27|<tuple|5|6>>
    <associate|auto-28|<tuple|6|6>>
    <associate|auto-29|<tuple|1.12.3|7>>
    <associate|auto-3|<tuple|1.1.1|3>>
    <associate|auto-30|<tuple|1.13|7>>
    <associate|auto-31|<tuple|7|7>>
    <associate|auto-32|<tuple|8|7>>
    <associate|auto-33|<tuple|1.14|8>>
    <associate|auto-34|<tuple|1.15|8>>
    <associate|auto-35|<tuple|1.16|8>>
    <associate|auto-36|<tuple|1.17|8>>
    <associate|auto-37|<tuple|1.18|8>>
    <associate|auto-38|<tuple|1.19|8>>
    <associate|auto-39|<tuple|1.19.1|8>>
    <associate|auto-4|<tuple|1.1.2|3>>
    <associate|auto-40|<tuple|1.19.2|9>>
    <associate|auto-41|<tuple|1.20|9>>
    <associate|auto-42|<tuple|2|9>>
    <associate|auto-43|<tuple|2.1|9>>
    <associate|auto-44|<tuple|2.2|9>>
    <associate|auto-45|<tuple|2.2.1|10>>
    <associate|auto-46|<tuple|2.2.2|10>>
    <associate|auto-47|<tuple|2.3|10>>
    <associate|auto-48|<tuple|2.3.1|10>>
    <associate|auto-49|<tuple|2.3.2|10>>
    <associate|auto-5|<tuple|1.1.3|3>>
    <associate|auto-50|<tuple|2.3.3|10>>
    <associate|auto-51|<tuple|2.3.4|10>>
    <associate|auto-52|<tuple|2.4|10>>
    <associate|auto-53|<tuple|2.4.1|11>>
    <associate|auto-54|<tuple|9|11>>
    <associate|auto-55|<tuple|2.4.2|11>>
    <associate|auto-56|<tuple|2.4.3|11>>
    <associate|auto-57|<tuple|2.5|11>>
    <associate|auto-58|<tuple|2.5.1|11>>
    <associate|auto-59|<tuple|10|11>>
    <associate|auto-6|<tuple|1.1.4|3>>
    <associate|auto-60|<tuple|11|11>>
    <associate|auto-61|<tuple|12|11>>
    <associate|auto-62|<tuple|2.5.2|11>>
    <associate|auto-63|<tuple|2.5.3|12>>
    <associate|auto-64|<tuple|2.6|12>>
    <associate|auto-65|<tuple|2.7|12>>
    <associate|auto-66|<tuple|2.7.1|12>>
    <associate|auto-67|<tuple|2.7.2|13>>
    <associate|auto-68|<tuple|2.7.3|?>>
    <associate|auto-69|<tuple|1.1.7.3|?>>
    <associate|auto-7|<tuple|1.1.5|3>>
    <associate|auto-70|<tuple|3.2.3|?>>
    <associate|auto-8|<tuple|1.1.6|3>>
    <associate|auto-9|<tuple|1.2|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Come risolvere gli esercizi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Insiemi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|2tab>|1.1.1<space|2spc>Insieme a stella
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1.1.2<space|2spc>Insieme connesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.1.3<space|2spc>Insieme semplicemente
      connesso <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|1.1.4<space|2spc>Insieme aperto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|1.1.5<space|2spc>Insieme chiuso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|1.1.6<space|2spc>Insieme compatto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Derivata direzionale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Limiti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|1.3.1<space|2spc>Restrinzione su retta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Determinare la
      differenziabilità <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Calcolare il potenziale di
      una forma differenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      Metodo manuale per il calcolo della primitiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Lunghezza di una curva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Integrale curvilineo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Integrale di campo
      (integrale di linea) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|1.9<space|2spc>Area della porzione di
      grafico (o superficie di <with|mode|<quote|math>|f<around*|(|x,y|)>>)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Integrale superficiale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      Esempio <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.15fn>

      Esempio <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.11<space|2spc>Volume
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      Esempio <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.12<space|2spc>Integrale su un insieme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|1.12.1<space|2spc>In 2 variabili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|2tab>|1.12.2<space|2spc>In 3 variabili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      Integrazione per strati <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.15fn>

      Integrazione per fili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28><vspace|0.15fn>

      <with|par-left|<quote|2tab>|1.12.3<space|2spc>Cambio di variabile
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|1.13<space|2spc>Inversione locale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      Esempio 1 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.15fn>

      Esempio 2 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.14<space|2spc>Teorema del Dini
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|1.15<space|2spc>Direzione di massima
      pendenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|1.16<space|2spc>Vettore normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|1.17<space|2spc>Piano tangente a superficie
      cartesiana <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|1.18<space|2spc>Piano tangente al sostegno
      di una superficie parametrica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|1.19<space|2spc>Polinomio di Taylor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|2tab>|1.19.1<space|2spc>Formula di ordine 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|2tab>|1.19.2<space|2spc>Formula di ordine 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|1.20<space|2spc>Punti critici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      2<space|2spc>Appunti utili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Discontinuità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Derivate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|2tab>|2.2.1<space|2spc>Derivate fondamentali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|2.2.2<space|2spc>Derivate di funzioni
      composte <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Formule trigonometriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Formule di addizione e
      sottrazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|2.3.2<space|2spc>Formule di duplicazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|2tab>|2.3.3<space|2spc>Formule di bisezione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|2tab>|2.3.4<space|2spc>Formule parametriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Cambi di coordinate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|2tab>|2.4.1<space|2spc>Coordinate polari
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      Coordinate polari centrate in <with|mode|<quote|math>|P<rsub|0>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54><vspace|0.15fn>

      <with|par-left|<quote|2tab>|2.4.2<space|2spc>Coordinate sferiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|2.4.3<space|2spc>Coordinate cilindriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Funzioni utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|2tab>|2.5.1<space|2spc>Circonferenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      Equazione cartesiana <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59><vspace|0.15fn>

      Equazione in coordinate polari <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60><vspace|0.15fn>

      Equazione parametrica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61><vspace|0.15fn>

      <with|par-left|<quote|2tab>|2.5.2<space|2spc>Seno iperbolico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|2tab>|2.5.3<space|2spc>Coseno iperbolico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Limiti notevoli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Integrali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|2tab>|2.7.1<space|2spc>Integrazione per parti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|2tab>|2.7.2<space|2spc>Integrali utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|2tab>|2.7.3<space|2spc>Sostituzioni utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|1.99.2>

<style|<tuple|article|italian>>

<\body>
  <doc-data|<doc-title|Scritto analisi 2>>

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
  <math|\<sigma\><around*|(|t|)>\<equiv\>x<rsub|0><space|1em>\<forall\>t\<in\><around*|[|0,1|]>>

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
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>>

    <item>Calcolo le derivate parziali utilizzando il limite, verificando che
    entrambe siano <math|\<less\>\<infty\>>

    <\equation*>
      lim<rsub|h\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+h,y<rsub|0>|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|h>
    </equation*>

    <\equation*>
      lim<rsub|k\<rightarrow\>0><frac|f<around*|(|x<rsub|0>,y<rsub|0>+k|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|k>
    </equation*>

    <with|font-series|bold|Teorema del differenziale totale:> se <math|A> ha
    derivate parziali continue in un intorno di
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è differenziabile in quel punto

    <item>Verifico la differenziabilità

    <\equation*>
      lim<rsub|<around*|(|h,k|)>\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+h,y<rsub|0>+k|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>-f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>-f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>|<sqrt|h<rsup|2>+k<rsup|2>>>
    </equation*>
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

  <subsection|Integrale curvilineo>

  <\equation*>
    <big|int><rsub|\<gamma\>>f<around*|(|x,y|)>=<big|int><rsub|a><rsup|b>f<around*|(|\<gamma\><around*|(|t|)>|)>**<around*|\<\|\|\>|<wide|\<gamma\><around*|(|t|)>|\<dot\>>|\<\|\|\>>*dt
  </equation*>

  <subsection|Integrale di campo (integrale di linea)>

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

  <subsection|Piano tangente a superficie cartesiana>

  <\equation*>
    z=f<around*|(|x<rsub|0>,y<rsub|0>|)>+f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x<rsub|0>-x<rsub|0>|)>+f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y-y<rsub|0>|)>
  </equation*>

  <subsection|Piano tangente al sostegno di una superficie parametrica>

  Necessita di revisione!

  <\enumerate>
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

    Se la forma non è chiusa, significa che non può essere esatta.

    <item>Se il dominio è semplicemente connesso, essendo una forma chiusa è
    anche esatta e quindi la forma è integrabile

    <item>Se il dominio non è semplicemente connesso, devo calcolare
    manualmente una primitiva e verificare che <math|\<nabla\>F=A>
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

  \;

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

  <subsection|Massimi e minimi>

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

  con <math|f<rsub|xy>=f<rsub|yx>> (perché??)

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

  <subsection|Prodotto vettore (o prodotto esterno)>

  Calcolo in <math|R<rsup|3>>

  <\equation*>
    a\<wedge\>b=<matrix|<tformat|<table|<row|<cell|a<rsub|1>>>|<row|<cell|a<rsub|2>>>|<row|<cell|a<rsub|3>>>>>>\<wedge\><matrix|<tformat|<table|<row|<cell|b<rsub|1>>>|<row|<cell|b<rsub|2>>>|<row|<cell|b<rsub|3>>>>>>=
  </equation*>

  <\equation*>
    = <matrix|<tformat|<table|<row|<cell|<around*|\||<matrix|<tformat|<table|<row|<cell|a<rsub|2>>|<cell|b<rsub|2>>>|<row|<cell|a<rsub|3>>|<cell|b<rsub|3>>>>>>|\|>>>|<row|<cell|-<around*|\||<matrix|<tformat|<table|<row|<cell|a<rsub|1>>|<cell|b<rsub|1>>>|<row|<cell|a<rsub|3>>|<cell|b<rsub|3>>>>>>|\|>>>|<row|<cell|<around*|\||<matrix|<tformat|<table|<row|<cell|a<rsub|1>>|<cell|b<rsub|1>>>|<row|<cell|a<rsub|2>>|<cell|b<rsub|2>>>>>>|\|>>>>>>=<matrix|<tformat|<table|<row|<cell|a<rsub|2>*b<rsub|3>-a<rsub|3>*b<rsub|2>>>|<row|<cell|-<around*|(|a<rsub|1>*b<rsub|3>-a<rsub|3>*b<rsub|1>|)>>>|<row|<cell|a<rsub|1>*b<rsub|2>-a<rsub|2>*b<rsub|1>>>>>>
  </equation*>

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

  <image|<tuple|<#89504E470D0A1A0A0000000D49484452000001840000011808060000005C1981EB0000000473424954080808087C086488000000097048597300000EC400000EC401952B0E1B0000200049444154789CECBD7B745BC77DEFFBC593009F200450A4489A4F596FC9924C598A7D6CD589EDC876E3CA751B578E93EBF4B889DB736E73E39ED35A76DCBA8DD3DC384D93D8D651624B2B8962A557AEF5AA6C4655252B121D4A84F810298AA401F121900449802088F77BDF3F286C6343200950006604CE672DAD256C6C623E98BD670FF6EC99DF4FC4711C070683C1602C7AC4A405180C06834107AC436030180C0600D62130180C06E306AC436030180C0600D62130180C06E306AC436030180C0600D62130180C06E306AC436030180C0600D62130180C06E306AC436030180C0600401A6F636B6B6BA63D180C06839141366FDE7CD3B6B81DC26C3B33180C06E3F667B61FFD6CC888C1603018005887C06030188C1BB00E81C1603018005887C06030188C1BB00E81C1603018005887C06030188C1BB00E81C1603018005887C06030188C1BCCBA302D1176EEDC8992929254B930180C062386DF5FB3A056938FD222055E7DF555949797A7ADAC5BEA10BEFAD5AF62E7CE9DA9726130180C4614D39E009E79F722FEE189B5D878872AEDE5B121230683C1A094B1692F00A0B4489191F25887C060301894629AF6422A16A1A4202723E5B10E81C160302865C4E64169910212B12823E5B10E81C160302865D4E6C1B22265C6CA631D0283C16050CA88CD8365C5AC436030188C45CFA8CD837215EB10180C06635133E5F6C3ED0F61992A33338C802CEC10743A1D3A3B3B496B50E3D1D9D9099D4E475A831A8F5FFDEA57F8C33FFC43BCF7DE7B443D7A7B7BD1D4D444D4010006060670E6CC19D21AD4788C8C8CA0B1B191B406464646F0E147331E99BC43B8A5856934B271E346D20A00E8F158BD7A35690500F478482412FCF6B7BFC5A38F3E4AD463F9F2E5A8ABAB23EA000077DC71072A2A2A486B50E351565606AD564B5A03656565502FDF841CB3114BF23333E514C8C20E412AA5E32B310F21B478884422048341D21A904824904824A43598470C62B11872B99CB406C46231C69D2194A994C8CC84D31BE566B0AC8C60B3D960B7DB496B50E361B7DB61B3D9486B50E3110C06A156AB496BC0E974C26AB592D680DBED86C56221AD418D87D7EBC5C4C404690D78BD5E18474D191D2E02B2B043309BCD5434345A3CAC562BCC6633690D6A3C82C1201501196D361BC6C7C7496BC0E17060747494B406351E6EB71BC3C3C3A435E076BB61338F65F4813290854346CB972F27AD00801E8FEAEA6AD20A00E8F1502814E8EDED25AD41C57839002C5DBA144B972E25AD418D875AADA6E20E52555C8C7E94E0517687C06030188B1BB3C3876088C332D621DC1A3D3D3D30180CA435A8F130180CE8E9E921AD418D87C7E3C1DAB56B496B606868888A69C9269309ADADADA435A8F1B0582CB870E102690DF40E8CA0C4733DE3CF10B26EC8A8B2B2122251269FCBD3ED515656068EE3486B50E32197CB313434445A03252525282E2E26AD81E2E262E4E6E692D6A0C6A3B0B0102B56AC20AD015B48067F7E298A94B28C969B751D427E7E3E690500F478E4E5E5915600408F87442281C3E120AD01A55209A532B3BFFEE2A15028A05064F6C125CD1E72B99C8A69A7264700259A25192F37EB868CBC5E2F7C3E1F690D6A3C7C3E1FBC5E2F690D6A3CC2E130151762BFDF0F8FC7435A038140006EB79BB406351EC160102E978BB4064C532E9411F80D95751D022D63F7B478D032764F8B077B8620647474948AB17B5A3C687986303E61468EF55AC6CBCDBA21235A4246D0E2B166CD1AD20A00E8F1C8CBCB834EA7C373CF3D47D4839669C9555555A8AAAA22AD418D476969294A4B4B893A04431C46FD0AFCD9F6F5192F3BEBEE10180C06E3766674DA8330C7A12283791022645D8730303000A3D1485A831A0FA3D188818101D21AD47878BD5E2A82CA8D8D8D41AFD793D680C562A162288F160F9BCD86AEAE2EA20EA6692FE4210FA647D890D12DA3542AA90892458B8742A140281422AD418D87582CA6E261AE5C2EA7E2E1B64C26A362BA272D1E52A994F88CB8E1293754F90AA80A0B325E76D6DD219496965211BE96160FAD564B7C4C94260FB95C3E6BCC1C914824583BD2D1D181BABA3AD4D5D5CDF90038DE7EF36D1B1E1EA6227C455151111563F7B478E4E7E7A3B6B696A88369DA8B12B58A8847D6DD2130180B85E3384187F0F2CB2F63F7EEDD0080575E7905C78F1F8FFB77F1F64B741B83118BD1EAC61D6A32774B597787404BA6325A3C68C954468B87D3E9C4B66DDB12DAB7A5A5053B77EEC4CE9D3BE79C8A186FBFF9B68D8D8DB18C69147A90CE98C60118B4B8A111BB8978A4B543B0582C3874E810FFFACC9933824893FBF6EDE3FF1F7BC13870E000BFB02BF62035363662646404C0CC82A703070ECCEA105D466F6FAFE0A43B74E8101F83DD62B1E0E8D1A302D7E887A0C9BA36343460FDFAF5025787C321706D6A6A12741A7BF6EC11B8465F300E1D3AC4AFB04DC6359668D781810141BD1E3D7A54E01A7DEC9A9A9A663D7689B8AE5FBF1E0D0D0D73BAEA743A41BDEEDBB74FE01A7DEC8E1E3DCA1FBB645C6389761D1919C1E38F3FCEBF77F7DD77636A6A0ABB76ED82DBED161CBBE80EDF66B3E1F0E1C3D8B56B176C361B060606B07EFD7A14151561D7AE5DD8B66D1B2C160B6C361BC462315E7DF555747474E0BEFBEE9BD3B5B3B35350AF070E1C10B826DA26627F9CCC551FD1F59AC9F65B535383071F7C704ED74CB4DF5832DD7E27EC5E944FFC1EEB965763C78E1D99FF21C5C5E1D2A54BF136DFC4E1C38713DA8FC1A085F7DE7B8F03C0EDD9B327EEFBD14D42A3D170939393DCE4E424A7D56A67FDCC78FB25BA8DC188E6F7060BF7F84FCF736E5F30ADE5CC768DCFBA6708168B0562B198784C735A3CAC562BC2E130341A0DF3C04C88844413E4343434F0BFE4B66CD992D47EF36DBBEFBEFB303E3E4E3C0780C3E180D3E944595919F3C04C621AABD54AEC81FF80C585D22205B8A00FC31399F7C8BA0EC1E170402A9512BF10D3E2E172B9100C06895F8869F10885422828883F9D2FF24059241281E338BCFEFAEB78EAA9A700001F7CF081603F2E2A726BBCFDE6DBB67FFF7ED8ED76E21D82CFE783CD66237E21A6C5C3EFF7636A6A8A5887D06F71A1469347CC23EB3A849A9A1AD20A00E8F1A8ACAC24AD00801E0F8542816BD7E22FF8E162C2736FDCB871D67DE7DB2FD16DA4D16834C43B699A3C542A15542A15B1F2072C2E7C615509318FAC9B65C4603018B7232E7F1013762F6A34E416C6655D87D0DEDE8EEEEE6ED21AD478747777A3BDBD9DB406351E2E970B0D0D0DB7F419B177120B41AFD7E3E2C58BB7FC39B7CAD0D010CE9F3F4F5A831A8FB1B1319C3E7D9A48D90366173800359A3C621E593764B46AD52A2A3295D1E2515F5F4F45A6325A3C944A25AE5CB9425A0355555554AC545EB66C19152BEA69F1D06834D8BA752B91B2072C2EE4E548B1B45081602E198FACEB1068C8BA04D0E3919393435A01003D1E34C532A201994C06992CB3691A69F6904AA5904AC95C16076E3C5026E9917543464EA7938A8C47B478B85C2E389D4ED21AD478CC35CB2893783C1ED8ED76D21AF07ABD989E9E26AD418D4764760F09FA2D2ED4DEE8104879645D8760341A613299486B50E3613299A808C34D8B87DFEFA72288DAC4C404060707496B606A6A8A8ACC7EB478D8ED76F4F5F565BCDC5098C3F549376AB579443DB26EC868D5AA55A41500D0E3515F5F4F5A01003D1E343D43A081B2B232E273FF69F22035FD75C4E6813F14E6878C487964DD1D0283C160DC6EF49B5D908845C4A29C46C8BA0E41AFD753712B4E8BC7E0E0201599B968F1F07ABD58B97225690D0C0F0F5391216C7C7C9C8AA8BCB47858AD56B4B5B565BCDC018B0B95C5B99049C4443DB26EC848ABD5422C26DFCFD1E2A156AB110E87496B50E321954A313131415A032A958A8A0C610505055464F6A3C523373797C874E07E8B53B0208D9447D6750824979D47438B47616121690500F47848A55258AD56D21AC8CFCF27AD0060E6C24343C7448B8742A12032657CC0E2C2931B8B897B90FF09CB6030188B9829B71F36778068C88A0859D721D092A98C160F5A3295D1E2315BC6B4FDFBF743ABD5A2A4A404BFFCE52F67FDFB85E44F8E771EC4265021052D99CA68F1209131ADDF3CB35E2932E59494070088B838F1045A5B5BB179F3E679FFF8C89123D8B973675AC4188C7470F0E0413CF3CC33D8B3670F5E78E1057E7B7171314E9F3E0D8EE3F0D0430FCD3AACF4D8638FE1C9279F04001C3B760CC78F1F4F781B83118F7F6F1DC6F1CBA3F8D5D767CFB9916A66BBC667DD3304066321949797432C1683E3382C5BB66CD6FD5A5A5AF8348A2FBDF45252DB188C7844AF50264D5A878C9C4EA76098A0A7A707636363FCEBE8E88646A3519003B5B9B919C16010C04CCEDAAEAE2EFEBDAEAE2ED86C360040301844737333FF5E4B4B0B3A3A3AE2963136362698EAA7D3E9F8700A4EA753108DB3A7A787CFD7BA10D7C84AE56857AFD72B70D5EBF582D5BB1F7FFCB1C0357A9AA64EA783D7EB4DDAB5A3A3032D2D2D715D2D168BA05EDBDBDB05AED1C74EAFD7CF7AEC12718DAC549ECB7560604050AFE7CF9F17B8461FBBF6F676FED825E3EA7038F0B9CF7DEE26D79FFEF4A7D8B16307BEF18D6FE0CD37DF0430739E455C23E799CD6643515111BEF9CD6FF20F4123C73C9253D962B1A0A4A484CFA95C59597993ABD96CE6A7E2CED526A2EBB5B9B999AFD764DAC4C0C080E03C8B2EC3603008CEBBE87ACD64FBB55AAD30180C73BA66A2FD1A8D46FCE77FFE675CD774B5DFD141032A728302D7C84AE558D77493D63B04A9542A586DA752A9A0542AF9D7D1D9A2F2F2F204D312B55A2D1F2D542E97A3B8F8B327F0C5C5C57C70309148248892A8542A0581C3A2CB502A9582889B1A8D860F20159BDD4CA5520902B225EB1A2927DA552291085C0B0B0B0501BD4A4B4B05AED1D152351A0D3F2D2F1957A5522998CE17ED9A939323A857B55A2D708D3E7685858582590FB165A4C23536C6D0D2A54B05AED133B7D46A357FEC9271158BC570BBDD37B9FEC55FFC058E1C3902BBDD8E6F7CE31BF8F4D34F515C5CCCBB46CE33954A85E9E9697CEF7BDFC317BFF845FE3BE5E7E7E3E0C18358B97225727272C0711CA6A7A771F0E0416CDFBE7D41AE797979827359ABD5F2F59A4C9B282828104C818E2E2327270779799FFD3A8DAE5712ED772ED74CB5DFE8FA4877FBF506423079C478BCE4B3737B2ED774C39E21301615733D433875EA14C462313EFFF9CFCF1A58ECD1471FE5D3601E3E7C18274E9C48781B8311CB65A30D2F1FBD825F3CD7004D7EE62202B367080CC61CFCE0073FC08E1D3B00006FBCF106BF3D15F993A3F3313318D1748FDA51529093D1CE602EB2AE43D0E974C8C9C9C1FAF5EB990766A67BFA7CBE5BCE12962D1EB34D3B7DFEF9E7F1FCF3CFCFFBF7A9CA9FDCDBDB0B8BC582FBEEBB2F41F3F410796EF3E0830F320FCC4CF7ECECECE47F1CA49B6E931D6B961511F78890751D02E90B4E045A3C4877481168F1C8CFCF477373339E7DF659A21E34C45302809A9A1AD4D4D490D6A0C6A3BCBC1CE5E5E519292B14E6D037E6C09FDF77F3F7CEA4473459B7308DC1482534A4FD646427FD6617BC8110D62CA323AC0B90851D82CD66A32213152D1E76BB9D9F36C73C66A63946CF462185D3E9A422A692DBED164CCF5CEC1E5EAF3763C10FBB4DD3285048511927E475263DA2C9BA0EC16C3653D1D068F1B05AAD309BCDA435A8F108068328292921AD019BCD86F1F171D21A70381C181D1D25AD418D87DBEDC6F0F07046CABA3A6AC7AAB24288E2BC97498F68B2EE19C2F2E5CB492B00A0C7A3BABA9AB402007A3C140A057A7B7B496B10096D1C8FA54B970AE6BD2F760FB55A9DB13BC8ABA376ECDC14FF3941263DA2C9BA3B040683C1A09D119B07364F20EE0C2392645D87D0D5D545243935AD1E7D7D7D82B0018BDDC3ED7663E3C68DA435D0DFDF4F2423562CC3C3C3B870E102690D6A3C26262670EEDCB9B497D33D6A875C2A46BD367E5E8C4C79C4927543463535358225E38BDDA3A2A2828A9932B478E4E4E4C0603090D6405959199124EAB168349A9B42862C660F954A8575EBD6A5BD9CABA376DCB9B4005249FC6B44A63C62C9BA0E81964C54B47844C76521092D1E1289040E8783B406944AA5202E10294865E6A2D5432E970BE247A58BEED169DC7FA776D6F733E5114BD60D1979BD5EF87C3ED21AD478F87C3E3ECA22F300C2E130151762BFDF0F8FC7435A0381404010EC6FB17B048341B85CAEB49631E5F6C334EDC5EAB2D9D71F64C2231E59D721F4F4F4503124408B87C16010840C5EEC1E1E8F076BD7AE25AD81A1A1212A32EA8D8E8EA2B5B595B406351E168B25EDCF32AE8EDA211689B0B26CF621B24C78C423EB868C68786008D0E3B166CD1AD20A00E8F1C8CBCB834EA7C373CF3D47D4839669C9555555A8AAAA22AD418D476969A9208C753AE81EB5A35A938B3CF9EC97DF4C78C423EBEE10188C8530393989279E7802797979734E0648554E65C6E2A57B347E403B1AC8BA0E2136E3D262F7C874C625DA3DBC5E2FEAEAEA6EDAFED24B2F21140AC16834CE391BEAE5975FC6EEDDBBB17BF76EBCF2CA2B496D8B2636A316296233D12D768FD8EC6E29FF7C4F00FD1627D6CE13BF28DD1EB391754346B1199716BB47A6332ED1EE31DB2CA3C6C6461C3E7C78DED5A1A9CAA91C9B518B14B199E816BB476C76B754D3363405894884BBEE98FBBBA6DB6336D27AC50A0402828055D3D3D3829915D1B15C5C2E179F1F1598890514B980F8FD7E4106ABA9A929F8FD7E0033B346A263E428140A41EABCE8323C1E0FA6A7A7F9D7168B05814080778D8E3D343D3D2D981593ACAB46A3815AAD16B886422181ABDD6E17CC2488CE57EBF17804C1F12C160B42A150D2AE39393982E97CD1AE5EAF5750AF56AB55E01A7DECEC76FBACC72E1157B55A0D8D4633A7ABD3E914D4EBF8F8B8C035FAD859AD56FED825E32A168B05EF455CC7C7C7F1D65B6FA1AAAA0A6FBDF5168099F32CE21A39CF223995BFF6B5AFF17565B3D9E0F3F9F89CCA5EAF17E17098CFA92C12896E722D2A2AC2D2A54BE77475B95C827A359BCD7CBD26D3269C4EA7E03C8B2E432693F1B9A163EB3593EDB7A0A00065656573BA66A2FD4AA552C114E954B7DFB6A129AC2ECD83CFF9D97BF15C73737351515171936BBA496B87E076BB05E3A706834110C12F3A817724097B84B6B636FEE48F249C8ED0D7D7C75776281412ACF88C24B78F57C6C4C48460E64F6767273FD5CDED76A3BBBB5BE01A7D12A7C2D5E7F3095C07070705AEBFFFFDEF05AE83838302D7C834D654B94E4D4D095CBBBBBB05AED1C76E707070D663972A57A3D12870D5E97402D7E863D7DDDDCD1FBB645CFD7EBFE0E165C4B5B0B0105FFFFAD7F1C61B6FE0EFFFFEEF01CC1CBB886BE43C8BE4547EF5D557F9A127954A854F3EF904070F1E844AA5C2D4D414D6AC59C3E754BEEBAEBB16E46A329904F5DAD6D6C6D76BAADAC45CF5CADA6F6ADBAFC7EB45EBF5296C28552ED835ED7071B874E952BCCD3771F8F0E184F6CB242D2D2DDCE5CB97496B50E371F9F265AEA5A585B406351E3FFBD9CFB86DDBB6717BF6EC116C7FF8E187399D4EC7757474701A8D66D6BFDFB16307B76FDF3E6EDFBE7DDC638F3D96D4B6687A7A7AB8F3E7CFA7F09B2D8CFEFE7EEEF4E9D3A435A8F1181E1EE63EFAE8A3B47C76F7C834F7D84FCF7346AB9BA807C7CD7E8DCFBA0E81C1988BF7DE7B8F03705387A0D3E9B8BABA3A4EAD5673FBF7EFE7B7C7FE666A6B6BE36A6B6BB9DADA5AAEBDBD3DA96D8CC5CD2F3E19E0FEFB2F75A435388E9BFD1A9F750F95198C8570F7DD7727B49030553995198B0FDDE014EEAE269F9C692EC84F834931636363542462A1C5C36C360B1E762D760FBFDF8F65CB9691D680D56A2592002596E9E9690C0D0D91D6A0C6C3E974A2BFBF3FE59F6B76F83038E9C2A6796617A5DB633EB2EE0EC1E3F1402A25FFB568F1F07ABD080683A435A8F14836961197A608AD2C96119D1EE98A21A41BB4422E15634345621D02A95846E4AF5829A6A6A686B402007A3C2A2B2B492B00A0C743A150503194432A34412C1A8D869A30DC3478A854AAB4AC87681D9AC2860A15E4D2C40665D2E5311F593764C4603018341108857179781A0DD5995F68962C59D721B4B7B70BE6F82E768FEEEE6EB4B7B793D6A0C6C3E572A1A1A181B406F47A3D2E5EBC485A03434343387FFE3C690D6A3CC6C6C670FAF4E9947E66DB751B7C8110B6D424FE40391D1E8990754346AB56ADA22224002D1EF5F5F554642AA3C543A954E2CA952BA435505555858A8A0AD21A58B66C19B4DAD913B52C360F8D4683AD5BB7A6F433CFF64D60D5B24268F273E6DF398D1E8990751D020D5997007A3CA2C3789084168FD8D015A420910D2B1E32990C32998CB406351E52A934A593413CFE105A06ACF8F3FB927BA6986A8F44C9BA21A3D858288BDD23D3B15068F708854254E4EE8D8D75438AD818518BDD2336EED2ADD2DC3F895098C37DF5C93D304FB547A2645D87101B0B65B17B643C160AE51EB1B18C48111BEB8614B1B18C16BB476C2CA35BE5779F9AB1F18E62142A93BBFB49B547A264DD90D1AA55AB482B00A0C7A3BEBE9EB402007A3C687A864003656565282B2B23AD418D472AA7BFDA3C0174186DF87F1EBA93A8473264DD1D0283C160D04093DE0299448CAD49CC2E224DD675087ABD9E8A5B715A3C060707A9C8CC458B87D7EBC5CA952B496B607878988A0C61E3E3E354A4F8A4C5C36AB50A425CDF0A67FB26B0B5460D854C42D42319B26EC848ABD55291A98C160FB55A4D45A6325A3CA452A920A63F29542A9520310D290A0A0A2091247FC1CA568F48629A5B656CDA8BBE3107BEDCB0B015FAA9F24816F257AC14A352A950583877BED2C5E451585848456A425A3CA452A920B35634131313F34E17EEE8E8405D5D1DEAEAEAF85FB4896E8B263F3F7FDE749D99203737978A9011B47828140A949494DCF2E79CE99B40A152868D772C6C7572AA3C9225EBEE102201D4480796631E747A701C37ABC3DEBD7BF98C64B3F1F2CB2F63F7EEDD0080575E7905C78F1F4F785B34A15008E17098F8DC7BE621241C0E23180CDED23A916088C36FAF8CE10BAB96422A5ED8E2D454782C84ACBB43686F6FC7D5AB57496B50E371F5EA552A4246D0E2315BE80ABFDF8FBD7BF7CEFBF72D2D2DD8B9732776EEDC890B172E24B52D1A5A42575CBF7E9D8A9011B478984CA65B0E19D1DC3F8929B71F8FAF5FF8ACA954782C84B47608168B05870E1DE25F9F397306BDBDBDFCEB7DFBF6F1FFEFECEC14E4123D70E000FF6B6D6464048D8D8DFC7B8D8D8D181919013093E7F4C08103B33A4497D1DBDB8B3367CEF0AF0F1D3AC42711B7582C387AF4A8C075606060C1AE0D0D0D58BF7EBDC0D5E170085C9B9A9A04C3097BF6EC11B8363535095C1D0E47D2AEB144BB0E0C0C08EAF5E8D1A302D7E863D7D4D434EBB14BC475FDFAF568686898D355A7D309EA75DFBE7D02D7E86377F4E851FED825E31A4BC4F5D0A143B8E79E7BF0F8E38FF3EF353636F2AE91F3CC66B3A1A8A808DFFAD6B7505E5E0E00B0D96C387CF83076EDDA059BCD86818101AC5FBF1E454545D8B56B17B66DDB7693EBCA952B71DF7DF7CDE9DAD9D929A8D703070EF0F59A4C9BD0E97482F36CAEFA88AED74CB6DF9A9A1A3CF8E08373BA66A2FDC6B290F6FB1F9DA3685079D177F9B332926DBFE5E5E5D8B163C74DAE692799F46AB1B0149A8CDB8DD9526836343470274E9CB82965662C1A8D869B9C9CE426272739AD569BD43646F6639870708FFDF43CD73634455A654E164D0A4DA3D108A9544A7C910B2D1E269309C16090783E025A3C7C3E5FDC45613A9D8EBF3B108944B306E26B6868E07FDD6DD9B225A96DD198CD66B85C2E545757DFDA17BA45AC562BAC562BF18583B478D8ED76984C26AC58B162417FFF51D7182AD5B9B82BC1CC68E9F2582859D72130180B21D201C47606B1AF5F7FFD753CF5D45300800F3EF820A96D8CECC6E90BE2E3BE093CF7B96A908F73BC30B2AE4320FD0B34022D1EA4EF5022D0E29193933367EEDED9EE0C226CDCB8F1A68C6B896E8B46ABD55211EE59AD565331FD95168FC2C2C2054F173FD6310A99448C2FAC5A4AD4E356C8BA59460C068391691CDE208E758C60E7C67228E5E417D82D94ACEB106267292C768F8CCF52A0DCC3E97462DBB66D09EF3FDF1DC342899D99458AD8D95B8BDD23764654A21C691F81442CC297362C23EA71AB64DD90110DE911017A3CD6AF5F4F5A01003D1EF9F9F9686E6EC6B3CF3E4BD48386784A00505353839A9AE492B764B3477979393F9D3851EC9E00FEA373147FB2B902B929BA3B5888472AC8BA3B040683C1C8241FB48D402E11A7ECEE802459D721582C965963D52C460FABD5CA2FDE611E4020102012232696E9E9698C8F8F93D680C3E1A02291132D1E6EB71BC3C3C309EF6FF304F06197094F6E2A5F5054D35479A48AACEB10A6A6A6A8484D488B87DD6E27928A8F568F502844C56C1687C341C50F06B7DB0DB3D94C5A831A0FAFD79B5434DC7FBF340C854C8CC7D6A576165DB21EA922EB9E212C5FBE9CB402007A3C482F7C8A408B8742A110845F200589D0C6F158BA7429962EBDF56992D9E291CCF4D7418B0B273A47F1DFFF5B6D4AEF0E92F54825597787C0603018E986E380B73E36A0569B8F47D79592D6491959D72174757511494E4DAB475F5F1FBABABA486B50E3E176BBB171E346D21AE8EFEF2792112B96E1E1E1B8D15817ABC7C4C404CE9D3B37EF7E1F7699A09F70E27F3E580FB128F5EB9213F5483559376454535303511A0ED0EDEA51515191B6B9F4B7A3474E4E0E0C0603690D94959551911046A3D1A0A0A080B406351E2A950AEBD6AD9B739F49A71FBF6A1EC41FDD558E1A4D1E318F7490751D427E7E3E690500F478E4E5A5E7844D165A3C2412091F8698244AA5124AA592B406140AC5BC59E21693875C2E9F3729CDDE73D750A89461D73D7710F54807593764E4F57AE7CD7AB5983C7C3E1FBC5E2F690D6A3CC2E130151762BFDF0F8FC7435A038140006EB79BB406351EC160102E976BD6F72FF44FA2F9DA24FE727B1D72A4E9BB7CCEE7912EB2AE43D0EBF5181C1C24AD418DC7E0E020F47A3D690D6A3CBC5E6FDC55C23FF9C94F505C5C8CEAEA6A1C397264D6BF4F554EE5E1E161F4F4F4A4E85B2D9CF1F1712A42ACD0E261B55AD1DADA1AF7BD09870F3F3D63C0832B4BB06981B99253E1914EB26EC888C4B85B3C68F1C8743CF5D9A0C5233737376E2A4F83C180FEFE7E5CBC7811CF3EFB2C76EEDC19F7EF539553B9B6B636955F6BC154545450310596168F929292B80B1783210EFFFC510F544A19FE727B1D318F7493751D0283B110DE7CF34D00C0860D1BF855E6F1E681B7B4B4F069145F7AE9A5A4B6316E5FF69EBB86119B073FFAD3BB52BEE68026D23A64E4743A05112E7B7A7A303636C6BF8E4EAA6D366F7C210000200049444154341A0579459B9B9B110C0601CCE4AC8D9EB2D8D5D5059BCD066066ACADB9B959F077D1B75AD1658C8D8D096ED3753A1D9C4E27EF1AFDCBB1A7A747106A2159D7818101188D4681ABD7EB15B8EAF57A188D46FEF5C71F7F2C708D1E62D1E974FC187C32AEADADAD37D54FC4D562B108EAB5BDBD5DE01A7DECF47AFDACC72E11D7489DCDE53A303020A8D7F3E7CF0B5CA38F5D7B7B3B7FEC9271B5DBEDB8EFBEFBE2BADA6C36BCF6DA6B78F2C927A156ABD1D5D5C5BB46CEB3484EE56F7EF39BC8CDCDE5FFAEABAB8BCFA96CB158505252C2E754AEACACBCC935526773B91A8D4641BD3637370B5C136D139173315E197ABD1EA74E9D8A5BAF996CBF91E33B976B26DAEFF5EBD7F1D1471F095C4F5C32E0E49531FCD57FBB03C6DE0E41DDA5ABFD46EA2CD635DDA4F50E412A950AA6D6A9542AC103BDE895897979790887C3FC6BAD56CB4FDB94CBE5282EFE6CCCAEB8B8987F022F1289048946341A0DA4D2CFBE5674194AA55230F5317A5FA9542AF845A852A9909393B36057854201B1580C9148C4BB4A2412816B616121643219FFBAB4F4B3052E4AA552306D55A3D140229124EDAA56ABF9933DD63527274750AF6AB55AE01A7DEC0A0B0B05B34062EB753ED7489D29148A595D63A71D2E5DBA54E0AA527D969650AD56F3C72E1957994C26687CD1AEDFFDEE7761329970F0E0410033E759C435729EA9542A4C4F4FE37BDFFB1EBEF8C52F0298A9FFFCFC7C1C3C78102B57AE444E4E0E388EC3F4F4340E1E3C88EDDBB7DFE41A5D67B3B9E6E5E509669A68B55ADE35993651505000B1F8B3DF7EB1751E7BBE44B7894CB5DFC8F195C964B3BA66A2FDE6E5E509DAA1D927C52F2E18F1C4C66A7C6E790986863E9B0890CEF61BA9B3DCDC5C816BBA1171712687B7B6B662F3E6CDF3FEF1912347661D6B653068E4E0C18378E69967B067CF1EBCF0C20BFCF6EF7CE73B989A9AC2BFFCCBBF081A672C8F3EFA289F1AF3F0E1C33871E244C2DB18B7177D630EEC3ED2856D754BF0E2432B40C1B2A29431DB359E3D43603030737700006FBFFD368099E073F9F9F92CA7F2226570D285578F776343A50ADFFAFC9D59D519CC45D67508CDCDCDC8C9C9C1A64D9B980780B6B636F87CBEA4B28465B387C3E1C0FDF7DF7FD3F6445751A72AA772777737CC6633B66FDF9E50B9E9C26030E0DAB56B78E491479807669E2F7CFCC945FCD659891A4D1EFEF68B2B219564BE37301A8D686B6BC3134F3C91D172B3AE43207DC189408B07E90E29022D1E0505053877EE1C9E7EFA69A21E6BD6AC215A7E84FAFA7AD4D7D793D6A0C6633C9C8FE3B672AC59968F9776AC4CEBE2B3B9A8ACAC44656565C6CBCDBA0E81C1482534C45F626486FFEA19C75B670CB8FF4E2DFEEFCF2F8754BC48C689A2C8BA95CA6363635424DAA0C5C36C360BA60A2E760FBFDF8F65CBC8A73AB45AAD443262C5323D3D8DA1A121D21A443DFCA130DEFAD8801FFF971E8FAF52E38FEAA4C43B03A7D389FEFEFE8C979B7577081E8F4730ED74B17B78BD5EC1B4D3C5EEC1621909A1258610298F519B07DFFF6D2FC6A77DF8BB1D2BB1562315AC2D2005A95846E4AF5829A6A6A686B402007A3C488C43C683160F854231E7C3DE4C515A5A2A98B74E0A8D46434D18EE4C7A84C21C8E758CE260CB7554162BF1D33FBB0B4B0B67D68344AF7721854AA522E291751D0283C160CC45DF98036F7D6C8071CA8D3FDD5C893FB9BB023249D68D9E2F88ACAB85F6F67674777793D6A0C6A3BBBB3B6E30B7C5EAE172B9D0D0D0405A037ABD1E172F5E24AD81A1A1214158876CF618B579F0C3937DF89B7FBF8CFC1C29DEFAB34DD875CF1D82CE606C6C0CA74F9F4EAB472290F2C8BA3B045AA28CD2E2414B94515A3C22D14E9F7BEE39A21EB5B5B5A8AEAE26EA00CC4419A5E1217B3A3DAE5BDD38D23E8233BD13282D54E07F3FB212F72DD720DE63E392921222C9ED69F1C8BA0E818607B900F38885160F914844C5C36D8944C2C7B6611EA9F7E038A0F5FA148E758CA0E3BA0DA5450AFCD51FD4E3F32B4B2099630691582C2692A98C160F3A5A690A713A9D108944C45336D2E2E172B9C0711CF1949EB4788442212A72F77A3C1E04020114161612F58864F62B2A2ACA0A8FC14917CEF69971B6CF0C8BD3870D152ABCFCD82ADC53B324A1F0137EBF1F2E974B108C8F04A43CB2AE43301A8D90C964C4573DD2E2613299100804B06AD52AE681998656555545D40100262626303D3D8DF5EBD713F5989A9AC2E8E86842C12C69F4088639748F4E4337388596012B466D1E680B72B07D85160FAE2CC11DEADCA43ECF6EB7C3603060EBD6AD49FD5DAA21E591751D02E90B4E045A3C4877481168F1502A95B872E50A690D2A3A2500282B2B43595919698D843D7CC130AE999DE81EB1E3CAE834AE9AECF0F843285729714F8D1AF7D4A8B16659D18283D12DD669B811B2AE4360301642474707FEF88FFF18C04C5877D2BFDC173B1C008BC387E1290F86AC2EF49B5DB86676C268F520CC7128CE95636D7921BEB6AD1A9BAB8A5156A498F73319F393751D424F4F0F154335B478180C062A866A68F1F0783C58BB76ED4DDBE7CB819C6A868686A8183232994C44868C82610ED3EE00AC2E3F265D3E0C1A47303E6682BBA00A63762F466C1E780321004081428A5A6D3EEEAE52E3CB77E7A1BE241FCB54E9596D6EB158A8183222E591751D4259599920E3D262F7282929C968C625DA3D6432194647476FDA9EE91CC84B962CA1E2E17651519120EB572284C21C3C811082210EDE40089E4008FE60189E40082E7F105E7F186E7F102E7F081E7F080E6F00766F104E5F10764F00D337FE45539CC34193938B92026043651176AC2D4545B11295EA5C142993F3BB15F2F3F3515B5B9BB1F268F3486B87E07038D0D6D6C6CF2CF1783C904824FC742ABBDDCECFB2F0F97C00C067AB8A4E50120C06E1F7FBF91CB66EB71B72B91C52A9141CC7C1E974F28D2BF673A2CBF0FBFD0885427C2C1BA7D309A55209894482502804AFD7CBCF0A8AC4228A349654B886C361B85C2EDED5EBF5422412F19F333D3DCDCFB2F0FBFD7CCAC9886B6E6E2EC462715CD730C41049660EA7D5668332F746193E1F7C81106437EADCEB76412C5722C47108878208050390E5CCD487CFE341502481482C01C77108FA3C902966BE4728E083482481582A4598E3E074382055CC94CF8582E0C26188653365847C1E48E40A402402170E231CF4CFBC06100EF820124B78D7A0D7C57F4E38E8070088A5F2CFDECBC9054422B8BD7E201C84489A73E373BC33FB89C400C7CDBC96CF7C0F2EE807449FD547D8E7863867E67B745DEC462010C0A9966E380A1A11F67B209629609D9AC2CF8F37E1FD9FFD1056EB147EF0EBC61957891422B1040087B03FBA8C0020024412D94D6570E1D0825D433E377CE21BD30D434100614072E375C0034867EA15E130100E009132FC3EF838F14C19E0200AFAC04967EA5C140AC017E210C4CCB44E49D08B90548140308C502808111746482C43301406823E044532043920100C42C605E00CCDBC27E102F086800037F343274F14808B9BF9FE32510822007E4E02894804952C08915C09A54C8A3C9908F93240A15462598E14F5394114142BA1CA53203F470269D807B5AAE846DBB2CEB42D5F0E7C6340DBA764DA6F249E51A6DAEF6CAE068341E0BA7AF5EAF4C6E2E2E270E9D2A5789B6FE2F0E1C373BE7FE1C2056EFBF6ED1C668604B98D1B3772959595FCEB471F7D94FF7F6D6D2DB762C50AFEF5430F3DC4C964320E00A7D168B82D5BB6F0EF6DD9B285D368341C004E2693710F3DF410FFDEEAD5ABB9FAFAFAB865545656721B376EE45F6FDFBE9D2B2A2AE20070454545DCBDF7DE2B702D2B2B5BB0AB542AE5241289C035373757E0BA76ED5AAEB6B6967FFDA52F7D49E0BA76ED5A816B6E6E6ED2AEF5F5F5DCEAD5ABE3BA96959509EAF5DE7BEF15B8461FBBB56BD7CE7AEC12719548249C542A9DD375C58A15827A7DF4D14705AED1C7EEDE7BEFE58F5D32AED5D5D5DC860D1BE2BA6A341A41BD6ED9B285778D3DCF56AC58213876D16524E21AA98FB95C6B6B6B05F5FAD0430F095C136D1373B92E5BB68CBBFBEEBBE3BA16151565ACFD8AC5624E2693CDE99A89F6ABD56AB96DDBB6C575CD64FB8DD447AC6B67676742D7E6F998ED1A9FD69CCA636363F8F18F7F3CEFE7A492C8300DA9E1097F300CA72F08A944024F200493CD0D8F3F046F20046F300C6F208450F8A62A874C22864C22825422864C2C824422825C2286442C82442C824C2C864834B39F4804486F7C4FF98D041EE2A86D2211F82C4F0AB91452B118FE80703196F4C6E7C4439E86B82EA48F4B849191115CBB760D050505D8B87123BFFDFDF7DFE757537FFAE9A77CFACB7421168B211289100A85D25A0EF3480E9148C4FF8AA7D1E35BDFFA564A822212C9A95C5A5A8AEF7FFFFBE92C8218764F00D7CC2EF45B9C189EF2E0BAD58DE1290F5CBE990BAF4804A8F3E45857A0803A578E25F972A8726550E7C951A894A1502143A1428A02850CF90A69DC65F48CD473F0E0413CF3CC33D8B3670F5E78E1057EFB97BFFC65410EE4BBEEBA8B942283418CAC7BA89C0E380EE8B738D13D6A47DF98033D263B261C33E390AA5C19AAD479A8D7E6E3C19525282B52A0AC48096D7E0E915CAC8C85315F0E64066331407E1A4C8A311A8D30994CD8BF7F3FB45A2D4A4A4AF0CB5FFE32E9CF99F604F05F3DE3F8E7C65EEC7AF702FEFADF3AF0DE85EB70FA82F8C2AAA5F8FB3F5C8D5F7D7D0B7EFDE7F7E0F59D6BF1C2F63A3CB6AE0C9BEE9899136D1A1D86C964C2E4E4249E78E209E4E5E541B4D0D532B780C964E21F904D4C4CF00FB94879FCE4273F41717131AAABAB71E4C8918C7B0C0E0EA2AAAA0AAFBEFA2A3A3B3B335E7E841FFDE84758BB762DB17A8860B55A71E9D22562E74584FEFE7E7CE52B5F21D64E22FCFCE73F474343C382AF1BB78A482482482482DD6E475F5F1F3A3A3A50575787BABABA8C9CAF5977872093C9209148F0E28B2FE2F4E9D3E0380E0F3DF410BEF6B5AFCDFBB70E6F104D060B9AF416748D4C432C06D62E2BC29F6CAEC4FA8A22D469F3135E0119F178E9A597100A8560341AC9442F944AF906B677EF5E7E8605290F83C180FEFE7E5CBC7811CF3EFBEC9CCFA0D2C1471F7D844020802F7EF18B19596F301B43434378FFFDF731343444A41E224824127CF8E187C4CE8B086FBCF10682C120B17612E1B5D75EC3FEFDFBA1D16812BE6EA4128EE3F8E70732990CDFFEF6B733BA3E26EB3A84C80397F2F27288C562701C376F58DD2B23D3F8ED95317C726D122211D050A5C6FF7A64051AAA8BA1902D2C0263C4A3B1B111870F1F2676926BB55A0033D3E0F6EEDD4BC421DAE3CD37DF04006CD8B001168B0556AB35A375D3D9D90987C3810D1B36E0073FF841C6CA8DE5273FF9098099CC5824EA218252A9C4CF7EF6B38C971BCB89132788B69308C5C5C558BA746942D78D74929F9F8FFCFCFC8CAF8F49EBB453929C3E7D9A532A959C52A9E4CE9C3973D3FBC15098FBB87782FBEB7F6BE71EFBE979EEDB873AB8C62E13E7F40552EA2193C9B8AF7CE52B5C616121F7E69B6FA6F4B393E1C08103FC94391AD8B56B17F7E4934F66BC5C8944C20133D393653259C6CB8F85543D44A0E5BCA0A59DCC77DDC804D1C7422A9572C160907BE49147527ABECE768DCF9A0E0137E6E9B6B4B470972F5FE6EAEAEAB8D6D6564EA7D371CB972FE7F70B8739EEE3BE09EE1B072E715F7AAB89FB7E630FD763B2A7CD63C99225DCA54B97B88E8E0E4EAD56A7AC9C443D2E5FBECCB5B4B4700D0D0DDC89132732DEF0633D388EE3BEFDED6F730F3CF000E7743A33EAC2711CB761C3066EDBB66DDC1B6FBCC169B5DA8C971FA1A7A787FBDBBFFD5B62F510E191471EE1F6EEDD4BBC4358BF7E3DF7EB5FFF3AE3ED2496868606EE17BFF8C54DD78D4C02801B1E1EE63EFAE8234EA3D170939393DCE4E4644ACFD7D9AEF1593364C4C52CA7989C9C44381C86582C86D96C0600F498ECD8FBBB7EF45B9C78E04E2DBEF3F86A94A738264AACC7E6CD9BF96D990C6511EBA1D3E9F0F8E38F0398797015FB7EA63CBEF39DEFC0E7F3E1E4C993FCEACB4CD3DCDC8CBABA3A6CD9B28548F900F0DE7BEFC1E97412AD07003879F2244E9E3C0920B3E7452CA5A5A5FC3A1092215FF47A3DD6AC5923B86E90A0BCBC1CE5E5E5686868C0D1A347012033E76B32BD472C34DD21C4F2F39FFF9CD368349C46A3E1DEFA3F3FE3FEF5D4A7DCE33F3DCFFDDD079DDCD0A42B631E3A9D8EABABABE3D46A35B77FFFFE8C953B1BB31CF28C961FFDCFE17064B4FCD75F7F9D5F3DDBDEDE9ED1B2A3215D0FF17C48424B3B89BE6EBCF3CE3B192F3FFA9CE0388E6B6B6BE36A6B6BB9DADADA949EAF597F8710C162B1402C16E3F9E79FC7F3CF3F0FDDA0156F9E31203C64C5DFED58897BEB3313633CE271F7DD77F3F1484860B55A110E87F9D8EA1CA15F80110F52E547282F2F47494909FEE11FFE81E8E2339BCD06AFD78BA54B9712730066E2F8389D4EE2C765C58A15387FFE3CF1DC0CCF3CF30C76ECD8818A8A0A22E5478E83DBEDC6F0F070C6D7C764DD3A84A9A929D8ED7684C21CF67F32807FFC8FAB58575E84FFF3CCE68C7506D11EA4B1DBED989A9A22AD418D472814223E930598B9105BAD56D21A70BBDD44874668F3F07ABD98989820AD41CC23EBEE10962F5F8E29B71FBB8F74413FE1C45F7F6139BEB02AF3BFC2962F5F9EF132E3515D5D4D5A01003D1E0A8502BDBDBDA43588FD028D65E9D2A5C4EF5268F250ABD554FC6020E591751DC2F094077F7FBC1B6211F0C3A736A0564B36C93D83C160DC2E64D590D155931DFFF8AB462C095AF0C69F90ED0CBABABAD0D7D747ACFC087D7D7DE8EAEA22AD418D87DBED16443925457F7F3FDADADA486B60787818172E5C20AD418DC7C4C404CE9D3B475A839847D6DC21748FDAF1EAB12BD8505D8BBFFEFC9D19CDB2148FE5CB97138DC912A1BABA9AF803439A3C681A3222FD00159819AAA1618884160FB55A9DF174A2347964C51D42DF9803FFF81F577157A50ABB1FDF80A2FC5CD24A50281444E79747C8C9C9211EB88C260FB1580C8FC793D0BE8906E28B17806CBE6DBDBDBDE9CD7C952032998CCFEEC73C66626E4532992D468FDBFE0EE19AD989578F75636559015EDAB10AC1800FA1A088F8C53836BD1E297C3E1F388E237E31A6C5231C0E277C214E3410DFCB2FBF7C5300B2F9B6BDFAEAABF8CD6F7E43BC53080402080402C42FC6B478048341F87C3EE29D02298FDBFA0EC1E2F4E11F4F5C455D491E763FBA0A5289087ABD1E838383A4D5A8F1181C1C845EAF27AD418D87D7EBC5CA952B13DAF7CD37DF447171B120105F3C5A5A5AB073E74EECDCB9931F079F6FDBD0D0107A7A7A52F3A56E81F1F171A261C069F3B05AAD686D6D25AD41CC23AD1D82C562C1A14387F8D767CE9C118CDFEEDBB78FFF7F676727743A1DFFFAC081037C48DE919111343636F2EF35363662F0FA305EFFB007B9120E773ADA91732395A4D7EB1584F28D2EA3B7B71767CE9CE15F1F3A7408168B85778D2C118FB80E0C0C2CD875DDBA7558B162051A1B1B313232026066EE7924722100343535091AC19E3D7B04AE4D4D4D025787C391B4ABCFE783D7EB8DEB3A303020A8D7A3478F0A5CA38F5D5353D3ACC72E11D7152B5660DDBA7573BAEA743A41BDEEDBB74FE01A7DEC8E1E3DCA1FBB645CA3139FC7BA8E8C8C08EAB5B1B111030303F89BBFF91B3CF5D453F8F0C30F05AE916367B3D970F8F061ECDAB50B369B0D03030358BF7E3D8A8A8AB06BD72E6CDBB60D168B05369B0D62B118AFBEFA2ABABBBBB169D3A6395D3B3B3B05F57AE0C001816B6C9B881C3B9FCF2738CFA25D63CB08040270BBDD71EB359DED37D6B5A2A2025BB76E9DD33513ED371008C0E572C575CD64FB2D2929C1FDF7DF7F936BDA496659732C244357FCF3473DDC977FD6CC8DDA3CC41C18B71FEFBDF71E0780DBB367CF4DEF212A6440844402F1C50B4096E8360683045915BAE2C32E137E7F6D12FFF8C41A941509C7A407060620954A51595949C88E2E0FA3D1886030889A9A1AE681993BC8BABABAB8EF710B0CC4172F00D97CDB1E78E001E8F57AE20B182D160BCC663356AD5AC53C3073B767341AB16EDDBA45E971DB750843936EEC6B1AC0539B2B7057A5EAA6F70B0A0A88464BA4CD232F2F0FE17098B406351E128984BF759F8FEF7EF7BB0080B7DF7E1BC0CC90417E7EFE4D51415F7FFD753CF5D45300800F3EF820A16D070E1C406161610ABED1AD9193930395EAE676B4583DE472398A8B8B496B10F3B8AD3A047F308CFFF7B7BDA8D5E4E1997BEE88BB4F24881B6968F1A0616E37408F874C264B38464CEC1DC36CC40B4096E836D2141414A0A0A080B406351EB9B9B9C4673A91F420FF133609DEBB781D16A70FFFEB91159088C92FFA6230188C6CE2B6E910AE999D38DA3182FFEB73D5585A38FB5CF6E6E6662A4202D0E2D1D6D686E6E666D21AD478381C0EDC7FFFFDB7F41989DE39CC45777737CE9E3D7BCB9F73AB180C063E410EF39879D675ECD831D21AC43C6E8B21A330C7E1AD3306DCB9B4003BD6CEBDDC7FDBB66D19B29A1B5A3C366DDA445A01003D1E0505053877EE1C9E7EFA69A21E6BD6AC215A7E84FAFA7AD4D7D793D6A0C6A3B2B292F84410921EB7C51DC2879D260C4CBAF03FFEA01E1484076230188CAC84FA0EC1E90BE260CB753CB1A11C554BE67FC83236364645A20D5A3CCC6633C6C6C6486B50E3E1F7FBB16CD932D21AB05AAD181E1E26AD81E9E9690C0D0D91D6A0C6C3E974A2BFBF9FB406310FEA878C0E5D320200FEF4EEC4128A0402012AA26AD2E2110C06110C06496B50E3C1711C6432B291708199CC6D34D447281442201020AD418D47381C5ED41E547708130E1F4E5C36E1AB9FAB425E4E62AA348CFF01F478D0106219A0C7232727878A5FA25AAD165AAD96B4C6A2CF10164B61612115EB434879503D64F4EB0B4350E7CBF1D83A3A2E260C068391CD50DB210C5A5CF8B86F02CF6EAD824C92B8667B7B3BBABBBBD368767B79747777A3BDBD9DB406351E2E970B0D0D0DA435A0D7EB71F1E245D21A181A1AC2F9F3E7496B50E331363686D3A74F93D620E641ED90D1FF77C988AA2579B8FFCEE46EAB49C72089408BC78A152B482B00A0C723373717EDEDED78EEB9E7887AD4D6D6A2BABA9AA8033093B98D8687ECB47894949450317445CA83CA0EC134ED4593C182171F5E816467994AA5747C25E62184160F914844C5C35C8944028944425A8379C420168B2197CB496B10F3A072C8E883B661941428F0DFEA938F0764B3D960B7DBD360757B7AD8ED76D86C36D21AD4780483412A7E013A9DCE5913EE6412B7DBCDE714601E33D170138D75958D1ED4750856971F677A26B07363F982E215994C262A0E282D1E13131330994CA435A8F1080402490D4D4C4C4CCC9BF6732139955B5A5AD83A040A3DD83A04CA38D6310AA55C8287572F5DD0DF938EA71E81160F1AC20100F47828954A5CB97225E1FDF7EEDD2BC8C0178F85E454FEF18F7F8CE3C78F2FF05BA48EB2B2322AA604D3E2A1D168A888544CCA83AA0EC11F0CE364F718FE686339E452EA6E5E188B0CBFDF8FBD7BF7CEBB5F4B4B0B9F5AF1A5975E4A6A1B83411369BDEADAED76415ED1CECE4EC16DF2A953A7F8FF0F0E0EE2E8B9567803213CB26629CE9E3DCBAFD4B35AAD82C8A16D6D6DFCF86B201010448D3C73E60C3EF9E493B8650C0F0F0B72A0363535F1E3FC76BB5D300DB0B3B313E3E3E3B3BA46278C8FE7DAD3D30383C12070F5783C02D79E9E1E0C0E0EF2AFA3F3CE0E0F0F0B92B0373535C1E3F124EDFAC9279F08F2D046BB8E8F8F0BEAF5E2C58B02D7E863D7D3D333EBB14BC4D56030A0A7A7674E57BD5E2FA8D753A74E095CA38FDDC58B17F963978CABCD66C3C30F3F1CD7D56AB50AEAF59D77DEE1B39DC59E677ABD9E3F76369B0D972E5DE2732A8F8F8FA3BCBC9CCFA95C5757C73F4391CBE578F1C517919F9F8FCECECE395D07070705F57AF6EC59816BA26D22DA35B68C2B57AE08A26A46D76BB2ED77BE363197ABC964426B6BEB9CAE9968BF068301EFBFFF7E5CD74CB65F8BC5820B172EDCE49A6ED27A872097CB515E5ECEBFD66AB582A40F555555FCFF0B0B0B71697418F7D46A509C2B474545059F714CA150A0A4A484DFB7A4A4841FD7158BC5A8A8F82CAC457575B560464B741905050582990CE5E5E5FC937CB95C8ED2D2D2845DA3B37FC573CDCFCF87582C8642A1E05DA552A9C055AD560BC228444F432C282810BC575E5ECE7FAF645C2B2B2B05B36AA25D73737305F55A5A5A2A708D3E766AB55A30961E5BAFF3B9161717231C0EC3E3F1CCEA1A9B21AAAAAA4AE01ABDB2B7B4B4943F76C9B82A140A4142F368D7CACA4A2C59B204D7AF5F07001C3B760C7FF9977F8963C78EDD749E151717F36E2A950A4B962CC1C18307B172E54AE4E6E6C2EFF7637A7A1A070F1EC4F6EDDB2197CBA152A9E076BBF1AD6F7D0B1F7FFC312A2A2A10080466752D2C2C8452A9E45F575454F0AEC9B48968D7D8324A4A4A04EF45D76BB2ED77BE3631976B5151117F0ECDE69A89F6AB56ABB172E5CAB8AE996CBFF9F9F9A8ADAD85542ACD68A641111727E04E6B6B2B366FDE3CEF1F1F3972043B77EE4C89C880C585FFF99B76BCFE476BB1214E6A4C0623151C3C7810CF3CF30CF6ECD983175E7861CE7D4531A175678B4DF5E8A38FF2A9310F1F3E8C13274E24BC8DC120C16CD7786A9E21345E19C3329512EB6FB13388FC1A263DEF9D79D0E9C1715CC20E910E203687722A722ABFFFFEFB080402C403ED85422184C361E6718370388C6030487C2D02290F2A9EDC7A03217CDC37811D6B4B935E88164B575717FAFAFA52E2950D1E7D7D7DE8EAEA22AD418D87DBEDC6C68D1B93FA9BF9A2D64672255FBB760D77DD755742DB0A0A0AA8C8A8373C3C8C0B172E90D6A0C6636262828A101AA43CA8B843683258100885F1F99525F3EF3C0FC936F674418B072D99B968F1C8CBCB834EA7231EBA62F9F2E544CB8F50555525185F5FEC1EA5A5A582F1FDC5E641C51DC2EFFACCD87C47310A95E4E3D43318F341439E0B06231D10EF10A6DC7E5C1E9EC6F615B77E7700CC24A7A661452C2D1E26930946A391B406351E3E9F8F8A5FA266B3593065911456AB15068381B406351E76BB9D8AA15E521EC4878CCEEB2DC89189B1A52635F1656432191541B268F1904AA537CD9659CC1E2291888A8C58128984F803F68807E907B9347988C5E245ED41FC8C3CDB67C6B6DA25C849D1CA641AC6FF007A3C68C8CA05D0E32197CB313A3A4A5A839A0C61454545282A2A22AD418D477E7E3EF2F3F3496B10F3203A64649AF6E2D371071E4832E70183C16030520FD10EE1779F9AA152CA70570A17A235373753319D8F168FB6B63634373793D6A0C6C3E170E0FEFBEF27AD81EEEE6E41180452180C069C3C7992B406351E46A35110CA63B179101D326ABE3689AD754B1614E67A36B66DDB96B22CD810CE0000131A49444154CFBA1568F1D8B46913690500F478141414E0DCB97378FAE9A7897AD0320DB7BEBE9E8A48B4B478545656A2B2B292B406310F62770816A70FFD6627EE49D1C3640683C160DC1AC43A848B0356E4C824291D2E02008BC54245262A5A3CAC562B1599A868F108040282406BA4989E9E1644B82485C3E1A0627A342D1E6EB79B8AC445A43C88750817FA27B1E90E156492D42A381C0EB85CAE947EE6EDECE172B9E07038486B50E3110A85505050405A031E8F878A14AB3E9F8F8AD4A6B478F8FD7E4C4D4D91D620E641E41982CB1FC495113BFEC71FA47ECCB0A6A626E59FB91068F1A0613C14A0C743A150E0DAB56BA435A80991B0D83384C5A252A9A052918FB64CCA83C81D42FB751B42612E658BD1188C7430393989279E7802797979732EAA5B484EE5E8442F0C062D10E9102E5C9BC4EA65852850A4FE06859628A3B478D0126594168F64A29DBEF4D24B088542301A8D73C62F8AE44ADEBD7B375E79E59584B67DFFFBDFA7625A322D514669F1989898C0B973E7486B90F3E0E270E9D2A5789B6FE2F0E1C309ED174D3014E6BEFCB366EE70DB70D27F9B081E8F87F37ABD69F9ECDBD1C3EBF5721E8F87B406351E070E1CE0944A25B767CF9E79F7ADA8A8E05A5A5AE6DD4FA3D170939393DCE4E424A7D56A13DAB66CD932CEED76DFDA9749017EBF9F73B95CA435A8F10804029CD3E924AD91768FD9AEF169BD43F0FBFD181919E15F5B2C16740E8CC1E90B62735531868686F8F722396723188D463E759CD7EBC5C4C404FFDEC4C404BC5E2F80994412D141D3BC5E2F7C3E1FFF3ABA0CA7D32998E932323202BFDFCFBB8E8D8D095CDD6E77DCCF49C455A15020272747E01A0C0605AE56AB55F060313AB5A3D3E914CC521A1919E193CC24E3EAF3F9F8F2635DDD6EB7A05EC7C6C604AED1C7CE6AB5C2E974C62D2311D79C9C1C28148A395D6D369BA05E87868604AED1C76E6C6C8C3F76C9B886C361415ACA6857AFD72BA8D770388CB7DF7E1B45454578EBADB704C7CE66B3F1C7CE66B3617A7A9ACFA9EC76BB219148F89CCA393939F0FBFDB0D96CC8CBCBC3F3CF3F0FB3D90CA55239A7ABDD6E17D4ABD16814B826DA26A25D63CB08040282E3115DAFF1DAEF5CAEB7D27E653219727373E774CD44FB0D068382C920A4DAAF542A455E5EDE4DAEE926AD1D82C7E3110C9B0C0D0DA14D6FC4927C39EE50E70A861026262604D3CEAE5EBD8A50280460A672FBFBFBF9F7FAFBFBF91333140AE1EAD5ABFC7BD7AF5F179CC4D1654C4E4E0A4E8CBEBE3E3EF1B5C7E31124B31E1A1AC2F4F474DCCF49C435D23145BBFAFD7E81EBF0F0B0A0A1B4B7B70B5CA3A79DF5F5F5F1277F32AE2323237C8EE058D7E9E96941BDEAF57A816BF4B11B1E1EC6E4E464DC3212718D744C73B99A4C2641BD767575095CA38F9D5EAFE78F5D32AE3E9F4F90FB36DAB5B2B292CF6806002B56ACC057BFFA559C3B770EFFF44FFF2438762693893F762A950AADADAD3878F020542A15A6A7A771E79D77F2399557AF5E0D8FC703954A058BC582AF7FFDEBD06AB5F0783C73BA4E4C4C08EAF5EAD5ABBC6B326D22DA35B60C8BC5223897A2EB355EFB9DCBF556DA6FA4639ACB3513EDD766B3A1B7B737AE6B26DB6FA4638A754D3BC9DC4EC4B29021A3FFFDEF97B91F9DEA4BFAEF12A5B3B393EBEDED4DDBE7DF6E1EBDBDBD5C676727690D6A3CDE79E71D6EE3C68D090D193DFCF0C39C4EA7E33A3A3A388D4633EB7E3B76ECE0F6EDDBC7EDDBB78F7BECB1C712DAF6F4D34F73ADADADA9F952B780D168E49A9B9B496B50E3313E3ECEFDEE77BF23AD91768FD9AEF119ED103CFE20F7C45B4DDC99DEF1A4FE8EC14815EFBDF71E0720A10E41A7D3717575759C5AADE6F6EFDFCF6F8FFD1DD5D6D6C6D5D6D672B5B5B55C7B7B7B52DB180C12CC768DCFE83A84AE916984C21C3654909FE7CB60CCC7DD77DF9D50D29648AEE4856C63306822A3D34E3B8C36DCB12417EA3C79DACAD0EBF55464A2A2C563707050305EB9D83DBC5E2F56AE5C495A03C3C3C3E8E9E921AD81F1F1712AD644D0E261B55AA9980E4CCA23A377081D465BCA6317C5525C5C0CB1987866506A3C0A0B0BF91914CC632633D7ADC698E2529053B9A0A0808ACC5CB9B9B954242FA2C543A1505011EB8A9447C63A8429B71FD727DDF8DAE7AAD35A0E0DCBDF017A3C68C8CA05D0E32193C904334348414B86B08282022A623BD1E2919B9B8BDCDC5CD21AC43C32F613B673781A62B108EBCBC937020683C160DC4CC63A84ABA376D46AF3A090A537F1BC4EA7A3622C92168FCECE4EE8743AD21AD478389D4E2A9217F5F6F6A2A9A989B40606060670E6CC19D21AD4788C8C8CA0B1B191B406318F8C0D195D35D93332BBA8A1A121ED6524022D1EEBD7AF27AD00801E8FFCFC7C343737E3D9679F25EA41C3836D60262A2F0D917969F1282F2F47797939690D621E19B94370F983189C7461D532F263840C0683C1884F463A841E93031C07AC294BFFF383B1B13198CDE6B49773BB7898CD6641DC94C5EEE1F7FBB16CD932D21AB05AAD5464E68A0D09B2D83D62C36C2C368F8C0C19F598EC282B5240959BFE697681402025D302B3C523180CF241B598C7CC94511AA67B8642212AEA23140A21100890D6A0C6231C0E2F6A8F8C7408DDA376AC599699D945B464E6A2C5A3ACAC8CB402007A3C727272A8F825AAD56AA99877AF56ABA998124C8B476161210A0B0B496B10F348FB905130C4E1D37107562F235FC90C0683C1989DB4770806B313FE6018ABCB32D321D032DD93160F5AA67BD2E2C1A69D0AA165BA272D1E6CDA699AE935D951A494A1BC5839FFCE2920D1F488E986168FD5AB57935600408F475E5E1E743A1DF169A7CB972F475D5D1D510700B8E38E3B505151415A831A8FB2B2322A86F24879A4FD0EA16FDC81FA927CCC9EA23CB548A55248A5190DD1C43C6E230F914894F0C3DCFDFBF743ABD5A2A4A404BFFCE52F67DDAFA3A303757575A8ABABE3EF0AE7DBD6DDDD4DC5C36D8944C23CA2108BC590CBD3177C93768FB4B750C384130FDC99B99ECE66B3412C16137F30448B87DD6E47381C864A4536E4382D1EC16030E187972FBEF8224E9F3E0D8EE3F0D0430FE16B5FFB5ADCFD5E7EF965ECDEBD1B00F0CA2BAFE0F8F1E3F36E7BEDB5D7F0CE3BEF107F90EA76BBE176BB89C7DEA2C5C3EBF5C26EB7130F7047CA23AD77082E5F1063D35ED497E4A7B31801B129F848418B47C653F051EE110804125E87505E5E0EB1580CB1583CE7DFB4B4B460E7CE9DD8B973272E5CB890D036BD5ECFD62150E8B1D8D721A4B54368EB1B42DD741BDF219C3C7912DDDDDDFCFB6FBFFDF667FBB6B5A1B9B9997FFDEEBBEFC2E7F3019849827DECD831FEBD63C78EF1C9AE7D3E1FDE7DF75DFEBDD824DDD165747777E3E4C993FCEB03070EF08BC7CC66330E1D3AC4BF77F2E449417294645D57AD5A85FAFA7A81ABDD6E17B89E3D7B5610F3FC473FFA91C0F5ECD9B302D7C8F74AC635364977B4ABC16010D4EBA1438704AE070E1C10B8CE76EC1271ADAFAFC7AA55ABE6746D6E6E16D4EBDB6FBF2D708D3E76870E1DE28F5D32AEB17708D1AE46A35150AF7FF5577F855DBB76E1DE7BEFC5BFFEEBBF0A8E5D7373337FEC6C361B0E1E3C885DBB76C166B3C1603060D3A64D282A2AC2AE5DBBF0C0030FC06C36C366B3412412E1B5D75E436F6F2FD6AF5F3FA76B5B5B9BA05EDF7DF75D816BA26D22DA35B60C97CB25485C1F5DAF66B35950AFE96CBF656565D8BC79F39CAE9968BF1E8F07E3E3E3715D33D97E351A0DB66EDD7A936BDA4926BD5A2CF3A5D0FCF75623F7CCBB1712FA2C062313CC95421380203D665D5D1DD7DADACAE9743A6EF9F2E5B37EA646A3E1262727B9C9C9494EABD526B58DC1200191149AFA716746878B00A0A7A70732990CF5F5F5192D97560F83C18040208055AB56310FCCFC025CBB766DDCF7B89895E59393930887C3108BC5738621696868C0D1A34701005BB66C4968DB830F3E88CECE4EE241FF4C2613464747B179F366E601C062B1C0603060EBD6AD8BD223AD1DC23573661F2803332B8445A24CCD69A2DFA3ACAC8C8A101AB478C8E5F284C7AA7FF0831F60C78E1D008037DE7883DF2E128904DFE5F5D75FC7534F3D0500F8E0830F12DAF69BDFFC06D5D5D5B7F665524071713115096168F1282C2CC48A152B486B10F3485B87E0F40561CAF003656026BC310DD0E2919797475A01003D1E1289040E8723A17D9F7FFE793CFFFCF3F3EEB771E3465CBB766D41DB48A35028A05028486B50E32197CBA998764ACA236D0F950D134E00C0F292CC86BCA625881AF3A0D383E3382AD643D012CC8D79080987C3F0FBFDA4358879A4B54328CE9563497E667BB9AEAE2EF4F5F565B44C9A3DFAFAFAD0D5D5455A831A0FB7DB7DCBABC85331F4D5DFDF2F98A1428AE1E1617E5A2CF398991E7DFEFC79D21AC43CD2F653493F91F907CA003D212368F158B3660D690500F4784442573CF7DC73443D962F5F4EB4FC08555555A8AAAA22AD418D476969294A4B4B496B10F348DB1DC235B313CB0974080C0683C1581869E9101CDE9915CA75043A848181017E21094968F1301A8D18181820AD418D87D7EBA522A8DCD8D818F47A3D690D582C16F4F4F490D6A0C6C366B35131B449CA232D43469F3D50CE7C87A0542A219148325E2EAD1E0A8502A15088B406351E62B1181E8F87B406E4723994CACC44009E0B994C46C5744F5A3CA452291533E24879A4A543B86676429D27873A2FF3D3A66818FF03E8F1A021942F408F875C2EC7E8E828690D6A3284151515A1A82833D90C6F078FFCFC7C2AA68C93F248CB90D175AB1B351AF2BD2C83C1603012272D1DC2E0A40B956A32B77FB1C1B148418B47C6836351EEE1703870FFFDF793D6B829F819296283062E768FD8407C8BCD23E54346618EC3B0D5832F6D482CC470AAA1213D22408FC7A64D9B482B00A0C7A3A0A000E7CE9DC3D34F3F4DD4839669B8F5F5F5C4E36DD1E451595989CACA4AD21AC43C527E87306AF3C21F0AA34ACD868C180C06E37622E51DC290D5059108A85493994161B15860B55A89944DA387D56A15C4BB5FEC1E81408078362C6026214C74DC7D52381C0E2A1217D1E2E176BBA9485C44CA23E51DC2F549374A0B1550C8C84CB974381C70B95C44CAA6D1C3E572251CCC6D31788442211414241E5F4B241209A2D6C6CB951C8FF9722A5FBE7C1976BB3DE1CF4B173E9F4F90408914B478F8FD7E4C4D4D91D620E691F2670883936EDC41E8813200D4D4D4102B3B1A5A3C68180F05E8F150281449451CE5384ED021C4CB951C8FF9722AFFF0873FC4F1E3C7F1D8638F25F479E942A3D110CF634C93874AA5229EF79BA447CAEF108C5637AAD994534696122F5772A2FB25BA8DC120454A3B8440288C119B879F726AB7DBD1D4D4C4BFDFD9D92918173B75EA14FFFFC1C141C152FEB367CFF2E170AD56AB600A675B5B1B3F3E1F080404D3F74E9D3A258812185DC6F0F0B0E0B6BCA9A989CF736AB7DB71F1E245816BF4186FB2AE9168A7D1AE1E8F47E0DAD3D383C1C141FE756363A3C0357A297F535313BFC23619D7F3E7CF0B5E47BB8E8F8F0BEAF5E2C58B02D7E863D7D3D333EBB14BC43512ED742E57BD5E2FA8D753A74E095CA38FDDC58B17F963978CABCD66E393DEC4BA5AAD5641BDB6B5B5F1AE91F3CC66B3A1A8A8082FBCF0020A0B0BE396313E3E8EF2F2723EA7725D5D1D9FDB5A2E97E3C5175F44515111DADADA50525202A7D3C9E7638E3DCFA2EBF5ECD9B302D744DB845EAF179C67D165747676E2F0E1C371EB3593ED3712ED742ED74CB45FBD5E8F7FFBB77F8BEB9AC9F63B31318173E7CEDDE49A6E523A643432E54128CCA17AC94C872097CB515E5ECEBFAFD56A05CBD3A3A31B161616221C0EF3AF2B2A2A2016CFF4570A8542F020F0FF6FEF8E59D308E3388EFF14BD50A970778678F44E3209266BB64E421709E48574296EBE80E2DC77E15627A774E91B700B1DB235D0166A4125D42482BD0ED1E31EA3B4A6A736C9F7B3C58BFAE3BCF3CF73E7F3FCF7F6F6A2661AE9745A411044DB0E0F0F8D2523E2EF91CFE78D6DBEEF474D282CCB326617FF6BD6DDDD5DA55229F57ABD286B269331B2BAAEAB6C361BFD1DEFA095CFE78D6DBEEF47EBF8AF92B55C2E1B4B46C4B3E6723963BF7A9E67648D7F76AEEB1A0D4CE6F7EB9FB27A9EA7300CD5EFF79766751C4771FBFBFB46D6F86C67CFF3A2CF6E95ACB95C4E6767673A3939B993B5542AA95028E8E2E242D2ED7136CB3A3BCE6CDBD6703854B3D954AD565BFA1EE3F158C3E150AD564BD56A559665C9B66D8D4623D5EB759D9E9EEAE0E04093C9446118AAD56AA952A9DC39CEE2CB5B044110655DE59C701C27DA8FF3594BA592312336BE5F3779FE168B45B9AEABD168B434EB26CEDF62B168B4F18C67DDE4F9EBBAAE8E8E8E74737363645DB754B86071F76EB77BAFDEA61FCF7B7AF7E15CEF5FBF5426BDFDF6914012E22D338F8F8FA33698ED765B9D4E67E17316FDDFDF3E06ACDBB2EFF84447089F7FFC946F3FA318E0D198DD509E158545BD92E3DB67EED36739FE7AC036243A4278DBF9242B9356A35649241CF050CC1704E07FB6EC3B3ED19BCADBFEC92900E0FE122B08E3C92F7DBFBC56E05010F0F4303AC063905841F836B856184A81B3FDA61F0080D5255610BE0EAE9492F4C2A62000C043945841F832B852E1F98E76326B69B1000058B34447083EA3030078B0129B87F0E65539A99702006C01D77700009228080080290A02004012050100304541000048A2200000A62808000049140400C0D4D28969DD6E77933900005BB6B0410E00E0E9E1921100401205010030454100004892528D46837B0800006E2A03006E71C908002049FA0D9EECE23D1A2EA0420000000049454E44AE426082>|png>|388px|280px||>

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

  \;

  <image|<tuple|<#89504E470D0A1A0A0000000D494844520000018C000001130806000000250931DC0000000473424954080808087C086488000000097048597300000EC400000EC401952B0E1B0000200049444154789CECBD7B701BD97DEFF9C5932041022045F02DF13D224716C7A446233933BAD79E5CAF2C6B6F1C26F2AE57BBEBDCDA2D3B4E4DD9D96C92CD5A5292AA8D9571EC38E5C4D7558E5D726DEC99B9DEC9481EC99328F258B23CA4235214490D3914459122011222088000F17E0367FFE0A0874D82241EDD7D8E46FDA95215D00DE27CD48DC6419FF33BBF9F821042202323232323B30B4ADA0232323232328F07728721232323239313728721232323239313728721232323239313728721232323239313728721232323239313728721232323239313728721232323239313EA7C5E3C3A3A2A96878C8C8C8C0C031C3A7468DB7D797518BBBD998C8C8C8CCCE3CB6E3705F290948C8C8C8C4C4EC81D868C8C8C8C4C4EC81D868C8C8C8C4C4EC81D868C8C8C8C4C4EC81D868C8C8C8C4C4EC81D868C8C8C8C4C4EC81D868C8C8C8C4C4EC81D868C8C8C8C4C4EE4BD702F17FAFBFB51535323C65B4BCA3DBB1F4A05D05567A0AD2223232331EF3DF241AB56E2A9DA0ADA2ABBF2177FF117686C6C14BD1D513A8CCF7FFEF3E8EFEF17E3AD25E5DBBF98853B14C35F7DE623B45564646424E6FF7CFD5D74D757E00BC7DA68AB30833C24B503FA121542B1146D0D1919190A046349949788F29BFAB145EE3076405FA2462896A4AD2123234381502C09BDDC61F0903B8C1DD06BD508C5E50E4346E64944BEC3D88ADC61EC80B15483403409425B4446464652A2891452692277189B903B8C1DA82CD3209526F04512B4556464642424F8FE50B43C24C547EE3076C054A60500F8C272872123F324118CAE7718153AB9C3D888DC61EC80B14C0300F086E3944D646464A484BBC3D0CA1DC646A87418376EDCC0C2C2028DA6B778DCBF7F7FDBFD469D062AA5026B220F490D0E0EEEE82115838383989898A0AD81919111263CBEF5AD6FE1539FFA14AE5CB942D563626202232323541D321E838383B43570FFFE7DD13D3E189252EDE871E3C60D513D7261616141320F2ADDE7B163C7A054D2BFB9D9CD43A1000C3A8DE87718478E1C61E2781C3972040A8582B6067A7B7B692B0000128904AE5FBF8ECF7FFEF3543D9E7EFA69AAED6778FAE9A74108FD1090CECE4EB4B7B78BDA462896825AA5804EB37D872185472EECDBB70F4D4D4D92B445A5C3D06834349ADD422E1E957A0DBC22CF613C4EC7430AD46A7686019249FA61D5AC1C0F563C542A1554AAEDBFC88520144FA27C97E128293C72414A0F2A3F6B575757110E876934BDC523180CEEF81AA34EFC0EC3E3F1ECEA21051E8F077EBF9FB606BC5E2F131E8410984C26DA1AF0FBFDF07ABDB435E0F7FBE1F178686B20180C8AEEE18B24B839CC9D3C56575745F5C88570382C9907950E6379791981408046D35B3C76BB10ABCAB5A20F49391C0E26BE101C0E07135F082E978B098F743A8D3D7BF6D0D680C7E381CBE5A2AD018FC70387C3415B035EAF57748FB5509C8B92DCC963797959548F5C080402927950B9C7ECE9E9A1D1EC1672F130E834B0BAC5BD1BEAEEEE16F5FD7385158FCECE4EDA0A00D66FF51F3E7C485B032D2D2DB41500B0E321C578BD2F9280A974E73B8CA6A626C9E60E76A2B6B616B5B5B592B4457FA69571AAF45AACC961B532324F146BE1044CBB0C493D8950E93046474761B7DB6934BDC5C36AB5EEF81A63A946F495DE131313BB7A48C1C4C404E6E6E6686B607A7A9A098F542A85FDFBF7D3D6C0DCDC1CA6A7A7696B606E6E8E897067ABD52ABAC7FA1DC6CE435256AB15A3A3A3A27AE482DD6E97CC83CA90544747074A4A4A6834BDC543ABDDF9435159A6453245E08F2460D8E516B5505A5A5A9888506A69696122EA63EFDEBD4C84F72A954A3C7AF488B606EAEBEB990867ADAFAF472A453FDD7F4D4D0D2A2B2B456D632D1CDFF50EA3A6A68689A088CACA4A94959549D216950EC36834D268760BB97818DFEF24FCD1A4681D86C1C046453F563CCACBCB692B0000140A0513D16B7ABD9EB60200763C4A4B4B515A5A2ADAFB471329C493E95DA3A4C4F6C8159D4E079D4E27495B5486A4C2E1301209FAF999C2E130E2F19DE7272AF5EB1F1A4F48BC798C4824B2AB8714442211C46231DA1A8846A34C78104224BB107722168B211A8DD2D6402C16432412A1AD81783C2EAAC7DAFB61F495BB0C49C5E371269607241209C93CA8CD61B0108E96EB1C86420151E731E4390C3EF21C061F790E838FD87318996B7DB73B0C56E6309697973FDC7318C78E1DA3D1EC1672F1502A1430EA34A2464A1D397244B4F7CE07563C58490DA256ABF1EEBBEFD2D6C0810307682B0060C743ECB0EBB5F74713769BC3E8ECEC642204BCB9B919CDCDCD92B42587D5E680B14CFC482919191936F0451228D3AAA055C95F8F9BA17244A6A7A79958523F3D3D8D9595955D5F672AD372BF3AC460767636270FB1999D9DC5D2D2126D0D2C2C2C30E1914AA524FBE5B6134B4B4B4C64775E5A5AC2ECEC2C6D0DACACAC88EAE18D24765DE59DF16061A870757555320F2A43526565654C8491969595ED1A560BAC57DE13339F546969694E1E62535A5ACA44B87369692913E1BD0A858289C9779D4EC74438AB4EA76322DC59ABD58A1A9DE4CF619577C643AA70D69DD068341FEEB05A167EB501B97B984AB578E4F589E6C1427A01801D8FBABA3ADA0A00D6D761B070E767369B692B0060C7A3AAAA0A555555A2BDBF27B4FB1A0C293C72C568344AB654411EA4CB015399462ED32A23F384E08F8AB748F77147AEB89743A53B5399868BCD1603B9E21E1F562AEE2593491C3A7488B6865C716F136257DCF384E2A8CC610E43AEB827112FBEF8228D66B790AB4765991689541AA15812FA12E10FD90B2FBC20F87B16022B1E870F1FA6AD00603DAC968538FBC729BBB31474757589FAFEFE6892CBF0B09B87D82EB9D0DADA8AD6D65649DA9287A47220F3E1F1CAA1B532007EF8C31FC26C36A3A6A606FFF44FFF0400B87BF72EDADBDBD1DEDECEDD1D65DB26C336C9F47ADEB84A39536D56A8DC61D8ED76949797A3A2A28246F33C8FB2B2B25D278CAAF4EBB7A7DE70028D26E1A3331C0E07743A1DF51C5B0E87031A8D86FA44DEEAEA2A944A25758F743A8DEAEAEA2DDBFFF88FFF18D7AF5F0721049FFCE427F17BBFF77B387BF62CCE9C3903003877EE1CAE5CB992755B21783C9E6D5DA4C4E3F120914848567B613B7C3E1FA2D1A8281EFECC2AEF1CEE307C3E1FC2E130EAEBEB05F7C8874020806030288907953B0CAFD7CB44B8A2D7EBCD29274D66024CACCA7B7EBF9F891C3D7EBF1FA15088B606028100131E8490AC09F71A1B1BA1542AA1542AD1D0D00000B87DFB36FAFBFBD1DFDF8FA1A1A16DB71542281462A24265281462A2746E241211CD2393D121977518914884894A99B1584C320F2A1D466D6D2D6FD26A606080B710E795575EE11E4F4D4D617C7C9C7BFEFAEBAF7389FA56565670FDFA756EDFF5EBD7B930C8783C8ED75F7F9DDB373E3E8EA9A9295E1BDDDDDDA8ABABC3ECEC2C060606B87D6FBEF9265722D4E3F1E0ED6BFF0643E9FAC4F7C0C0002FEF9310AEF5F5F578E79D77B87DC3C3C33CD71FFEF087DCE3D9D9590C0F0FF35C3319553D1E0FAE5EBDCAEDCBD7B5B9B9197BF7EE85D56AE5B95EBD7A95730D068378F3CD3779AEDB9DBB425D5B5B5BF1AB5FFD8ADB373E3ECE737DE59557B8E36AB55A79E7EEEAD5ABDCB92BD655A954C26AB5221A8DF25CFFE88FFE089FFDEC67F1FCF3CFE3DBDFFE365E7FFD7578BD5E188D467CE52B5FE1C282BD5E2FFEE55FFE05A74F9F86D7EB2DD875EFDEBDF8F5AF7FCDED9B9A9AE2B9BEFEFAEBDC712DF69AC890CD55AFD7A3B3B3131E8F87E72AF5F55B5757C7FBFFEF76FDE6734D8CBCBBDE86B154B3AB2BB05EA532180CF25CA5BE7EABABABA5AB9649F2E0CE9D3B39BDEED2A54B3BEE4FA552241A8D72CFE3F138492693DCF34824C23D4E241224914870CFA3D12849A7D3DCFBC462316E5F2C1623A9548A1042483A9DE6B5B1F97D36B6914C26493C1EE7B591799F4C1BBFFFE33BE49521AB24AEF1783C2FD7EDDA28D435994CE6E5BA5D1B62B94622119EEBC63684747DF9E5970900F2CA2BAFF05CF7EFDF4F464646C8C8C808E9ECEC24D1689454575713B7DB4D1C0E07A9ABAB238410525D5D4D96979789DBED2666B35930D7442291F37115EA9AD8F83E8FE3F59BABEBB5F796C967BE3B58942B8DEB572876FB8EA73287F1EB5FFF1AFBF6EDE316CE6D5EF5BD31A5B45ACD57DCB81259A954F256486F7CAC502878AFDDFC3E3A9D0E030303A8ABAB436767276F6571B636F6E84BE009C54571BD7DFB36AAAAAAB844663BB5A152A97675CD90AFEBF0F030CACBCB71E0C0015E1B3B1D57315CC7C7C7A1D56AB96477D9CEDD766D08E99A4C26F1CC33CF40A150F0DED7E17070FF0797CB859292121C3E7C98FBD59D09C53D7CF830F78BF1B9E79E2BD8756A6A0AF1789C4BCA28E635B1DDF1D06AB5989A9A423018C4912347723EAE62B8CECECEC2E3F170C93285BC2642F134377FB19B6B26A5CFB163C744BF26B2B966B05AAD585C5C9424A92B950EE3D0A1434CA4063974E8D0960FF476184AD5A22520ECE9E9612215464F4F0F944AFA8173DDDDDD4CA4A050A954989999D9B2FD1BDFF8064E9C380100F8E637BF0900387FFE3C4E9D3A0500B878F1E2B6DB0AA1A3A383898A7B1D1D1D48A7D3B435D0DCDC2C5A56825CD760643C1A1B1B45F1C887868606C956E153CB25C502F97854966931E31067E29185AA5D003B1E2C142D02D67FE5662B5CF4852F7C015FF8C21778DB7A7B7BF1F0E1C35DB715020BF9BD00763CC4CCBBE68F26728A90CA78B090034EA3D148F6039CCACFC94C581C6D7C3E5FCED1492611539CCB51527C82C120131E841026CAC5864221264AC53E095152F9DC61442211F87CE2E598CB9568342A9907950E636E6E0E6B6B6B349ADEE2E1743A737A6D659956B432AD168B25670F31B1582CB0DBEDB435B0B4B4C484473A9D6662C8C16EB73391EEDD6EB7C362B1D0D680D3E914CDC31FC96D9577C68385CA906B6B6B9279509BC360817C3C8C651AC49369441329E834C2CE37B0927281150FC942047761BB390CA9E9E8E8A0AD00801D0F31B35DAF85E339AFF296B2D2DD4ED4D7D74BB67890FE0CE76342A620BC984908656464E8E28FC8996A77824A87313131C18526D264626202369B2DA7D756EAC55BED3D3D3D9DB387984C4F4F3331E4303B3BCB84472A95427B7B3B6D0D582C16262ADD592C16262ACCD96C36513CFC9104926992F31C86CD6663224798C3E190CC83CA90544343031391520D0D0D3947E464C635C5B8C3A8ADAD6522DAA2B6B636E7306331319BCD4C84F72A954AB8DD6EDA1AA8AAAA62229CB5AAAA0AC96492B6064C269328DF1FFEE8FAFF2DD7390C93C9C444445F4545856461F954BE1D682751CB908F8746A584BE449CB518B493EC6560C5C36432D15600B01E56CB42AE2083C1405B01003B1E6245AE65F24865461372F160218AAEACAC4CB21FE0F47FC63D46984A35DC874A4646E6C3853F928002804127CF616C875C712F8F4A77957A2DD64408AD952BEEF1912BEEF1912BEEF111ABE2DE5A787DC25BA5CC2DCB805C714F221EB78A7B198CA5E22CDE63A5D21D2B1E72C53D3EAC843BB3E22156953B5F24810A5DEE5F8972C53D991DA92CD3C02B87D5CAC87C28590BC7B9626932D9A1B6D23B93AF9E2673737370B95C39BFDE54A615A54CABC562C9CB432CE495DE7CE495DE5B3D58087776B95CA278F82289BCE62F5C2E17132BBD3D1E8F641EF21D461E549669444B0F2223234397B5907C87B11B54E63058493190AF87B1548368228578320DAD5AB8BEB6A5A545B0F72A06563CF6EEDD4B5B01C0FA3A8C478F1ED1D6A05E333A032B1E66B3599474DEBE3C57798BE5912F5555559285C4CB7718799059012A87D6CAC87CF8580B2772CE23F5A42287D5E611CE6A2ACBA40711761E430EABE52387D5F291C36AF98811569B492C9AEB2AEF8C871C562B018F6B58AD587718AC84B3B2E22187D5F261259C95150F314259B955DE39E691CA78C861B532DBA2552BA1D3A8442BA424F378A05028B87F99741977EFDE457B7B3BDADBDBB9BBA36CDB64D824734DCB996A7786CA1DC6EAEAAAA4F94F76F2D0E97479E583A9D20B5F48C9E3F140ABD552CF4BE3F178A056ABA9E70CF27ABD502A95D43D082159F35A65EA6BFFE8473FC2E5CB97010067CF9EC59933670000E7CE9DC3952B57B26E2B04BFDF8F743A4D3DC796DFEF473299A49E732C180C221E8F0BEA91492A9A4F9454301844341AA59E1B2F1C0E231C0E4BE241E50E63797919818038F5B1F3F5C837B99C4984D5DE0E87838924770E878389F5312E978B098F743A8D3D7BF66CBBFFADB7DEC2C993270100B76FDF467F7F3FFAFBFB313434B4EDB642F0783C4CACD3F1783C4C9425F07ABD827BF8220994A89528C923FAD1EBF562797959508F42080402927950E930F6EEDD8BB1B131EEF9D0D010E6E7E7B9E76FBCF106F778666606939393DCF3CB972F231E5FFF85EF743AF1CE3BEF70FBDE79E71DAED4693C1EE77EFD01C0E4E424AF7ADA1B6FBC819E9E1E343535617E7E9E77415FBD7A952B21BBB6B686EBD7AF73FBC2DE552C3A3CBCF729D675DFBE7DBCB1F2B1B1319EEB6BAFBDC63D9E9F9FE71DBBAB57AF72F5AF37BB0E0D0DF1EA6CECE6DADEDE8E969616D86C369EEBF5EBD739D7502884AB57AFF25CB73B7785BA767676E2CE9D3BDCBEC9C9499EEB1B6FBCC11D579BCDC63B77D7AF5FE7CE5DB1AE4AA5120F1F3E442C16E3B9BEF3CE3BB0582C78FBEDB7F1C94F7E12972F5F86D7EB85D168C497BFFC65EE979ED7EBC5F5EBD771FAF46978BDDE825D5B5A5AF0EEBBEF72FB66666678AE972F5FE68E6BB1D744866CAE46A311DDDDDD585B5BE3B94A7DFD363535616A6A8ADB97CFF5BBDD35B1168A434BE279B96AB55AF4F4F420140AF15CA5BE7E6B6B6BA59B5F227970E7CE9D9C5E77E9D2A51DF7279349E2F7FBB9E7A15088C46231EEB9D7EBE51E47A351128944B8E73E9F8FA4D3694208218944820483416E5F3018248944821042483A9D263E9F8FDB17894448341ACDDA462C1623A150887BEEF7FB493299E45C038100B7EFDB3FBF47FEF49FEF0AEA9A4AA578AEE17098E7BAB6B6C6730D87C33CD7542A95D535140A91783C9EB76B3C1EE7B90602019EEBC673170E87B73D7742B94622119EABD7EBE5B96E3C778140803B77C5BABEFCF2CB040079E5955778AEC16090FCFCE73F27CF3EFB2CF739ABAEAE266EB79B2C2F2F93C6C646420821D5D5D5C462B110B7DB4DCC66B360AED16894E7EAF3F9B8E32AD435B193EBE37CFD6EF739FBC75F3D247FF8DF461FDBEB572876FB8EA7328731323282A6A62654545400C096B90CA3D1C83D2E2929E1EDDB38AEAD56AB79057FF47A3DF778E38424802D854E8C462386868650535383B6B6365E01A38C17B05ED779E3DC82D9A8C7BD95B0A0AE77EFDE85C964E25E5F5A5ACA7B9F8D63D79B0B2DEDE49AEF711D1B1B835EAFC7FEFDFBA1D17C30F9B7F13D954A25AFCDCDAE1BDB28D4757272125AAD967BAF6CE72E8346A311CD35954AE1C08103502814BCF7D5EBF5B87AF52A4E9E3CC97DCE0E1F3E8C37DF7C1300F0D18F7E14C07AB457E617E373CF3D57B0EBCCCC0CE2F1380E1E3C0840DC6B224336D7999919844221F4F5F5F15CA5BE7EE7E7E7E1F57AD1D7D70760FDDCE57AFD6EE7BA168EA3BAA294D7CE6EAEF3F3F3703A9D387AF428EFB5525FBF369B0D369B0D478F1E85D850E930BABBBBB77C906879E45BE9AE52847C521D1D1DBC8B93161D1D1D9255EEDA89D6D6562814B9A5981613A55209ABD59A75DF5B6FBD85575F7D957B7EFEFC799C3A750A0070F1E2C56DB7154253531337D14E93A6A626A45229DA1AA8AFAF177C82D71F49A2CE985FF5BCFAFAFA1DE7B8A4A2BABA9AD7F18809950E63634F4993423C8CA51A8462492452696854C24C01D18E06CAC08A07ED68B10C0A8502C16030EBBE070F1EF09EF7F6F6E2E1C387BB6E2B848DBFBC69C28A476969E9965FF1C5B2168EA3BB3EBF2F5D313C0A41A7D349562A96CAA477381C4622417F2D43381CE626B572A55284D5DE9148246F0F3188442288C562B435108D4699F020843051B339168B211A8DD2D6402C16432412A1AD81783C2EB847BE79A4321EE17078F7178A4C229190CC834A87313A3ACA4438DAE8E8E8B6430EDB617A7F25A8901DC6C4C444DE1E62303131C144BAE6E9E969263C52A914F6EFDF4F5B03737373989E9EA6AD81B9B9392616205AAD56413DD284C01F4DE49DA9D66AB532910960797959320F2A4352C78E1DA3D1EC160AF1C8DC61AC4584BB233872E48860EF550CAC78F4F6F6D25600B03ED1B9319C9516070E1CA0AD00801D8FCECE4E41DFCF1F498290FC6B797776760AEE5208CDCDCD686E6E96A42D3935489EE8342A68D54AF8E4CA7B32321F0A5683EBC39F7BCAE55A18BB41A5C3989E9EC6EAEA2A8DA6B778ACACACE4FD777BF45A411310CECECE16E42134B3B3B34C54765B585860C223954A49F6CB6D2796969698C8EEBCB4B484D9D959DA1A58595911D4C31558EF30CCE5F9456EAEACAC303154B8BABA2A990795212993C9C44458ADC9642A28CAC1502A6C6D6F83C1C0C4E4AAC1606022BCB7A2A2024A25FD9B5F8542C1ADC2A5895EAF473A9DA6AD01BD5E9F7718BA189496960A1A76ED0AC6602CD5E45D14ADB4B4948970E7929212C9F28C51E93058A9DC55A8476599B07718B5B5B582BD5731B0E2413B995B06A552C9C49D30ED647F1958F1301A8D8286E63B0331982BF2FF012BB447A154545448B60E83FECFB8C710539906FE4892B6868C8C8C00B80AEC309E44E48A7B0554BAAB2CD3C21D126E9D805C718F8F5C718F8F5C718F8FD015F75C8158DEF317190FB9E29E043CAE15F732184B35F04785BBC360A5D21D2B1E72C53D3EAC54BA63C543E82A77AE400CFFA133FF6150B9E29E4C4E549669E08F24904CD39FF0929191299C442A0D6F382E0F49E508950EC36AB5C2E7F3D1687A8B4721857A32ABBD855A8B61B3D998281864B3D99828D4B3B2B2C284473A9D465D5D1D6D0DB85C2E26C2AE5D2E17AF3E032D3C1E8F601EABC13808505087E1F17898C8D0E0F3F924F39073491590C3C99459ED2D50A4144BB9A458C859C48A07218489F0EF6834CA440E27563C84CC25E50CAC7FCE0AE9309EC45C52D4D29BB340A11EA6F793940955AA9585F402003B1E528DC7EE864AA562E217E4DEBD7B692B0060C7A3AEAE4EB03B3F5720068D4AC98D1AD0F22886EAEA6AC942D1E5398C02D097A8A15529055D8B212323233DAE400CD5E55AD0AFBEF27840A5C318181860E297DBC0C040C129064C65C2ADF61E1E1E6622E5C2F0F030AF56322DC6C7C799F048269378E69967686B606A6A0AE3E3E3B43530353585E1E161DA1A989D9D15CCC31588A1A6A2B02C0BB3B3B318181810C4A318AC56AB641E5486A40E1D3AC4440A8A43870EF1CA2EE6C39EF2122E6959B1F4F4F43051E9AEA7A78789941CDDDDDD4C54DC53A954989999A1AD818E8E0E2652507474743091A2A4B9B9194D4D4D82BC57318BF69A9B9BD1D8D828884731343434C06C364BD216956F87B2B232263A8CB2B2B28273E3D45694C0E117A6C3282D2D6526470F0B93BC3A9D8E090F85429175F2DDED76E3339FF90CF47A3DD7B1DDBD7B17EDEDED686F6FE7161D66DB56082525254CE41A2B292961A2C29C56AB15CCC3155C1F922AD46373DD6D1A68341AC93CA8DC61F87C3E262E029FCF57F087AFCEA8C3BF3F740BE2E1F7FBA1D168A85F8C7EBF1F2A958A7A29CE603008854241DD831092B55CEC57BFFA55A452292C2D2D71F995CE9E3D8B3367CE0000CE9D3B872B57AE64DD5608A150685B172909854248A552D44BF9462211241209413C0ACD2395F188C7E3D4F349652A544AE141E50E636E6E0E6B6B6B349ADEE2E1743A0BFADB5A830E2B7E61423F2D164BC11E4262B15860B7DB696B60696989098F743A9D75C8E1EAD5ABF8CBBFFC4B5E32BEDBB76FA3BFBF1FFDFDFD181A1ADA765B21D8ED7626D2BDDBED76582C16DA1A703A9D8278F82209C493E982E7309C4E27139521D7D6D624F3A0D261B4B5B5E1EEDDBBDCF3A1A121CCCFCF73CFDF78E30DEEF1CCCC0C262727B9E7972F5FE6D62C389D4EBCF3CE3BDCBE77DE7987FBE28DC7E3B87CF932B76F727292371EFDC61B6FE0D0A143686E6EC6FCFC3CEF82BE7AF52AD7A1ADADADE1FAF5EB3C579BCD863AA30EF1641AFFEF4F2E16EDDADEDECE3B1E6363633CD7D75E7B8D7B3C3F3F8FB1B1319E6B2605F776AE1BFFCF3BB9767575A1A3A303369B8DE77AFDFA75CE35140AE1EAD5AB3CD7EDCE5DA1AEDDDDDDBCE3313939C9737DE38D37B8E36AB3D978E7EEFAF5EBDCB92BD655A95462666606B1588CE7DAD6D6867FFCC77F84D168C477BEF31D5CBE7C195EAF1746A3115FFEF297B91047AFD78BEBD7AFE3F4E9D3F07ABD05BB767474F0820066666678AE972F5FE68E6BB1D744866CAE7BF6EC414F4F0FD6D6D678AE525FBFCDCDCD78F0E001B7AF90EB17589FBF585B5BE3EE30F2752D2D2DC5A14387100A8578AE525FBFF5F5F5D2E53C237970E7CE9D9C5E77E9D2A51DF7C7E371E272B9B8E75EAF9784C361EEF9CACA0AF738180C924020C03D773A9D24954A11420889C562C4E3F170FB3C1E0F89C56284104252A914713A9DDCBE40204082C160D636C2E130F17ABDDC7397CB45E2F138E7EA76BB79AE91488438FC5172F21F06C8C0E442D1AEC96492E7EAF3F978AE76BB9DE7EAF3F978AEC9647247D76CFFE79D5C239108CFD5ED76F35C379E3B9FCFB7EDB913CA351008F05C57565678AE1BCF9DDBEDE6CE5DB1AE2FBFFC3201407EFCE31FF35C5B5B5BC9AD5BB7C8DDBB77C99E3D7B88D3E924D5D5D5C4ED7693C5C545B26FDF3E420821D5D5D564666686B8DD6E62369B05730D06833C57A7D3C91D57A1AE899D5C3F0CD72F2184FCFBDC2AF9EFBE75834413A9A25C59B87E8562B7EF782A7318D3D3D3BCDA0B9BC7DE36EEDB3C8EBD311A40ABD5F2268B2B2B2BB9C74AA592F7DACDE3BFB5B5B5989898405555159A9A9A78F3071B17C168341ADED043C6555B42A0562A90D07C30D954A8EB83070F78F9EC378FCD6E5C1C545A5A9AB7EBC6FFF34EAED3D3D3282D2D454B4B0B6F7E69E37BAA542A5E9B9B5D37B651A8EBECEC2C2F2822DBB9CBA0D3E944734DA552686F6F8752A9E4BD6F676727175DA7502860369B71F8F061BCF9E69B008083070F02584FA298C9AAFADC73CF15EC6AB158904824385F31AF890CD95C2D160B229108BABBBB79AE525FBF369B0D8140806BA7D0CF992B18C31E43194ADE2F9C94AF6B26A54F4F4F0FEFB5525FBF0E87030E874392E490543A8C86860626A20B1A1A1A0A9E78572A14300B1429555B5BCB4494546D6D6DC161C64262369B9908EF552A9570BBB706369C3F7F1E9FFBDCE7B0B6B686BFFDDBBFE5B69D3A750A0070F1E2C56DB7154255551513E1AC5555554826E9D78131994C827C7FD389B1BE0000200049444154380B4C6BBED18376E00EB05E4049AAB07C2ADF0EAC54542BD6A3CEA0C38AAFF8896F562A99B1E22155B9C9DD502814F07ABD5BB63FFBECB35B26197B7B7BF1F0E1C35DB71502EDA8A40CAC7808152D566CE1A4F2F272EA916BC0FAF200A97E8053F919974824904AA568342DA8479D51984829968E070BBF2093C924131E0098B8E362E578249349269286A65229413CD6577917DE6108E5512C527A504B0DB2B8B848A3E92D1EC5A4E4A831E8E010A0C3602935C8BD7BF7686B607C7C9C090F565283DCBB778F89D420F7EEDDFB50A50629F60E8395D4208B8B8B1FEED4208F7BC5BD0C75061DDCC138922902B5AAF05416AC54BA63C543AEB8C787954A77AC780851E54E88C24972C53D99BCA833E89026042E81724AC9C8C848035738A98849EF27116A2BBD59A830373737575465B73AE37A8484DD575C31178BC5C244853979A5379FED567A4B8DBCD29B8FCBE52ADAA398C2491B3D5858E9EDF1783EDC2BBD3F2C54E8D428D3AA044B42282323230DAE400C6A9502957AFAE1EC8F1354E6303A3A3A6834BB05213C6A0508AD6D696929DA430858F160A5B29B52A9C4A3478F686BA0BEBE9EB60200763CCC6673D1E9BC5DEFAFC1282689BE101E42505555255948BC7C87512475461D777B2B2323F378506C84D4930A950EE3C68D1B585858A0D1F4168FFBF7EF17F51E75061DEC45DE610C0E0E16ED210483838345D56D108A919111263C92C9A47449DD7660626202232323B435303131C1A53AA1C9FDFBF78BF610A2C3B87FFF3E6EDCB851D47B08C1C2C282641E72586D91D41A74F8C5B4A3A8F760259C95150F39AC960F2BE1ACAC780811CAEA0AC6B0BFAE62F717EEE22187D5CAE4459D4187403489509CFE4A5C191999DC28A670D2930C950EC36EB7231008D0687A8B87CFE72BEA3D6A0DEB1F3A87AFF0482987C351B48710381C0E26C29D57575799F048A7D34CE43DF3783C585D5DA5AD018FC70387A3B8BB6921F0F97C4579145B3869A3070BE1DF814040320F2A1D86CBE542381CA6D1F4168F623BAE5AA30E0AA0A814211E8F87890ED4E3F1C0EFF7D3D6C0DADA1A131E8410EAE53781F5D2B92C54A8F4FBFD4C74E48140A0288FD5F717DA167B8711080498583F150E8725F3A03287C1CA58A8101E5A9512957A6D5113DFDDDDDD457B08012B1E9D9D9DB41500ACD7A81022DB6CB1B012EECC8A47535353517FEF0A08D36134353515ED2204B5B5B5BC5A196222CF6108409D51982484323232E2E30CC46028D5708593647287CA11DB5CAB96169B6B11174A6D45711DC6E65AD3B4D85C8B98169B6B4DD322954AE1C08103B435B6D49AA6E9B1B11E352D36D7C5CE1757918593367A6CAC254E8BCDF5D7C584CA90547777374A4AE847287477770B52E9AECEA8C3ACB3F039888E8E0E5E49525A7474744856B96B275A5B5BA15014B3065718944A25AC562B6D0D3435358110425B034D4D4D4CD46DA9AFAF2F2A1841A8457BF5F5F5D8B3674FD1EF532CD5D5D5BC12CF6242E50EC368343251DAD06834F2EAEB164A9D4107873F86422F6983C1208847B1180C862D758D69505E5ECE848742A1403018CCBA7DE33F00B87BF72EDADBDBD1DEDECE2D3ACCB6AD10F47A3D1395DDF47A3D1355F74A4B4B8BF270058B2B9CB4D18385A0089D4E279907953B8C70380C8D4643FD5775381C865AAD2EFA2EA3D65082442A0D773086EA026E75239108542A15F5BADE9148044AA592FADD5F341A8542A1A0EE4108D9F687CDE65FFC67CF9EC59933670000E7CE9DC3952B57B26E2B84582CB6A38B54C46231A4D369EA3F6EE2F13852A954C11EAE400C2F74141F2E1D8FC7914C26252B8FBA1D894402894442120F2A77181313134CC4734F4C4C083297924973EE2C306BEDF4F43413733AD3D3D34CA4AF9E9D9D65C2239D4EA3BDBD3DA7D7DEBE7D1BFDFDFDE8EFEFE7C693B36D2B048BC5C24445468BC582E9E969DA1AB0D96C057B2453046BA1E20A276DF46021858DC3E190CC834A87D1DDDD8D070F1E70CF4747477963C56FBDF516F7786E6E8EF7E1B876ED1A57BF7675759577210E0D0D710B9C128904AE5DBBC6ED9B9E9EE6E58C7FEBADB770F4E851B4B5B5C16AB5F25240DCB871835B48E7F3F978E50F474747798B64DE7AEB2DECD19740AD5260ECFE7C41AE5D5D5DBC2F848989099EEBA54B97B8C756AB95F7E1B871E306B7A62517D70CD98EEBC18307B17FFF7ED8ED769EEBC0C000E71A0E8779796B262626B63D7785BA1E3C7890773CA6A7A779AE6FBDF516775CED763BEFDC0D0C0C70E7AE5857A55289A9A929C4E3719EEB73CF3D87CECE4EB4B5B5E1673FFB19AE5DBB06AFD70BA3D188975E7A099595950000AFD78BC1C1419C3E7D1A5EAFB760D7FDFBF7F3BCE7E6E678AED7AE5DE38E6BB1D744866CAE757575E8EBEB83CFE7E3B94A7DFDB6B5B561797999DB97CFF57BE3D608E2890437E95D8CABC160C0D1A347110E8779AE525FBF4D4D4D387AF4282481E4C19D3B77727ADDA54B9776DC1F8BC588CD66E39EBB5C2E120804B8E7168B857BECF3F9C8DADA1AF77C717191A45229420821914884381C0E6E9FC3E1209148841042482A95228B8B8BDCBEB5B535E2F3F9B2B611080488CBE5E29EDB6C36128BC53857BBDDCE730D85425BDEE78B3FBA432EDC9C29C8359148F05CDD6E37CF757E7E9EE7EA76BB79AE8944222F5742763EAEA15088E76AB7DB79AE1BCF9DDBEDDEF6DC09E5BAB6B6C673B5582C3CD78DE7CE6EB773E7AE58D7975F7E9900203FFAD18F78AE0E8783F87C3E72F9F265D2D8D8481617174975753571BBDD64616181B4B4B4104208A9AEAE26939393C4ED7613B3D92C98ABCFE7E3B92E2E2E72C755A86B6227D7C7F9FAFDD5A4859CF8F6AF883B1813CC9585EB572876FB8EA7D261DCBB778F77826971EFDE3DDE092A863F7FF33DF2AD9FCF14F4B70F1E3C10CCA3181E3C78C0FBE0D3627E7E9E098FAF7DED6BA4B9B999BCFAEAAB5BF6A55229F2F6DB6F93868606420821274E9C20172E5C20172E5C20274F9EDC765B212C2E2EF2BE7468B1B8B8481E3C78405B83D8EDF6823D7E3EB542FABFFB6B9216C8E3DEBD7B02BC5371B85C2EC13C76FB8EA732E96D3299A84F68663C849AC0AB33EA6075870AFA5B83C1407D4233E3413B1001002A2A2AA054D25F54A55028100A6D3DA799E8A8D6D6567CFFFBDF07009C3F7F1EA74E9D02005CBC7871DB6D85A0D7EB914EA70BFE7BA1D0EBF5D4033380F5E8A442C3AE1F7923A837E98A2A9CB4D1833010EE5C52520293C924495B543A0C562A7709E9516B28C1ED85C2F2DB48B5AC7F3758F16021E11FB0BE0E235BD2BF6C5F12BDBDBD5BD28864DB5608525553DB0D563C8C4663C161A4B6B5089A2A8589262AC643482A2A2A3EDCEB303E8CD4197470876248A4E8FF12949191C98E6D2D8CA64AFA6B9E1E57A87418D7AE5DE34511D0E2DAB56B989A9A12E4BDEA8C3A1002380A08ADBD79F3A6601EC570F3E64D26523FDCBA758B098F64328923478ED0D6C0D8D8186EDDBA455B03636363B879F3266D0D4C4D4D15E4914A13ACF8A2D82BD01DC6D4D4142F3A8A1673737392795019923A7EFC388D66B720A447AD617D0E62C51FCDFB17CCC73FFE71C13C8A81158F8F7DEC63B41500AC57DC1B1E1EA6AD81BEBE3EDA0A00D8F12834BF97DD1745324DD06812E60EE3C081034CE41AEBE8E840474787246DC9435202515EA286BE440DA79CB5564686491E79230080467948AA60A8741856AB95890A7356AB55D0823075061D560AE8306C361B1385696C361B13056156565698F048A7D3A8ABABA3AD0197CB85959515DA1A70B95C4C6424F0783C05792C79C2D853AE45995698049B1E8F8789E4943E9F4F320F6AB9A458482E170E87050DEFAD33E80A2AD51A8944A0565339155B3C58081364E57810429808FF8E46A34826E9D78C8F46A38846E9DF41C7E371442291BCFFEE913722D87054C68385CAA1894442320F6AE9CD5940688F5A6309DE5DCAFFCE89950A73AC78B4B6B6D25600B05E718F855F907BF7EEA5AD00801D8FBABABA82EEFC1EAD45D0522DDC0FD5423D84A6BABA5AB25074790E43400A1D92929191119F2539A4B668A874180303034CFC721B181810340B688D4187502C89602CBFE183E1E16126B2910E0F0F3311DE3B3E3ECE84473299C433CF3C435B03535353181F1FA7AD81A9A92926A2C6666767F3F6F04712084493820E49CDCECEF29205D2C26AB54AE6416548EAE8D1A34CA47E10DAA3EEFDD05A873F8A7273EE056FFAFAFA98381E7D7D7D4C54BA3B78F0206D0500EB61B52C745CFBF7EFA7AD0060DD838539AEB6B636B4B4B4E4F537B6B5F5398FBD55C2D58C28C4430C9A9A9AD0D0D020495B543A0C16F21501C27BD41A4AA050002BBE28DAF3E8303EACC7A3505898F0CEC0C264332BC783150F954A957729E1A5B5304AD44A416A7917E32106527A50F959EBF3F99888B6F0F97C05455B6C8746A5C41E7D49DEF3187EBF5F508F42F1FBFD5993ED494D301864C28310C24469D4502894B5542C0D0FBFDF4F5B039148246F8F656F140DA6520879031D894498581E108D4625F3A0D261CCCDCD616D6D8D46D35B3C9C4EA7A0EF596B28C93B3D88C56211DCA3102C160BAF600B2D96969698F048A7D3686C6CA4AD01BBDD8EA5A525DA1AB0DBED4C5442743A9D797B2C79849FF0763A9D4CA4385A5B5B93CC83CA3DE6A143876834BB05313C9A2ACBF24E73DED3D323B84721B0E2C14AD8B54AA5C2CCCC0C6D0DC9D23EEC062B1ECDCDCD79FF8DCD1BC17F7CCA2CB847212E42535F5F2F590670FA33AD1F32DACC7ACCAF86C0C0DCA08C8C0CD6EB783B0AC8F126B3152A1DC6E65AB5B4D85C8B5808DACDE588C453B0FB729F93D85C6B9A169B6B11D36273AD695AA4522926229436D79AA6E9B1B11E352D36D7C5DE8D655F04A93411BCC3D85C4B9C169BEBAF8B099521A9E6E66694950917DE568C87D095EE5AF69441A950607E3584861C63BE9B9A9A98A864D6D4D4C444244C7D7D3D1361C64AA5120E8783B6066A6A6A98A8B8575353C344D4D89E3D7BF22A18F4682D020520E81A8C8C070B298E8C46A364118E54AECAEAEA6A263A8CEAEA6AC1A360741A151A4C3ACCBB729FC7A8AAAA62221AA7AAAA0A068381B6064C2613131E0A85025EAF37EB3EA7D3C9FBB171F7EE5DB4B7B7A3BDBD9DFBF59B6D5B21180C06C94A70EEE6C142D5BDF2F2F2BC3C6C6B11EC292F814E236CE86979793913D521CBCACA24F3A0F27332914840A954528F6116CBA3CD5C8E87AEDCC320593A1E0A8582FA5D46E6572C6D8F9D1CBEF7BDEF2116FB201AEEECD9B33873E60C00E0DCB973B872E54AD66D85C0CAF14826932084505FAF934AA5904EA773F6B079C3D82BC2FC45BE1E6221A507B5D4208B8B8B349ADEE221464A8E76B33EAF3B0C965283DCBB778FB606C6C7C799F0D82E35483C1EC7F7BEF73DDEB6DBB76FA3BFBF1FFDFDFD181A1ADA765B21DCBB778F89D420F7EEDD7B2C53833C5A8B8852038395D4208B8B8B927950E9309E7DF6593C7AF4887B3E3131C1CB6FFFF6DB6F738F2D160BEFCBF4E6CD9B48241200D6F3D16F2CE5393636C6D595482412BC328EB3B3B3BCD8EDB7DF7E1B2FBEF822BABABA60B3D9784306838383DCC220BFDFCFFB704E4C4CF0C6B5B3B9B65597632D1CC75B6FFF3227D743870EF1EA1D4C4F4FF35CAF5EBDCA3DB6D96CBC09D0C1C1416ED15F21AE196EDEBC8923478EA0A7A7070E8783E73A3C3CCCB94622110C0E0EF25CB73B7785BA1E3E7C98E73D3B3BCB737DFBEDB7B9E3EA703878E76E7878983B77C5BAAA542A8C8E8E221E8FF35C7FF0831FE0B9E79E03F0C1E7CCEBF5C26834E20FFEE00FB8E134AFD78B3B77EEE0F4E9D3F07ABD05BBF6F4F4F086C62C160BCFF5E6CD9BDC712DF69AC890CDB5A5A5052FBCF002FC7E3FCF55EAEBB7ABAB8BB7D075B7EBF79ED581A6F7CBB2E67B4DECE45A535383175F7C11914884E72AF5F5DBDADA8A175F7C115240E51E57A7D3F15258373434F0C6839F7AEA29EE715555156FC2AFBDBD9D1BBA292B2B43535313B7AFA9A9899B1B51A954686F6FE7F699CD66DE44EAC6364C2613AFFDD6D656EEB94EA7E3C55A373434F0E65FB2B9D694AC4F84A94C0D39B96A341A9E6B6D6D2D6FF8A1ABAB8BE7BAB1FDD6D656EE56B410D70C1B8F6B454505CF7563908246A3E19DBBDADA5ADE84FDE6E32A84ABD9CC8F9F7FEAA9A778AE1B87F236063214EB9AF95254A9543CD78B172FE20FFFF00F71F9F265EE73663299E0F3F9F0377FF337F8C4273EC1BD674343035E7BED3574757509E65A5555C59B7C6E6F6FE78EAB50D7C44EAE8FD3F51B4DAB90526AB809EF42AF09D6AF5FC9207970E7CE9D9C5E77E9D2A51DF7CFCECE12B7DB9D4FD3A2303B3B4B9C4EA728EFFDF91F0E93FF6F6431A7D72E2C2C88E6910F0B0B0B64797999B606595C5C64C2E3FCF9F3A4B1B191BCFAEAABBCED0078FF0821E4C48913E4C2850BE4C2850BE4E4C993DB6E2B84E5E565B2B898DB67494C969797C9C2C2026D0DE2743A73F698B479C9C97F1820AE4054148FD9D959C1DF375FDC6EB7601EBB7DC7534B3E487B82576C8FF6EAF29CE731D46A3513C743AD56539F5805D8F97C00EB138A9B21EFAFCA542814DCE3F3E7CFE3D4A95300D6EF40B6DB56086AB59A892CC26AB53AEBF1901A954A95F3E7D4EA09A354ABC21E01930E6EF4A03DE12DB507B575182C20A6479B598F776657737AEDC65B5D9AB0E2C1421533607D1DC64EB5B4C986E5FCBDBDBD78F8F0216F7FB66D85B079488E16AC78545555E51C56FBD019446BB51E6274B7F9788889D16884D16894A42DFAABA33EA4B499CB61F7451089D3FF452623F3A4F2D01542670DFD354E1F16A87418376EDCC0C2C2028DA6B778DCBF7F5F94F76EABD68310606175F761A9C1C141D13CF26170709089D40F2323234C782493492612654E4C4C60646484B60626262678D151B4B87FFF7E4E1EF1541A167728AFDA34F97ADCB8714394F7CE87858505C93CA80C49491502B61B627AD41A75D06BD578E80AE2E9869D572DBFF0C20BA279E4032B1E870F1FA6AD00607DCC9E855C41AC641166C56363D4D14E58564348A5896877185D5D5D39BB88496B6B2B2F6A4D4CE421299150E083CCB5323232D233E70C42A751716B30648A874A8761B7DB1108046834BDC543CC4A556D39AEF876381C4C54EE72381CDCC2299AACAEAE32E1914EA799C815E4F178B0BA9A5B0085D81E2C2463F4F97C3979CC39836837EB05ADB2B7D98385ACDB814040320F2A1D86CBE542381CA6D1F4160F313BAEB6EA72583D2124D33B17C7F0783C4C74A01E8F8789129C6B6B6B4C781042248B3ED909BFDFCF44854ABFDFCF44471E080472F278E80AA143C409EF40200097CB25DAFBE74A381C96CC83CA1C062B63A1627BB499F548A60816DD61B499B74F83CC4A8539563C3A3B3B692B00588F6F17222CB6585A5A5A682B0060C72397F0EFCC84F7673EDA20AA070BA1E8B5B5B5A8ADAD95A42D790E4344F6559541A352627E35F7CCB5323232C523F684F7930A950E6368688897AC8C16434343989F9F17EDFD554A059AF794ED3A8F31363626AA47AE8C8D8D3151C37A727292098F542A8503070ED0D6C0CCCC0C262727696B6066668697808F16F3F3F3BB7A4831E13D3F3F5F541662A1B0D96C9279501B926261497D4F4F8FE8A930DAAA778F94EAEEEE662215467777371395EE3A3B3B994885A1542A991992220C14896F696961A2F25F535313EAEBEB777CCDACC813DE190F16B212D4D6D64AB6E29C4A87C142B53D401A8F36733906E75641806DD3139496B2519C9E150FA1CBE6168A42A140341AA5AD819212E1F32015022B1EB994337EE80AE260A3B8010B5AAD9689D2CA1A8DE6C35DA2351C0E7379E669120E87118FC7456DA3DDAC47389EC28A6FFB2F9E482422BA472E4422115E15395A44A351263C08214C745EB1588C898E2B168BF1EA50D0221E8FEFE8114FA5617587458D90CA78B010ED99482424F3A0D2616C2E0C428BCD855FC4A0B57AFDB678A789EFCD857D68B1B9F00B2D3617F6A1453A9DE6D539A0C5E6C23E343D3616FFA1C5E622449BF960C2BB42740F1652D86C2E7625265486A48E1E3D4AA3D92D48E1A1D3A8D0602CC5822B84E7DBB32F02EBEBEB13DD231758F13878F0206D0500EB61B5535353B435B07FFF7EDA0A00D8F1686B6BDB717F66C23B5334494C8FDD5CA440CAF05EFA339C4F006D663DE65C7268AD8C8C144831E1FDA442A5C3989E9E6622D5C1F4F4F48EF50E84A2CDBC7331A5D9D959493C76637676164B4B4BB435B0B0B0C084472A9562A276CBD2D21213D99D97969698181A5B5959D9D1E3A12B28FAFC45C6838521BAD5D555C93CA80C49994C2626222E4C2693249141ED663D3CA138BC91044CA55BA3190C06031393AB0683818970E78A8A0A26C27B150A054221FAC923F57A3D13E1AC7ABD9E89A8A0D2D2D26DC3AE3313DEFDBD8D9278B010EE5C52520293C924495B54AECAFAFA7A5454883B2195AB8714B982DAAAD77FEDCC6F332C555B5BCB44CE2229E3B977A2BABA9A090FA55299F54EF8073FF801CC66335A5B5B71E5CA1500C0DDBB77D1DEDE8EF6F6766E0232DBB642A8AAAA6222096255559564292876C268346EEBB1E09266C23BE3B1DB7A1029A8A8A890CC837E01E72700539906557A2DE65D21F4EDABA4AD235324D3D3D3989B9BC3F8F8383EF7B9CFE1B77EEBB770F6EC599C3973060070EEDC395CB97225EB36197179E89266C2FB4985CA1DC6B56BD730373747A3E92D1E5245C1B499F578B8CD1DC6CD9B379988C6B979F32613A91F6EDDBAC584473299C4912347B66CFFBBBFFB3B180C0628140A9497AFDF3DDEBE7D1BFDFDFDE8EFEFE7D23464DB5608636363B875EB56C17F2F14636363B879F3266D0D4C4D4D6DEB31EB5C9FBF9062C27B6A6A0AD7AE5D13BFA15D989B9B93CC834A87F1FCF3CFF3D2356F9E7C1E1818E01E6F9EF0BB75EB1692C92400C0EBF5F272EC4C4E4EC2EBF50258BFD8375E649B275207060670FCF8711C387060CBE4D5C8C80882C1F52FF7603088F1F1719EEBC6618A5C5DEBF52ADC7DF841CEFA8DAE478F1EE5A5F3DE3CF9FCCB5FFE927BBC79C26F6464845BD455ACEB0B2FBC80BEBE3EACAEAEF28EEBF8F838E71A8D4679E542374FD86F6CA350D78F7DEC63BCB9838585059EEBC0C000775C374FF88D8F8F73E7AE5857954A85E1E1612412099EEBE4E4246A6A6A70E2C4097CFFFBDFC7AD5BB7E0F57A61341AF1A52F7D89CB2090F97C9E3E7D1A5EAFB760D7BEBE3EEEFF0B6C9D7CBE75EB16775C8BBD263264737DEAA9A7F0F18F7F1CC16090E72AF5F57BE0C0015E2A9D8DD7EF435710DAA847F0EB379B6B6363238E1F3F8E6834CA7395FAFAEDE8E8C0F1E3C721055486A4D46A356F4C76F3E4F3C6F1C9CD137E66B3999BF0D26AB5A8ACFC6088A7B2B2929B94532814309BCDDCBECD13A91BDBD83C79555D5DCDE59852ABD5BCF1F4CD13F6B9BA76D456E0A777ED882652D069543C57954AC573DD3CF9BC315FCDE609BFEAEA6AEEE211CAB5A4A484775CABAAAA78AE1BCFDDE609FBCDC75508D7CDF35DB5B5B53CD78D137E555555DCB92BD635F35CA954F25C2B2B2BF1F0E1438C8C8CE02B5FF90ADE7CF34D984C26F87C3EFCF55FFF353EF5A94F71FFA7F2F272BCF6DA6BE8EAEA12CC75F3E4B3D96CE68EAB50D7C44EAEAC5EBF9909EFDFF84895E0D7EF4EAE2C5CBF9241F2E0CE9D3B39BDEED2A54B3BEEB7582CC4EBF5E6D3B428582C16E276BB25696BD91B2127FF61804C2DFBB6EC5B5A5A92CC632796969688D3E9A4AD41EC763B131EE7CF9F27757575E4D5575FE56D3F73E60C090683E4FAF5EB64CF9E3D8410424E9C38412E5CB8402E5CB8404E9E3CB9EDB642703A9DC46EB717FE1F1108A7D349969696686B10B7DB9DD5E3DEB28F9CFC8701B2E4094BE661B15824696B27BC5EAF601EBB7DC753B9C348241248A552349AA6E65167D4A1B24C8B499B0F4FD71B78FB92C92413C723994C3291353791483011AE0820EBF1686868406363232A2A2AF0DDEF7E170070FEFC799C3A750A0070F1E2C56DB715423299E40D49D182158F542A95D5E35D9B0F557A2D9A2AA599F04EA5524CE4C493D2834A87D1D1D141A3D92D48E9A100D0D76CC2E8E21AFEC7C37B79FB58A964C68AC7DEBD7B777F910428954A3C7AF468CBF6975E7A092FBDF4126F5B6F6FEF9654E8D9B615020BA19B003B1E66B399370494E1EE92171FDD2BCD7A849D3CA4A6AAAA4AB23074FAABA39E200EEDABC47D7B00C118FD5F6932321F26A28914EEDBFD9276184F22543A8C81810158AD561A4D6FF19032D541EFFB6B30EE2E7979DB8787879948B9303C3CCC4478EFF8F838131EC96412CF3CF30C6D0D4C4D4DF1A267687A0C0F0FD3D6C0ECECEC168FC9473E24D344D20E6376769617B9440BABD52A9907B56CB52CA47E90DAA342A7C6FEBA0ADCB1ACE1858E0FA24CFAFAFA98381E7D7D7D4C54BA63255BAD5AAD66A2E362254BECFEFDFB99985B6A6B6BDB327C7A77C98BE63D65A8D24B97BA249B070D9A9A9AD0D0D020495B543A0C16F21501743C0E3557E25F27EDBC0A7C4FF2F1C886D86573F38185495E568E072B1E2A956A4B30C2F8A217BDFBA41D8ECAE64103293DA8FCAC5D5D5D65A252D5EAEA2AB7C0472A0E3557C2138A636143F65A8FC723B947363C1E0F6F01212DBC5E2F131E8410C992BAED84DFEFE716B4D1F6F0783CB435100C06791E9E501C8B9E307AF74A9B7627180C3291753B1C0E4BE641A5C3B05AADF0F97C349ADEE2E176BB256DB3C35C0E53A906A38B1FAC74B7D96C927B64C366B3C1E974D2D680DD6E67C2239D4E33916CCFE974C26EB7EFFE42093C58A80CE976BB791E7797BC50AB14F848A36187BF12C78385B9589FCF279907957BCC43870ED168760B343C140AA0AFB912772C1E7CF6D07A95AC9E9E1EC93DB2C18A477777376D0500EBB7FA333333B4359EC830F49DD85CA3647CD18BAE3A03741A6987879A9B9B99A897525F5F2F59C833FD99D62790BEE64ACCAC04108AD31F1F9791799C2100DEB579D12B87D34A02950E63747494895BECD1D1512AB79487F655224508EE2EAE8F4B4F4C4C30716B3B3131C14416E14CFA70DAA45229262294E6E6E698A8EC36373757545D0FA1B05AAD9CC7A23B0C4F288E6728741856AB15A3A3A392B7BB19BBDD2E99079521A9E6E6662EA3274D9A9B9BA954BAABD0A9F1546D05C616BD78BEA31A4D4D4D4C54326B6A6A622212A6BEBE9E893063A5520987C3415B033535354C54DCABA9A961226A6CCF9E3D5C42CAF1A535E84BD478AA56FC92ACD93CF47ABDE4ED6EC668344A16E148E5DB8185EA61005D8F679B2B71F5BDF594D02C549703D8F16021320958CF98CA427492C120ED64EE76B0E291A94102AC4F783FD3648492C2FAA1F2F2729E0B2DCACACA24FB014EE567DC93987C70337DFBD6C36B2DEE1053C783855F90AC24B903D8587BC0CAF14826934C25DB4BA608DE7B442F1DC89398E7CB7D7E00002000494441547C904A87313434C44478DED0D010E6E7E7A9B4FD546D050CA51A8C58D630363646CD63236363634C44054D4E4E32E1914C2671E0C001DA1A989999E115EFA1E9C14225C4F9F9798C8D8DE1FE8A1FD1448A5A87313F3F5F542545A1B0D96C927950F9F974ECD8311ACD6E81A6874201F4ED35617C710D9FEDDF5A069406D9CA91D2A0B7B797B60280F5BB8B77DF7D97B606139D16C08E4767672700E0C74356D41A7468A054BFBBB3B39373A18994E1BDF467169F609E6DA9C2BD65BF1C5E2B23530052A73397A1D461CCCDCD319162606E6E0E2E978B5AFB1FDD67428A10BC7D6786AA47068BC5C244B8F3D2D212131EE9741A8D8D8DB43560B7DB7935A2697A582C16DA1A70B95CB8F7601EB38E20D50EC3E5723111FEEDF17824F3A0D26168341A269276D1F630956AD059538129679489E3A156AB9998E4D568344C780060221841AD563391189295CF874AA5C203771C04D2A633CFE6C1C27991D2834A87D1DCDC0CA3D148A3E92D1EB44349FBF69930E74D53F700D6D761B05041ACAEAE8E090FA552899595952DDBFFFEEFFF1E959595686969C14F7FFA5300C0DDBB77D1DEDE8EF6F6766E5159B66D8560369B51575757F0DF0B85D96C465353136D0D545555E13D0FC1471A8CA8D0D1EBC0AAAAAA98480D62341AE5398C2785675BAAE00AC4607187767FB10C13CCCDCD617E7E1EDFFBDEF7F0C52F7E110070F6EC599C39730667CE9CC1B973E7B6DD26533CBE480277AC1EFCA76EFA89219F34A87418D7AE5D6362ECEFDAB56BD40BE43C555B8E6424889FFDFB7B543D00E0E6CD9B4C844DDEBA758B098F6432993572EC3BDFF90E2A2B2BF1CC33CF607575151E8F07B76FDF467F7F3FFAFBFBB910C76CDB0A616C6C0CB76EDD2AF8EF85626C6C0C376FDEA4AD81D76E8C231408E0F98E3D543DA6A6A670EDDA35AA0EC0FA0F18A93CA87418CF3FFF3CD6D63E48EF3D3D3DCDBBF5DF586E706969090B0B0BDCF35BB76E718B98BC5E2F2F3E7D7272925B999B4C267917D9C2C2026FE270606000C78F1FC7810307B0B2B2C2CBD5333232C2D5A7080683BCF298D3D3D3BCDCF3C5BA2A150A7CFC237B71F75180DB373B3BCB73FDE52F7FC93D5E5959E195731D191941341A15C4F585175E405F5F1F56575779AEE3E3E3DC718D46A3181919E1B96E77EE0A75FDD8C73E8650E8833BAE8585059EEBC0C000775C57575779E76E7C7C9C3B77C5BAAA542A0C0F0F239148F05C272727B1BABA8A3FF9933FC1EFFEEEEF626666065EAF1746A3115FFAD297B855B799737EFAF46978BDDE825DFBFAFA780BF796969678AEB76EDDE28E6BB1D744866CAE4F3DF5143EFEF18F23180CF25CA5BE7EEF07B43850ADE6B2D3D2BA7E1B1B1B71FCF87144A3519EABD4D76F4747078E1F3F0E29A0D261A8542A2E170CB0BEB47D632EA58DF31B3A9D0EA5A51FC4591B0C06AE8CA85AADE6E572D1EBF5DCA49C42A1E0A532282D2DE5E58DDAD88656ABE52DADAFA8A8E026A1552A156FF97F5959196F824908D7DEBD26D882EB85ECB3B96E4C95A1D56A796D5454547079978472D568343CD7F2F272CE55A954F2CE5D6969E9B6E74E28D7D2D252DEFB188D469EEBC673575E5ECE9DBB625D336D28140A9EAB5EAFC7D7BFFE753C7AF4083FFCE10F613018603299E0F3F9F0577FF55728292901B07EDE341A0D5E7BED35EEB110AED9CE5DE6B80A754DECE44AF3FA5DF484F1D015C4B136FE3541F3FA552A953B1E5729AE5FC9207970E7CE9D9C5E77E9D2A51DF72F2F2F13BFDF9F4FD3A2B0BCBC4CBC5E2F6D0DF2C0622327BE7D930CCEBAA87AACACAC10B7DB4DD58110425C2E17131EE7CF9F27D5D5D5E4D5575FE56D3F77EE1C79E9A59748341AE5B69D3871825CB870815CB870819C3C7972DB6D85E076BB89CB45F7B391F1585959A1EAF0C3C105F2BF7CFFDF89DD4ED7831042BC5E2F595E5EA6AD41FC7EBF601EBB7DC7530931F07ABDD06834BC5F29B43C140A05FD88AD7818DDE652FCDBD40A9EEFA09710D1EFF743A7D3518FD80A040250ABD5D43D082159B3917EED6B5F03007CF7BBDF05B0EE7BFEFC799C3A750A0070F1E24500C8BAAD1042A11092C924F5A49DA15008D168945A15C23421F8E58C13479BCB1108F851574777D23B1289C0EBF54A56BC683B62B198641E543A0C562AAAB1E2D1D9D989CFAADC38FF2FD358F646A8A63A6081D6D656DA0A00D68708B2D52921846CD9D6DBDB8B870F1FEEBAAD10F6EEDD5BF47B08016D8FB1452F3CA138FA9F3B48ED1AD9485D5D1D13E1CED5D5D592FD9890C36A19E1704B15AA2B4AF0AFEF6D8DFB979191016EDC77A2BBDEC04467F1A42267AB65244BACD5B280E307EAF08B7B0EC493748AE5C8D96AF9A452292612EEC9D96A81503C89A1876EBCD855C365ABA58D9CAD56227A7A7A985852DFD3D3C344AA83EEEE6EA8542A986A819F8C2CE2570F5CF8E4D3D28FCF7677773351E9AEB3B3938B4EA18952A9146448A9585A5A5AB20E83D1F0A055F96FE0C17A78E97FE8AC864691A63E6F00AC6746606148AAB6B656B2F93E2ADF962C946705D8F1C884C75569818FB5EDC1BF4CDAA9741854C2F4B240A36C6E36140A0517234F934C982E6D687A5CBFEFC491B62AE84BE8FFC0CBA0D56A9928ADACD1683EDCB9A4C2E1301395AAC2E130E2F1386D0D442211CEE3E4C17ACC3983985909ECF257E278C46231C9DBDD4C341A65C28310C244E7158BC598E8B862B118229188E4ED2E7B23B86FF7E337DF4F05128FC7A9786C261E8F231C0ED3D640229190CC834A873131310187C341A3E92D1E2CCCA54C4F4F731E1F6934A2794F19FEF53DE9D37B4F4F4F3391BE7A767696098F743A8DF6F676DA1AB0582CBCD5C1343D36AEA8968A1BF79D309569D1FB7E665A9BCD46C56333369BADA8A49242E1703824F3A0727F77F4E8511ACD6E81158FBEBE3EDEF34F1FACC785C105FCEFCFB7C2502ADD5CCF660F5A1C3C7890B60280F5B05ADAB9C60060FFFEFDB41500D0F12064BDC3F84497192AE5FABC565B5B9BE41ED9686B6B63C2A5A9A949B22CC2F4673865B6F09B5D35502A14F8C5B493B68A8C0C55C697D6E00CC4F062570D6D1519C84352CC0D4901804EA3C26F76D5E0EA7B7648191C230F49F149A552F290D4260F2987820880578717D1BBD784963D1FACB89787A4F848392445A5C3309BCD4C442899CD66EAE94980F5422C9B3D4EF6D4C3EE8B6274716D9BBF12C7636312355A54565632E1A15028E0F3F9686BC06030A0B2B292B6060C0683A4E95A861EBAF1602580CFFF460B6F7B454505F5B431190F160A7D95959549E641650E8385186A801D8F6CB979F65595E1238D46FCEBA41DCF364BF365412B47D06668E74CCAA0542A79E9A569C1C2972320AD0721C08F87ACF88DF66A74D694F3F6198D46FAF9DF18F2A8A8A890EC87AF3C87C130270FD663C4E2C1BC4BAEC627F364F1CB19276C6B11FCCF47F7D15691D900950EE3C68D1BBC4225B4B871E306EEDFBF4F5B03838383593D5EE8A84687B91CDF1F90267DC9E0E0201363B22323234C782493491C3A7488B60626262678058B687A0C0E0E8ADE4E3245F0EAF0225EECAAC1BEAAAD43D7F7EFDF97C46337EEDFBF8F1B376ED0D6C0C2C282641E5486A45E7CF1451ACD6E81158F175E7821EB768502F8FDFFD88E3FFDE7773138B78A17444E7DBE9D87D41C3E7C98B60280F5A239A3A3A3B435D0D3D3435B0180741EFF36B5024F288ED347B2DF5D74757549E2B11B5D5D5D4CB8B4B6B64A96E1591E92629CAEBA0ABCD85D830B830B88514A4A28232315D1440A3F1959C4898FD4A1A6828D9428321F40A5C3B05AAD4C449F58AD56783C1EDA1AB0D96C3B7AFC97DF68412896C43FDF59DAF6354279B85C2E51DBC885959515263CD2E93413C9E55C2E17AF66364D0FB1C3D02FDF5D462C99C6FF7078FBDA1B1E8F878970788FC793B55E8AD4F87C3EC93CA87418894402A9548A46D34C7A2493C91D3D2ACBB4F89F9EDB874B638FE0F08B975328994C7245EF6992482498F000C0D586A64932996422F79AD89F8F4034894B638FF0DB1F6D8469870C07A9548A89CF472A9562E2BC48E941A5C3E8E8E8602254B0A3A3838938EA9696965D3DFEF3330DA83194E00703E2050BB4B4B430116ABC77EF5E263C944A251E3D7A94759F42A1E0A560BF7BF72EDADBDBD1DEDECE4DD867DB5608F5F5F5D4ABDD653C5A5A5A447BFF37466D50A914E8EF6DDCF17566B359548F5C319BCDE8E8E8A0AD81AAAA2AC93CD8C9152CB3236AA502BFFF1FDAF1E797DFC3F8A217BDFB4CB4959E680821BC0EE3ECD9B33873E60C00E0DCB973B872E54AD66D32D9590DC6F0B389657CFE6833CAB4F4EFEA64B22387D5321C56BB99DE7D261C6DDB837F7CE7219269E17386C861B57CF209ABBD7DFB36FAFBFBD1DFDFCF553FCBB6AD103EEC61B56942F0ED5FCCA24AAFC5A77B76BFB394C36AF94819564BA5C33874E8106FD27B6E6E8E37C979FBF66DEEB1DD6EC7D2D20793BD636363DCF8A5DFEFE795F29C999981DFEF07B07EB16F2CE3B8B4B404BBFD8394E1B76FDFC6B163C7D0D9D90997CB85B9B9396EDFC4C40442A1F5C572A1508897B1746E6E8E37412D84EB473FFA510483416E9FC562E1B9DEBA758B7BFC3B4F1BB0E8F2E367EF2E73AE99DA11C5BA3EFBECB378FAE9A7E1F17878AE5353539C6B2C16E37D995B2C966DCF9DCBE5E2E584CAD5B5B7B79797DF7F696989E77AFBF66DEEB87A3C1EDEB99B9A9AE2CE5DB1AE2A950AEFBEFB2E92C924CF7566668673CD7CCEBC5E2F8C4623BEF8C52F728586BC5E2F66676771FAF46978BDDE825D9F7EFA69DE1C97DD6EE7B98E8D8D71C7B5D86B224336D79696161C397204A15088E75AECF5FBCF776C786FD987CFEE2F413414DCD5B5B3B393572993D6F55B5B5B8B63C78E21168BF15C77BA7E0BBD267672DDB76F1F8E1D3B0629A0D26168B55A5E611A8D46C39B5CDCB84FAD56F3AA499594947043014AA592B74FA3D1702546150A05AF429846A3E17DC8743A1DD7AE4AA5E2BD8F56ABE5DE47A954F2AA6A89E1AAD56A79D5EED46AF516D70C75C6527CBABB0AFFEDF62256833168B55A5E1BC5B8668ED14EC743A150F0DAC8BC3E5B1B2A958AF7FFC8D555AD56F3728D6DAE28A6D3E9B8F711DB35F385B19D6BE673663299E0F3F970FEFC79CEDD643221954AE1B5D75E83C9642AD875F3F1D8FCF910F29AD8783C36BB66CE8390D784C597C2ABC38BF82F1F6B41A7599F93AB4AA5E21D0F5AD76FE6DF66D79DAEDF42AF899D5C37FFFFC54441F228163C3A3A9AD32DFA4F7FFA53F4F7F76FBB7F757515656565D41310AEAEAE42A7D3A1BCBC7CF7178B88C7E38156ABCDD923964CE30F7F328E528D0A5FFFDD1E94A885E9F73D1E0FD46A35F5C47F5EAF174AA592BAC7CB2FBF8C6F7CE31BF8EE77BF8BD3A74F6FD9AF5028B85ADB9FFEF4A771EAD42900C0A54B97F0D65B6F65DD56087EBF1FE9741A2613DD792BBFDF8F64322958C08A3F92C0977F328E767339FEFCBF7F1AB956710F068388C7E3D4036782C120A2D128F5DC67E17018E17058108FDDBEE3A94C7A5BAD5634343450EF30AC562BAAABABA97718369B0D46A331678F12B5127FF99F0FE0FFF8C95DFCC3F559FCC9F1FD395F6CBB7994959551FFA2B6DBEDD06834D43DD2E9F4B6091933BF0A339DC6F9F3E7B9CEE1E2C58B0090755B21389D4E241209EA1D86D3E944381C16E48B9A00F8BB5F3C8052A1C01FFDA7A7F2FAFCBADD6EF87C3EEA1D86DBEDC6EAEA2AF50EC3E7F361797959120F2A1D060BF97900763C0A49B9506FD4E1FF3ED185BFBC3285963D7A7CF6D9E22B6EB19282A2BBBB9BB60280F55BFD8DE3D61BD97C63DEDBDB8B870F1FEEBAAD105808DD0484F5B83466C398D58BAFFFCE4154E8F2FB1A6A6E6E16CCA3189A9B9B9970A9AFAF972C0C5D4E0DF218D3BBCF84FFEDF916FC78C88ADB16FA2BD6656472E1FE4A003FBE65C5FF7AB4194F37D0AF7B22933B543A8CD1D1515E14012D4647479958DA3F313151B0C76FF736E2135D667CEBDA032C7AC2BBFFC12E1E1BA34D68313D3DCD84472A9562A29EF6DCDC1C1315E6E6E6E68A0E7776F8A3F8FAD5FB38D864C4A94385DD155BAD5626C2AEAD562B13C929ED76BB641E5486A43A3A3A785105B4E8E8E8E04525D0A2A5A5A5A828872F7FA213B6B509FCD55BF7F0CDCF3EB3635A85DD3C584885B177EF5EDEA2385AECB4D25B4AEAEBEBB70C81D1F22826958EC31FC5572F4DC250AAC6FF75BC0B859EE29A9A1A262A10D6D4D4509F5702D62B544A351F4CE50EC36834F242C46861341A79E1ACB430180C4579A8550A9CFD7437D204F8B337260ACE37653018A0D7EB777FA1C894979733E1A1502878EB6368A1D7EBA90766643C0A0D4470056238F3D3F75056A2C6D73EF391BCE72D36525A5A4A3D2022E3C142C53D9D4E2799879C7CF043E251A5D7E29BA77AA0512BF1A76F4CC0B29A7F953E5692FEB1920411002F669E16AC1C8F429320AE066338F3D349E8344A9CFFED8FC050E01D70862731E91F2B1E543A8CA1A12126D2130F0D0D617E5E9A6A763B313636268847955E8BBFF99D83683095E2CF2E4DE2BD47F9A5901F1B1BDB362A484A26272799F04826933870E0006D0DCCCCCC60727292B606666666782B9A73C1B21AC29F5D9C8446A5C4F9FE833016D95900C0FCFC7CDE1E62303F3F5F54CA17A1B0D96C927950F9F924D532F6DD60C5E3C8912382BD97BE448DFFE73307F0CD6B33F88BCB53F8E3E34FE1F9F6DCE2B385F42886DEDE5EDA0A00D6EF2EDE7DF75DDA1A4C745A40FE1EBF9C71E2BFDE9843BBB91C5FFD7457C1736B9BE9ECEC14E47D8AA5B3B393091729C37BE5B0DA0F215A95125F3DD185DFECAEC1DF5C9DC14F469690122159A1CCFFDFDED9C5B6715D79FC3F33FC2645895F326552A6244AB265590E6559FE4ADA24C8266A1CBB4E1C77B7755D1458207959B7408316BBF9408BBCB4D887021B18BBD8058CA081DB3E7493BA9B041BB868DC64818D155BB25427AEEBC8521C4BB66899642889DF9A99B30F32672D458AE8889A3B45EEEF4522879AF3D7E5BDE7CCCC3DF75CCE52C80AE1DFDF1DC5CF7FFF11FA3A83F8E9C12E781CEC934B38AB8749C0B874E9121289040BD39FD161849DCC464646AAAE431404FCC383ADF8FB7B9BF09B8171FCE037C31899FAFC09DC91919105C5D758F1F1C71F1B4287A228865898353E3E6E88EACEE3E3E3181919F9DCCF243325FCD36F2FE00F97A6F0A3BE8D78FAAB2D3089D5CD788BC7E32BEAD083783C6E8874E74422A19B0E268FA41C0E876EC5B256D26184B45ABBDDBE663A1EEF0EA1B7D98B63A7AFE087FFF9271C88ADC7919D115896A83F65B7DB0D91EE6CB7DB0D91DE2B088256499425369BCD10C91977167D5C0C11F0DF1F4EE297FD9FC06D33E3E7DFB80711DFDAA47A2E2ED6C90A8BC5C2BCBC11305FA4502F1D4C028611AEDA00E3E80887575FD6E3F308D5D9F1B3835D78EB8349FCE2BDAB38339AC4F71F6A435768612ADE5AEBA81423ECA30DCCAFC330C21DA81176850496D7F1E7C919FCC7BB63B89ACC62FFD6F538BC73C39A6E82E4F57A99D79132928EDADA5ADDD26AD9E70C72744100B0B7AB013B9ABDF8D73F8EE2B9DF7E800737D5E3E0B6109A7CECD73C70FEFA989C2EE057EF7F82772FDF4257B816C7BED58D0D5EF657DC9CB58349C03875EA14A2D128F3A26AA74E9D42381C669E85F2CE3BEF201008E8A2C3EFB2E227FB37E37F3EBA855F9FBD86EFFD7A08DD1B3C78BC7B3DA6C7FE845AB71BDBB66D5B731D9FC799336760B55A99EB9065D9109963E50D9276EFDECD5CC7CCCC0CD66DDC869343D771662C89FA1A1BFEF1D14DB8AF55BF8AAD172F5EC4AD5BB7F0C0030FE86673391D131313E8EBEB63AAE3CA952B181D1DD545079380C1BA81CB1845078B8EFFD5F600BED216C0B9AB29FC6EF83A7EFC5F17D1E4ABC5D7EBD7634E516196D825D0B1768C654C2613DE7FFF7DD63298074E00905542CEBD016F8C5EC7E50F2EA06D9D0B3F7A6423EE6DF543AAF2A4F64AB0BEC02BD3D9D969082DADADADBA5D7CF347525F620401D8D1ECC58E662F466F65F0BBA11BF8B73F5EC12BEF5DC5AE161F76B578714F631D2C0C8307871D44C08737A6F1EE47B7F0BF5712C81465EC68F2E29F9FDC8A4E5E65F64B0993803139390997CB859A9A1A16E617E870381CCCEBC1DCBC7953D77A304B110DB870E49E5A1CD85C8B81C912FAC792F8FDC538AC66093D110F76B7F8D013F1ACAA0650A524120988A2C87C42515555E69BE300F33B21EAA5653A3F87A16B690C7C92C2F0B534D2F93934F99D38D81DC6D67A13EAAC02D6AD631B2CA6A7A751281496DDDC4A4F1DB95C4EB7BD289663767616994C46171D4C02463A9D86D96C661E30D2E9340441601E30666666404486D061B3D9F0CDDE467CB3B711894C11FD6329F48F25F12F7FF8088A4A0879ECD818AC41FBBA1A6C0AD620E273563DCF7E76761626938979C02022431441CC66B39065794D02467CBA804BF1195C8ECFE2D2E42CC612198882808E06370EC442D8D9E2D526B2C7C7C73133C3DE51E7F379CCCECE1A42473A9D661E308AC5A26E3A98040CA3ECA866141D46282F007C5687DF65C5BEAD0DD8B7B50199A28C0FAF4FE3F2CD595C8ECFE2BDD124F22505169388D6800BD17A17C21E3BD6D7DA11F2D811A8B17EE16D639B9B9B57FFCF5401499296DCA7647878184F3EF92480F9FDEBD77AA7C2C6C6C655FD3D0148654A989CCE63FCD33CAE26B2F82495C3C7892CB245199228A0D9EFC4E6F56EFC6D6F18B1C63A382D9F750DABD5512D82C1A02152AF8DA2C3EFF7EB7627CCE7303815E1B29A6ECF6BF800002A11C653792D80FC253E83D37F9942B6385F55D56212D1506B437D8D0D7E97053E97150197155EA705750E33DC3633DC7613D3C9F52FCAF3CF3F8FE79E7B0E00F0C20B2FE0F5D75F67A645560933F939CC14E690CA9690CA9690C89490CC1491CC967073A680C9740125450500D8CC129A7C0E447C4EDCD7EA47B3DF89B67AD7920B39399CC5300918FDFDFD0887C3CC178AF5F7F7A3BEBE1E2D2D2D4C759C3F7F1E75757586D0E1743A2BDA654E1404447C0E447C0E3CB2F9FF1F0DA4F3739848E5703D9D477CBA8044A6846BA91C86C7D348644A98BBEDB8CA382C12DC76335C56139C16131C5609994F9370D9CC888482B09925382C12CC9208BB4582C524C22289DA4F49146037CF2F12B39844CDF1498200FB2A178F298AB26416CCD9B36771E2C40900C0B3CF3EBBE279722505EAED0D904AB28A923CDF06853905B24A985354146FBF5F5254E44BF3EF678B320A730AAEDD88235B9883ABCE8F4C4946B628235394315B90B5005DC62289F0B92CF03A2D08B8ACD8D1EC4543AD1DEB6B6D68A8B5C3E7FAE215052E5FBE8C6C36CB3C6B6B6C6C0CE974DA103AA6A6A6B06BD72EA63A262626303131A18B0E81EE622BAFC1C141F4F4F4ACF8B993274FE289279E58F6F8D8D818DE78E30D6D797FB158842449DADE03B95C4E5BEA5EAEF35E2E2592CFE7B512058AA2409665AD9C45B15884C9648224492022140A05CDC6E2F3E472B905E75114453B4F3E9F87D56A85288A505515A55249DBF0E94E1BD5D2AA280A8AC5A2769E52A9044110B4F364B359ED59BA2CCB5055552B2572A78DD56AB5582C10040144B4406BA15080D96C5EB25D4BA51244515CF2BB5B4A2B2C0E9448444E1690292A504C36145501D9920A45903007094545407E4E0549662824A0A800320920613E18A8AA0A411034AD4404515CF998090A04402B6FA1AAAA76AC3C0C6CB7638CA228487D9A423C1E4763B81135EE1A88A284922AE0DAB56B686C6CC4F51BD791CFE5118D46B5F3284490495CD646255A451024A8308B04B308980415A23207A7558245204824C32CA8705A44D84515C25C1E6EBB19768960A6B9558D89F277B7B8BF160A05984C264D7BB15864367E8908B95C6EC19860317E25498228CE7FD78BC7849EE39788B06FDF3E844221AC96157D3CDD0503030377F3F1653977EE1C75757511E61FAF524B4B0B050201ED754F4F8FF67B3018A45028A4BD8EC5622449120120B7DB4DEDEDEDDAB1F6F67672BBDD04802449A2582CA61D0B8542140C0697B4110804A8A5A5457BDDD5D5450E87830090C3E1A08E8E8E055A3D1E4F55B55AADD6055A2391C802AD3B77EE5CA03512892CD06AB55AABAAD5E3F12CD0DAD1D1B140EB9DDF5D241259F6BBAB96D65028A469152C36DAB6730F596A0324D5F8C817D944CDB1DD64F63592A5A19D36EEE92377F356B245EEA19AB65EEA78F009B235C5C8DEBA8322F71EA0E0F6AF91A37D0F39DAF7D096478FCCFFDE713F05773F4E9107FE8E9C5B1E22E7968768E3A3DFA5BAEEAF9173CB43E4EFDD476D8F7C473B16FD9B6F53FDF6BDE468DF43AE4DF7D1E6BEC3DA39C3BBF6D1FAED8F90AD2946B6A618753DFC0DB26DD84A968676F26FDC4ECDDB1F24B3AF91CCBE46DAB8FD2BE4AA0F93E4F291ADA68EB6C47A2A6AD76030B8A05D63B198D6AED51A131E8F67C198E8E8E8583026F8F835D6F8BD70E142557CF34A3E7E4DEE305622954AE1D5575F5DF579381C161C3B764C7B1C32343484A3478F3256C4F9B273E8D0A1AA6415AEE4E399CC6178BD5E3CFDF4D32C4C7338ABA6B7B717870E1D0200BCF6DA6B88C5628C157138FAC0B3A4389CBBA4BBBB1BA3A3A3AC657038BAC32497AE3CD15766787818D16814D16814172E5CD05DCFCB2FBF8C402080FAFA7ABCF2CA2BBADB2F934C2671E0C001389DCE65F71DD08BA9A9296DF28D152FBDF4123C1E0F9A9A9A70F2E449DDEDB3EE976558B7C39D18A15F18659CB0F61B4CFC68352744EE863B4DEFDDBB978E1F3F4EC78F1FA7FDFBF757CD46A5D4D5D5D1E0E0200D0C0C90C7E3D1DD7E99A79E7A8A1E7BEC314A2693CC349479F1C517E92EBB47D5397AF428A552297AEBADB7C8EFF7EB6E9F75BF2CC3BA1DEEC408FDC228E3C4087EA3DA7E74251F6F8880E1F7FB29994C523299A4402050351B95D2D9D94943434374FEFC79EAECECD4DD7E9970384C67CF9E6566BF4CB158A4868606E68EA1CC8D1B370880EE0E8275BF5C0CAB762863947E6194716204BF516D3FFA5711304C2613C9B24C7D7D7D64369BAB66A352DE7EFB6DB2DBED64B7DBE9F4E9D3BADB2F63369BE9C89123E476BBE9D8B163CC749C3871821E7EF861E68EA1CCE1C387E9E0C183BADB65DD2F17C3AA1DCA18A55F18659C18C16F54DB8F320F18B89D27BCD4FB65F4BE925BAC291A8DD2E0E0209D3B778EDADADAD6DCFE723A7C3E1F0D0C0CD0F0F03079BD5E663A7A7B7BE9CD37DFD4DD312CD5579E79E619BAFFFEFB2993C9E8AA85C85877182CDBA10CAB7EB11856E36431ACFCC69DE87D87C1641D0687C3E1708CC74A3E9E571CE370381C4E45F080C1E170389C8AE00183C3E1703815C1030687C3E1702A82070C0E87C3E154040F181C0E87C3A9081E30381C0E8753113C6070381C0EA722EEBABCF9E0E0E05AE8E070381C8EC1B9AB95DE1C0E87C3F9F2C21F4971381C0EA72278C0D5B3FB100000001449444154E070381C4E45F080C1E170389C8AF83FDFCCFF01854B7F720000000049454E44AE426082>|png>|396px|275px||>

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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|1.5|2>>
    <associate|auto-11|<tuple|1.6|2>>
    <associate|auto-12|<tuple|1.7|2>>
    <associate|auto-13|<tuple|1.8|2>>
    <associate|auto-14|<tuple|1.9|2>>
    <associate|auto-15|<tuple|1|2>>
    <associate|auto-16|<tuple|2|3>>
    <associate|auto-17|<tuple|1.10|3>>
    <associate|auto-18|<tuple|3|3>>
    <associate|auto-19|<tuple|1.11|3>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|1.11.1|3>>
    <associate|auto-21|<tuple|1.11.2|3>>
    <associate|auto-22|<tuple|4|3>>
    <associate|auto-23|<tuple|5|3>>
    <associate|auto-24|<tuple|1.11.3|4>>
    <associate|auto-25|<tuple|1.12|4>>
    <associate|auto-26|<tuple|6|4>>
    <associate|auto-27|<tuple|7|4>>
    <associate|auto-28|<tuple|1.13|5>>
    <associate|auto-29|<tuple|1.14|5>>
    <associate|auto-3|<tuple|1.1.1|1>>
    <associate|auto-30|<tuple|1.15|5>>
    <associate|auto-31|<tuple|1.16|5>>
    <associate|auto-32|<tuple|1.17|5>>
    <associate|auto-33|<tuple|1.17.1|5>>
    <associate|auto-34|<tuple|1.17.2|5>>
    <associate|auto-35|<tuple|1.18|6>>
    <associate|auto-36|<tuple|8|6>>
    <associate|auto-37|<tuple|1.19|6>>
    <associate|auto-38|<tuple|1.20|7>>
    <associate|auto-39|<tuple|2|7>>
    <associate|auto-4|<tuple|1.1.2|1>>
    <associate|auto-40|<tuple|2.1|7>>
    <associate|auto-41|<tuple|2.2|7>>
    <associate|auto-42|<tuple|2.3|7>>
    <associate|auto-43|<tuple|2.3.1|8>>
    <associate|auto-44|<tuple|2.3.2|8>>
    <associate|auto-45|<tuple|2.4|8>>
    <associate|auto-46|<tuple|2.4.1|8>>
    <associate|auto-47|<tuple|2.4.2|8>>
    <associate|auto-48|<tuple|2.4.3|8>>
    <associate|auto-49|<tuple|2.4.4|8>>
    <associate|auto-5|<tuple|1.1.3|1>>
    <associate|auto-50|<tuple|2.5|8>>
    <associate|auto-51|<tuple|2.5.1|9>>
    <associate|auto-52|<tuple|9|9>>
    <associate|auto-53|<tuple|2.5.2|9>>
    <associate|auto-54|<tuple|2.5.3|9>>
    <associate|auto-55|<tuple|2.6|9>>
    <associate|auto-56|<tuple|2.6.1|9>>
    <associate|auto-57|<tuple|10|9>>
    <associate|auto-58|<tuple|11|9>>
    <associate|auto-59|<tuple|12|9>>
    <associate|auto-6|<tuple|1.2|1>>
    <associate|auto-60|<tuple|2.6.2|9>>
    <associate|auto-61|<tuple|2.6.3|9>>
    <associate|auto-62|<tuple|2.7|10>>
    <associate|auto-63|<tuple|2.8|10>>
    <associate|auto-64|<tuple|2.8.1|11>>
    <associate|auto-65|<tuple|2.8.2|11>>
    <associate|auto-66|<tuple|2.8.3|11>>
    <associate|auto-67|<tuple|2.8.3|11>>
    <associate|auto-68|<tuple|2.8.3|?>>
    <associate|auto-69|<tuple|2.9.3|?>>
    <associate|auto-7|<tuple|1.3|1>>
    <associate|auto-70|<tuple|3.2.3|?>>
    <associate|auto-8|<tuple|1.3.1|1>>
    <associate|auto-9|<tuple|1.4|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Come
      risolvere gli esercizi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

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

      <with|par-left|<quote|1tab>|1.2<space|2spc>Derivata direzionale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Limiti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|1.3.1<space|2spc>Restrinzione su retta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Lunghezza di una curva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Integrale curvilineo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Integrale di campo
      (integrale di linea) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Area della porzione di
      grafico (o superficie di <with|mode|<quote|math>|f<around*|(|x,y|)>>)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Integrale superficiale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      Esempio <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.15fn>

      Esempio <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.9<space|2spc>Volume
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      Esempio <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Integrale su un insieme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|2tab>|1.10.1<space|2spc>In 2 variabili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|1.10.2<space|2spc>In 3 variabili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      Integrazione per strati <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.15fn>

      Integrazione per fili <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.15fn>

      <with|par-left|<quote|2tab>|1.10.3<space|2spc>Cambio di variabile
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|1.11<space|2spc>Determinare la
      differenziabilità <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|1.12<space|2spc>Inversione locale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      Esempio 1 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.15fn>

      Esempio 2 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.13<space|2spc>Teorema del Dini
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|1.14<space|2spc>Direzione di massima
      pendenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|1.15<space|2spc>Piano tangente a superficie
      cartesiana <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|1.16<space|2spc>Piano tangente al sostegno
      di una superficie parametrica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1tab>|1.17<space|2spc>Polinomio di Taylor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|1.17.1<space|2spc>Formula di ordine 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|1.17.2<space|2spc>Formula di ordine 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|1.18<space|2spc>Calcolare il potenziale di
      una forma differenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      Metodo manuale per il calcolo della primitiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.19<space|2spc>Vettore normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|1.20<space|2spc>Massimi e minimi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Appunti
      utili> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Discontinuità
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Prodotto vettore (o prodotto
      esterno) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Derivate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Derivate fondamentali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|2tab>|2.3.2<space|2spc>Derivate di funzioni
      composte <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Formule trigonometriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|2.4.1<space|2spc>Formule di addizione e
      sottrazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|2tab>|2.4.2<space|2spc>Formule di duplicazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|2tab>|2.4.3<space|2spc>Formule di bisezione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|2.4.4<space|2spc>Formule parametriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Cambi di coordinate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|2tab>|2.5.1<space|2spc>Coordinate polari
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      Coordinate polari centrate in <with|mode|<quote|math>|P<rsub|0>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52><vspace|0.15fn>

      <with|par-left|<quote|2tab>|2.5.2<space|2spc>Coordinate sferiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|2.5.3<space|2spc>Coordinate cilindriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Funzioni utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|2.6.1<space|2spc>Circonferenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      Equazione cartesiana <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57><vspace|0.15fn>

      Equazione in coordinate polari <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58><vspace|0.15fn>

      Equazione parametrica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59><vspace|0.15fn>

      <with|par-left|<quote|2tab>|2.6.2<space|2spc>Seno iperbolico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|2tab>|2.6.3<space|2spc>Coseno iperbolico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Limiti notevoli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Integrali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|2tab>|2.8.1<space|2spc>Integrazione per parti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|2tab>|2.8.2<space|2spc>Integrali utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|2tab>|2.8.3<space|2spc>Sostituzioni utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>
    </associate>
  </collection>
</auxiliary>
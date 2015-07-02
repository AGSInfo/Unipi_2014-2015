<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  Sul quaderno ci sono scritti i limiti per funzioni a valore scalare e a
  valore vettoriale

  <section|Definizioni>

  <subsection|Sfera >

  Dato <math|x<rsub|0> \<in\> \<bbb-R\><rsup|n>> e <math|p \<gtr\> 0> si
  definiscono

  <\itemize>
    <item>Sfera Aperta (o intorno) di centro <math|x<rsub|0>> e raggio
    <math|p> B(<math|x<rsub|0>>,<math|p>) = {x \<in\> <math|\<bbb-R\><rsup|n
    > > : \|<math|x-x<rsub|0>>\| \<less\> <math|p>}

    <item>Sfera Chiusa di centro <math|x<rsub|0>> e raggio <math|p>
    <overline|B>(<math|x<rsub|0>>,<math|p>) = {x \<in\>
    <math|\<bbb-R\><rsup|n > > : \|<math|x-x<rsub|0>>\| <math|\<leqslant\>>
    <math|p>}
  </itemize>

  <subsection|Punto Interno>

  Dato <math|x<rsub|0>> \<in\> <math|\<bbb-R\><rsup|n>> e <math|\<Omega\>>
  \<in\> <math|\<bbb-R\><rsup|n>>, <math|x<rsub|0>> si dice interno ad
  <math|\<Omega\>> se : <math|\<exists\>p : B<rsub|p><around*|(|x<rsub|0>|)>
  \<subseteq\>> <math|\<Omega\>>

  <subsection|Punto Esterno>

  Dato <math|x<rsub|0>> \<in\> <math|\<bbb-R\><rsup|n>> e <math|\<Omega\>>
  \<in\> <math|\<bbb-R\><rsup|n>>, <math|x<rsub|0>> si dice esterno ad
  <math|\<Omega\>> se :

  <\itemize>
    <item><math|\<exists\>p \<gtr\> 0: B<rsub|p><around*|(|x<rsub|0>|)>\<cap\>><math|\<Omega\>>
    = 0

    <item><math|B<rsub|p><around*|(|x<rsub|0>|)> \<subseteq\>
    \<bbb-R\><rsup|n>- \<Omega\>> (Ovvero se appartiene al complemento di
    <math|\<Omega\>>)
  </itemize>

  <subsection|Punto di frontiera>

  \ \ Dato <math|x<rsub|0>> \<in\> <math|\<bbb-R\><rsup|n>> e
  <math|\<Omega\>> \<in\> <math|\<bbb-R\><rsup|n>>, <math|x<rsub|0>> si dice
  di frontiera per \ <math|\<Omega\>> se\ 

  <\itemize>
    <item>\<forall\><math|p \<gtr\> 0 \<Omega\>\<cap\>
    B<rsub|p><around*|(|x<rsub|0>|)> \<neq\> 0 \<wedge\>
    \<Omega\><rsup|c>\<cap\> B<rsub|p><around*|(|x<rsub|0>|)> \<neq\> 0 >

    <item>\<forall\><math|p> \<gtr\> 0 <math|x<rsub|1> \<in\>
    \<Omega\>\<nocomma\>\<nocomma\>\<nocomma\> >, <math|x<rsub|2> \<nin\>
    \<Omega\>> <math|x<rsub|1>,x<rsub|2> \<in\>
    B<rsub|p><around*|(|x<rsub|0>|)>>\ 
  </itemize>

  <subsection|Punto Isolato>

  \ \ Dato <math|x<rsub|0>> \<in\> <math|\<bbb-R\><rsup|n>> e
  <math|\<Omega\>> \<in\> <math|\<bbb-R\><rsup|n>>, <math|x<rsub|0>> si dice
  isoladato ad <math|\<Omega\>> se\ 

  <\itemize>
    <item><math|\<exists\>p \<gtr\> 0 : B<rsub|p><around*|(|x<rsub|0>|)>
    \<cap\> \<Omega\> = <around*|{|x<rsub|0>|}>> (Cioè è l'unico punto del
    suo intorno appartente all'insieme )
  </itemize>

  <subsection|Punto di Accumulazione>

  \ Dato <math|x<rsub|0>> \<in\> <math|\<bbb-R\><rsup|n>> e <math|\<Omega\>>
  \<in\> <math|\<bbb-R\><rsup|n>>, <math|x<rsub|0>> si dice punto di
  accumilazione per <math|\<Omega\>> o apprissmabile da da punti di
  <math|\<Omega\>> se\ 

  <\itemize>
    <item>\<forall\><math|p \<gtr\> 0 \<exists\> x \<in\> \<Omega\> \<cap\>
    B<rsub|p><around*|(|x<rsub|0>|)> : x \<neq\> x<rsub|0>>

    <item>\<forall\><math|p >\<gtr\>0<math| \<exists\> x \<in\> \<Omega\> :
    x\<in\>B<rsub|p><around*|(|x<rsub|0>|)>-<around*|{|x<rsub|0>|}>>\ 
  </itemize>

  <subsection|Insieme aperto>

  Dato <math|\<Omega\> \<subseteq\> R<rsup|n>> si definisce insieme aperto se
  <math|>\<forall\><math|x \<in\>\<Omega\> \<exists\>p \<gtr\> 0 :
  B<rsub|p><around*|(|x|)> \<subseteq\> \<Omega\>>

  <subsection|Insieme Chiuso>

  Dato <math|\<Omega\> \<subseteq\> R<rsup|n>> si definisce insieme chiuso se
  <math|>

  <\itemize>
    <item>Il suo complementare <math|\<Omega\><rsup|c> = \<bbb-R\><rsup|n> -
    \<Omega\>> è aperto

    <item>Contiene tutti i suoi punti di accumulazione
    ``\<partial\><math|\<Omega\> \<subseteq\> \<Omega\>>''

    <item>Contiene tutti i suoi punti di frontiera ``F<math|\<Omega\>
    \<subseteq\> \<Omega\>>''
  </itemize>

  <subsection|Insieme Limitato>

  Dato <math|\<Omega\> \<subseteq\> R<rsup|n>> si definisce insieme limiato
  se <math|\<exists\> x<rsub|0> \<in\>\<bbb-R\><rsup|n> \<wedge\> \<exists\>p
  \<gtr\> 0 : \<Omega\>\<subseteq\> B<rsub|p><around*|(|x<rsub|0>|)>> ovvero
  se l'insieme è compreso in una sfera limitata.

  <subsection|Insieme Convesso>

  Dato <math|\<Omega\> \<subseteq\> R<rsup|n>> si definisce insieme convesso
  se :\ 

  <\itemize>
    <item>\<forall\><math|x<rsub|1>\<nocomma\>,x<rsub|2> \<in\>
    \<Omega\>,\<forall\>\<lambda\>\<in\><around*|[|0,1|]>
    <around*|(|1-\<lambda\>|)>x<rsub|1>+\<lambda\>x<rsub|2> \<in\> \<Omega\>>
    (cioè se scelti due punti appartenti ad <math|\<Omega\>> il segmento che
    li congiunge appartiene a sua volta ad omega )
  </itemize>

  <subsection|Insieme Connesso>

  Dato un insieme <math|\<Omega\>\<in\>\<bbb-R\><rsup|n>> si definisce
  connesso se \<forall\><math|x<rsub|1>,x<rsub|2> \<in\>\<Omega\>>
  <math|\<exists\>> una curva <math|\<gamma\>:<around*|[|0,1|]>\<rightarrow\>\<Omega\>>
  continua tale che <math|\<gamma\><around*|(|0|)> = x<rsub|1>> e
  <math|\<gamma\><around*|(|1|)> = x<rsub|2>> .

  <subsection|Chiusura di un insieme>

  Dato <math|\<Omega\> \<subseteq\> R<rsup|n>> si definisce chiusura
  dell'insieme <math|\<Omega\>>, l'insieme <math|\<Omega\> > più l'insieme
  formato dai suoi punti di accuumulazione (quindi sè <math|\<Omega\>> è
  chiuso, la sua chiusura sarà uguale ad <math|\<Omega\>> ):

  - <math|<overline|\<Omega\>> = \<Omega\> \<noplus\>+\<partial\>\<Omega\>>
  se invece <math|\<Omega\> >è chiuso <overline|<math|\<Omega\>>> =
  <math|\<Omega\>>

  <subsection|Insieme compatto>

  Dato <math|\<Omega\> \<subseteq\> R<rsup|n>> si definisce compatto se è un
  insieme chiuso e limitato

  <subsection|Successione>

  Una successione <math|X<rsub|n>\<in\>\<bbb-R\><rsup|n>> è una funzione da
  <math|\<bbb-N\>> in <math|\<bbb-R\><rsup|n>>
  \ \ \ <math|X<rsub|n>:\<bbb-N\>\<rightarrow\>\<bbb-R\><rsup|n>>

  \;

  \;

  \;

  \;

  <subsection|Successione convergente>

  <math|X<rsub|n> \<in\> \<bbb-R\><rsup|n>> si definisce successione
  convergente se\ 

  <math|Lim<rsub|n<rsub|\<rightarrow\>inf>>X<rsub|n> = x> ovvero dalla
  definizione =\<gtr\> <math|\<forall\>\<varepsilon\> \<gtr\> 0
  \<nocomma\>,\<exists\><overline|n> : \<forall\>n\<gtr\><overline|n><around*|\||x<rsub|n>-x|\|>\<less\>
  \<varepsilon\>>

  si può anche dire che <math|lim<rsub|n\<rightarrow\>inf><around*|\||x<rsub|n>-x|\|>
  = 0>, dove <math|<around*|\||x<rsub|n>-x|\|> = a<rsub|n> : \<bbb-N\>
  \<rightarrow\> \<bbb-R\>>, perchè è una norma.

  <subsection|Successione divergente>

  <math|X<rsub|n> \<in\> \<bbb-R\><rsup|n>> si definisce successione
  divergente se <math|lim<rsub|n\<rightarrow\>inf>X<rsub|n> = inf> ovvero se
  \<forall\><math|\<varepsilon\> \<gtr\> 0 \<exists\> <overline|n> :
  \<forall\> n \<gtr\> <overline|n> <around*|\||X<rsub|n>|\|> \<gtr\>
  \<varepsilon\>>

  <subsection|Successioni oscillanti>

  <math|X<rsub|n> \<in\> \<bbb-R\><rsup|n>> si definisce successione
  oscillante se se non converge e non diverge ovvero se\ 

  <math|lim<rsub|n\<rightarrow\>+inf> X<rsub|n> = NE>

  <subsection|Continuità di f :<math| \<bbb-R\><rsup|n>\<rightarrow\>
  \<bbb-R\><rsup|m>>>

  Data la funzione f : <math|\<Omega\>\<rightarrow\> \<bbb-R\><rsup|m>> con
  <math|\<Omega\>> <math|\<subseteq\>> <math|\<bbb-R\><rsup|n>> f è continua
  in <math|x<rsub|0> > se :

  \<forall\><math|\<varepsilon\>> \<gtr\> 0 <math|\<exists\> \<delta\>
  \<gtr\> 0 : \<forall\>x \<in\> dom f <around*|\||x-x<rsub|0>|\|> \<less\>
  \<delta\> <around*|\||f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>|\|>
  \<less\> \<varepsilon\>>

  <subsection|Curva parametrica>

  Una curva parametrica \<gamma\> è una funzione <math|\<gamma\>
  :<around*|[|a,b|]>\<rightarrow\>\<Omega\>> con <math|\<Omega\> \<subseteq\>
  \<bbb-R\><rsup|n>>

  <subsection|Superfice Parametrica>

  Una seuperfice paramatrica \<phi\><math|:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><rsup|3>>
  è composta da \<phi\>(u,v) = (x(u,v),y(u,v),z(u,v))

  \;

  <subsection|Curva chiusa>

  Una curva chiusa \<gamma\> è una funzione continua \<gamma\><math|:
  <around*|[|a,b|]>\<rightarrow\>\<Omega\>> con <math|\<Omega\> \<subseteq\>
  \<bbb-R\><rsup|n> > tale che <math|\<gamma\><around*|(|a|)> =
  \<gamma\><around*|(|b|)>>

  <subsection|Curva costante>

  Una curva costante <math|\<gamma\>> è una funzione \<gamma\><math|:
  <around*|[|a,b|]>\<rightarrow\>\<Omega\>> con <math|\<Omega\> \<subseteq\>
  \<bbb-R\><rsup|n> > tale che <math|\<gamma\><around*|(|t|)> = x<rsub|0>
  \<forall\>t\<space\> \<in\> <around*|[|a,b|]>> e <math|x<rsub|0 >\<in\>
  \<Omega\>>

  <subsection|Curva Semplice >

  Una curva semplice <math|\<gamma\>> è una funzione \<gamma\><math|:
  <around*|[|a,b|]>\<rightarrow\>\<Omega\>> iniettiva su \ (a,b)<math| > cioè
  che <math|\<gamma\><around*|(|t|)> \<neq\> \<gamma\><around*|(|s|)> con
  t\<neq\> s \<forall\> t,s \<in\> <around*|(|a,b|)>>

  <subsection|Insieme connesso (per archi )>

  Dato <math|\<Omega\> \<subseteq\> R<rsup|n>> si definisce insieme connesso
  (per archi) \ se : \<forall\><math|x,y \<in\> \<Omega\> \<exists\>
  \<gamma\>:<around*|[|a,b|]>\<rightarrow\>\<Omega\> :
  \<gamma\><around*|(|a|)> = x \<nocomma\>,\<gamma\><around*|(|b|)> = y >
  continua\ 

  <subsection|Funzione oscillante>

  Una funzione f \ si dice oscillante se non converge e non diverge

  <subsection|Derivata direzionale>

  Sia <math|f:\<Omega\>\<rightarrow\>R > con <math|\<Omega\> \<subseteq\>
  R<rsup|n>> e sia <math|x<rsub|0>>\<in\><math|\<Omega\>> allora si dirà che
  f è derivabile nella direzione di <math|v> ,
  <math|v\<in\>\<bbb-R\><rsup|n>-<around*|{|0|}>,> se esiste finito il limite
  <math|lim<rsub|h\<rightarrow\>0><frac|1|h><around*|[|f<around*|(|x<rsub|0>+hv|)>-f<around*|(|x<rsub|0>|)>|]>>
  ed esso verrà chiamato derivata direzionale di f nella direzione di v in
  <math|x<rsub|0>> e verrà indicato con il seguente simbolo
  <math|<frac|\<partial\>f<around*|(|x<rsub|0>|)>|\<partial\>v>> oppure
  <math|f<rsub|v><around*|(|x<rsub|0>|)> > oppure
  <math|\<partial\><rsub|v><around*|(|x<rsub|0>|)>>. La derivata direzionale
  lungo le basi canonica viene detta derivata parziale e si denotano con
  <math|<frac|\<partial\>f<around*|(|x<rsub|0>|)>|\<partial\>x<rsub|i>>>,
  oppure <math|f<rsub|x<rsub|i>><around*|(|x<rsub|0>|)>> oppure
  <math|\<partial\><rsub|x<rsub|i>><around*|(|x<rsub|0>|)>>.\ 

  \;

  <subsection|Funzione <math|\<alpha\>>-omogenea>

  Una funzione f si dice <math|\<alpha\>>-omogenea ( o omogenea di grado
  <math|\<alpha\>> ) se <math|f<around*|(|tx|)>=
  t<rsup|\<alpha\>>f<around*|(|x|)>\<forall\> tx \<in\> dom f>

  Una funzione 0 omogenea è del tipo <math|f<around*|(|tx|)> = t<rsup|0
  >f<around*|(|x|)>= f<around*|(|x|)>>

  <subsection|Differenziale>

  Sia <math|f: \<Omega\>\<rightarrow\>\<bbb-R\>> con <math|\<Omega\>\<space\>
  \<in\> \<bbb-R\><rsup|n>> e sia <math|x<rsub|0> \<in\> \<Omega\>> allora f
  si dice differenziabile in <math|x<rsub|0>> se <math|\<exists\> A :
  \<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> lineare tale che
  <math|lim<rsub|w\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+w|)>-
  f<around*|(|x<rsub|0>|)> - A<around*|(|w|)>|<around*|\||w|\|>> = 0>.
  L'applicazione lineare A(w) si chiama differenziale di f nel punto
  <math|x<rsub|0> > secndo l'incremento w si indica con
  <math|df<around*|(|x<rsub|o>\<noplus\>+w|)>= A<around*|(|w|)>>
  <math|x<rsub|0>,w \<in\> \<bbb-R\><rsup|n>>. La formula con cui si calcola
  il differenziale è <math|A<around*|(|w|)> = <big|sum><rsub|i =
  1><rsup|n>w<rsub|i> <frac|\<partial\>f<around*|(|x<rsub|0>|)>|\<partial\>x<rsub|i>>>
  ovvero corrisponde al prodotto scalare tra il gradiente è l'incremento
  -\<gtr\> <math|A<around*|(|w|)> = \<nabla\>f<around*|(|x<rsub|0>|)>*w =
  df<around*|(|x<rsub|0>,w|)>>.

  <subsection|Funzione di classe <math|C<rsup|1>>>

  Una funzione <math|f:\<Omega\>\<rightarrow\>\<bbb-R\> > con <math|\<Omega\>
  \<subseteq\> \<bbb-R\><rsup|n>> \ si dice di classe <math|C<rsup|1>> se è
  continua in <math|\<Omega\>> e se le sue derivate parziali prime sono
  continue in <math|\<Omega\>>,

  <subsection|Equazioni della curva di livello>

  Data una \ funzione <math|f:\<Omega\>\<rightarrow\>\<bbb-R\> > con
  <math|\<Omega\> \<subseteq\> \<bbb-R\><rsup|n>> e data <math|\<gamma\> :
  <around*|[|a,b|]>\<rightarrow\>\<Omega\>> si dice curva di livello K di f
  su <math|\<Omega\>> se\ 

  <math|f<around*|(|\<gamma\><around*|(|t|)>|)> = k > \ \ <math|\<forall\>t
  \<in\><around*|[|a,b|]>>.

  Le curva di livello sono sempre perpendicolari al gradiente in quanto se
  <math|f<around*|(|\<gamma\><around*|(|t|)>|)> = k > allora <math|<frac|d
  <around*|(|f<around*|(|\<gamma\><around*|(|t|)>|)>|)>|dt> = 0> e di
  conseguenza <math|\<nabla\>f<around*|(|\<gamma\><around*|(|t|)>|)>*\<gamma\><around*|(|t|)><rprime|'>>
  = 0 <math|\<forall\>t \<in\><around*|(|a,b|)>>

  <subsection|Direzione di massima pendenza>

  Si definisce direzione di massima pendenza, crescente o decresente, la
  direzione nel quale la funzione ``cresce'' più,, velocemente.

  <\itemize>
    <item>Versore nella direzione di massima pendennza crescenente =
    <math|<frac|\<nabla\>f<around*|(|x<rsub|0>|)>|<around*|\||\<nabla\>f<around*|(|x<rsub|0>|)>|\|>>>

    <item>Versore nella direzione di massima pendennza decrescnete =
    -<math|<frac|\<nabla\>f<around*|(|x<rsub|0>|)>|<around*|\||\<nabla\>f<around*|(|x<rsub|0>|)>|\|>>>
  </itemize>

  <subsection|Funzioni tangent in punto>

  Data <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> e
  <math|g:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> si definiscono tangenti
  in un punto <math|x<rsub|0> \<in\> \<bbb-R\><rsup|n>> se
  <math|Lim<rsub|w\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+w|)>-g<around*|(|x<rsub|0>+w|)>|w>
  = 0<rsub|>>

  <subsection|Vettore Normale, Piano Tangente e Retta tangente>

  <\itemize>
    <item>Dato una funzione <math|f:\<Omega\>\<rightarrow\>\<bbb-R\>> con
    <math|\<Omega\> \<subseteq\>\<bbb-R\><rsup|n>> si definisce graph
    f<math|=<around*|{|<around*|(|x,y|)> : x \<in\> dom f <text| \ >y =
    f<around*|(|x|)>|}>>

    <item>Mentre si definisce Piano tangente al graph di f l'equazione
    <math|z = f<around*|(|x<rsub|o>|)>+\<nabla\>f<around*|(|x<rsub|0>|)><around*|(|x-x<rsub|0>|)>>

    <item>Si definisce vettore normale al piano tangente il vettore avente le
    seguenti coordinate <math|V= <around*|(|\<nabla\>f<around*|(|x<rsub|0>|)>,-1|)>>
    (Con il gradiente si intendono tutte le sue derivate parziali prime, una
    per componente ).

    <item>Si definisce invece Retta Tangente al sostegno di <math|\<gamma\>>
    nel suo punto <math|\<gamma\><around*|(|t<rsub|o>|)>> la retta
    parametrica <math|\<sigma\><around*|(|t|)> =
    \<gamma\><around*|(|t<rsub|0>|)>\<noplus\>
    \<noplus\>+<around*|(|t-t<rsub|0>|)>\<gamma\><around*|(|t<rsub|0>|)><rprime|'>>.
    Il vettore <math|\<gamma\><around*|(|t<rsub|0>|)><rprime|'>> oltre che
    derivata si dirà anche velocità di \<gamma\> in
    <math|\<gamma\><around*|(|t<rsub|0>|)>.>
  </itemize>

  \;

  \;

  \;

  \;

  \;

  \;

  <subsection|Matrice Hessiana e Jacobiana>

  Si definisce matrice Hessiana la matrice contente tutte le derivate
  parziali seconde (solo seconde ).

  Mentre si definisce matrice Jacobiana la matrice avente le funzioni e le
  sue derivate parziali prime.

  <subsection|Funzione di classse <math|C<rsup|2>>>

  Una funzione <math|f:\<Omega\>\<rightarrow\>\<bbb-R\>> con <math|\<Omega\>
  \<subseteq\>\<bbb-R\><rsup|n>> si dice di classe <math|C<rsup|2>> se è
  continua in <math|\<Omega\>>, se le se derivate parziali prime sono
  continue in <math|\<Omega\>> e se lo sono anche le derivate parziali
  seconde in <math|\<Omega\>>

  <subsection|Polinomio di Taylor>

  Si definisce Polinomio di Taylor il Polinomio costruito su una funzione
  avente la seguente forma:\ 

  <math|f<around*|(|x<rsub|0>+w|)>= <big|sum><rsub|k= 0><rsup|n>
  <big|sum><rsub|\<mu\><rsub|1>\<ldots\>\<mu\><rsub|n>\<nocomma\>,\<mu\><rsub|1>+\<ldots\>.\<mu\><rsub|n>=k,\<mu\><rsub|i>\<geqslant\>
  0> <frac|f<rsub|x<rsub|1>><rsup|\<mu\><rsub|1>>\<ldots\>\<ldots\>f<rsub|x<rsub|n>><rsup|\<mu\><rsub|n>><around*|(|x<rsub|0>|)>|\<mu\><rsub|1>!\<ldots\>.\<mu\><rsub|n>!>w<rsub|1><rsup|\<mu\><rsub|1>>\<ldots\>.w<rsub|n><rsup|\<mu\><rsub|n>>+R<rsub|N><around*|(|w|)>>

  Dove <math|R<rsub|n>> può essere\ 

  <\itemize>
    <item>Resto di Peano : <math|R<rsub|n><around*|(|w|)> =
    O<around*|(|<around*|\||W|\|><rsup| n>|)>>

    <item>Resto di Lagrange : <math|R<rsub|n><around*|(|w|)> =
    <frac|f<rsup|n+1><around*|(|\<xi\>|)>w<rsup|n+1>|<around*|(|n+1|)>!>>
  </itemize>

  <subsection|Primitive>

  Data una funzione <math|f> si dice se,date F e G primitive di f allora F' =
  f, G'=f , (F-G)' = 0 con soluzioni particolari u' = 0, u' = f.

  <subsection|Campo di vettori di classe <math|C<rsup|k>>>

  Dato <math|\<Omega\> \<subseteq\> \<bbb-R\><rsup|n>> si definisce campo (di
  vettori ) in <math|\<Omega\>>, di classe <math|C<rsup|k>>,una funzione
  <math|A:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|n>> con <math|A =
  A<around*|(|A<rsub|1>,A<rsub|2>,\<ldots\>\<ldots\>\<nocomma\>A<rsub|n>|)>>
  le cui componenti scalari <math|A<rsub|i> : \<Omega\>
  \<rightarrow\>\<bbb-R\>> sono funzioni scalari continue e deriviabili fino
  all'ordine K <math|\<forall\>i = 1\<ldots\>n>.Il vettore di arrivo di A(x)
  ha lo stesso numero di componenti del vettore di partenza x.

  <subsection|Campo Piano>

  Si definisce campo piano un campo definito su <math|\<bbb-R\><rsup|2>> o su
  un suo sottinsieme ed è composto da una coppia di funzioni
  <math|A<around*|(|x,y|)> = <around*|(|\<alpha\><around*|(|x,y|)>,\<beta\><around*|(|x,y|)>|)>>
  che individuano il vettore in <math|\<bbb-R\><rsup|2>> associato al punto
  (x,y)\ 

  <subsection|Forma differenziale lineare>

  Dato <math|\<Omega\> \<subseteq\>\<bbb-R\><rsup|n>> si definisce forma
  differenziale lineare(o solo forma differennziale (o solo forma ))) una
  funzione <math|\<alpha\> : \<Omega\>> x
  <math|\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> tale che \<forall\>
  <overline|x> \<in\> <math|\<Omega\>> la funzione <math|t \<rightarrow\>
  \<alpha\><around*|(|<overline|x>,t|)>> si lineare in t.

  <subsection|Campo associato all forma e forma associata al campo>

  Qualunque forma <math|\<alpha\><around*|(|x,w|)>> per la quale
  <math|w\<rightarrow\>\<alpha\><around*|(|<overline|x>,w|)>> è lineare
  \<forall\><overline|x> fissato si può definire un campo di vettori A(x)
  tale che <math|\<alpha\><around*|(|<overline|x>,w|)> =
  A<around*|(|<overline|x>|)>w>. Il campo di vettori A(x) verrà detto
  associato alla forma \<alpha\>(x,w). \<alpha\>(x,w) verrà detto di classe
  <math|C<rsup|k> > se A(x) è di classe <math|C<rsup|k>>.

  <subsection|Integrale di un campo su una curva continua>

  Sia <math|A:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|n> un > campo di classe
  <math|C<rsup|0> > \ \<forall\> curva parametrica continua
  \<gamma\><math|:<around*|[|a,b|]>\<rightarrow\>\<Omega\>> si definisce
  integrale di A esteso alla curva <math|\<gamma\>> l'integral
  <math|<big|int><rsub|\<gamma\>>A> = <math|<big|int><rsup|b><rsub|a>A<around*|(|\<gamma\><around*|(|t|)>|)>
  \<gamma\><around*|(|t|)><rprime|'> dt>

  <subsection|Campo e Forma Integrabili>

  <\itemize>
    <item>Un campo di vettori <math|A:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|n>
    > si dirà integrabile o potenziale se
    <math|\<exists\>f:\<Omega\>\<rightarrow\>\<bbb-R\>> tale che \<nabla\>f
    =A.Ogni funzione verificante tale identità si dirà primitiva o
    potenziale.

    <item>Una forma <math|\<alpha\>:\<Omega\>*<text|x>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>
    si dirà integrabile o esatta se <math|\<exists\>f:\<Omega\>\<rightarrow\>\<bbb-R\>>
    tale che df(x,w) = \<alpha\>(x,w) su <math|\<Omega\>> x
    <math|\<bbb-R\><rsup|n>>. Ogni funzione f verificante tale indentità si
    dirà primitiva o potenziale della forma \<alpha\>
  </itemize>

  <subsection|Curva Regolare>

  Una curva <math|\<gamma\><around*|[|a,b|]>\<rightarrow\>\<bbb-R\><rsup|n>>
  si dirà regolare se <math|<around*|\||\<gamma\><around*|(|t|)><rprime|'>|\|>
  \<neq\> 0> \ \ \ <math|\<forall\>t\<in\><around*|[|a,b|]>>

  <subsection|Superfice Parametica regolare>

  Data una superfice <math|\<phi\> :\<Omega\>\<rightarrow\>\<bbb-R\><rsup|3>>
  con \<Omega\> compatto (<math|\<subseteq\> \<bbb-R\><rsup|2>>) si definisce
  regolare se\ 

  <\itemize>
    <item>\<phi\> è iniettiva su \<Omega\>

    <item>\<phi\> \<in\> <math|C<rsup|1><around*|(|\<Omega\>|)>>

    <item>\<phi\>' jacobiano di \<phi\> è di rango 2

    <item><math|\<phi\><rsub|u>\<wedge\>\<phi\><rsub|v> \<neq\> 0
    \<forall\><around*|(|u,v|)> \<in\> \<Omega\>>
  </itemize>

  <subsection|Curva Rettificabile>

  Una curva <math|\<gamma\><around*|[|a,b|]>\<rightarrow\>\<bbb-R\><rsup|n>>
  si definisce rettificabile (= lunghezza finita) \ se
  <math|sup<rsub|\<Pi\>><around*|(|\<Pi\>|)> \<less\> + inf> e si definisce
  <math|\<Pi\>> la partizione della curva sull'intervallo [a,b]. La formula
  per la lunghezza della polinomiale della partizione è
  <math|\<wedge\><around*|(|\<Pi\>|)>= <big|sum><rsub|i =
  0><rsup|n-1><around*|\||\<gamma\><rsub|t<rsub|i>+1>-\<gamma\><rsub|t<rsub|i>>|\|>>.
  Se una curva è rettificabile allora <math|\<wedge\><around*|(|\<gamma\>|)>=
  <big|int><rsub|a><rsup|b><around*|\||\<gamma\><around*|(|t|)><rprime|'>|\|>
  dt>.

  <subsection|Campo Irrotazione e forma chiusa>

  <\itemize>
    <item>Una campo A di classe <math|C<rsup|k> > è detto irrotazione se
    <math|<around*|(|A<rsub|i>|)><rsub|x<rsub|j>> =
    <around*|(|A<rsub|J>|)><rsub|x<rsub|i>> \<forall\>i \<neq\>j>

    <item>Una forma differenziale \<alpha\>(x,w) = A(x)w si dirà chiusa se il
    suo campo associato A è irrotazionale
  </itemize>

  <subsection|Congiunzione di curva>

  Date due curve <math|\<gamma\><rsub|1>:<around*|[|a,b|]> \<rightarrow\>
  \<Omega\>> e <math|\<gamma\><rsub|2><around*|[|b,c|]>\<rightarrow\>\<Omega\>>
  si dirà congiunzione delle curve <math|\<gamma\><rsub|1 >\<oplus\>
  \<gamma\><rsub|2>> la curva definita da <math|\<gamma\><rsub|1> > se
  <math|t\<in\><around*|[|a,b|]>> mentre da <math|\<gamma\><rsub|2>> se
  <math|t\<in\><around*|[|b,c|]>>.

  <subsection|Curva Opposta>

  Data una curva <math|\<gamma\>:<around*|[|a,b|]>\<rightarrow\>\<Omega\>> si
  definisce curva opposta <math|\<ominus\>\<gamma\>> la curva
  <math|\<ominus\>\<gamma\> :<around*|[|a,b|]>\<rightarrow\>\<Omega\>> tale
  che <math|\<ominus\>\<gamma\><around*|(|t|)>=
  \<gamma\><around*|(|b-t+a|)>>.\ 

  <subsection|Curve Deformabili od Omotope>

  Due curve <math|\<gamma\><rsub|1><around*|[|0,1|]>\<rightarrow\>\<Omega\>>
  e <math|\<gamma\><rsub|2><around*|[|0,1|]>\<rightarrow\> \<Omega\>> tale
  che <math|\<gamma\><rsub|1><around*|(|0|)> =
  \<gamma\><rsub|2><around*|(|0|)> > e <math|\<gamma\><rsub|1><around*|(|1|)>
  = \<gamma\><rsub|2><around*|(|1|)>> si dicono deformabili od omotope se
  <math|\<exists\> h : <around*|[|0,1|]>>x<math|<around*|[|0,1|]>\<rightarrow\>\<Omega\>>
  continua tale che <math|h<around*|(|0,t|)> =
  \<gamma\><rsub|!><around*|(|t|)> > e <math|h<around*|(|1,t|)>
  =\<gamma\><rsub|2><around*|(|t|)>>.

  <subsection|Insieme Semplicemente Connesso>

  Un insieme <math|\<Omega\> \<subseteq\>\<bbb-R\><rsup|n>> si dirà
  semplicmente connesso se ogni curva chiusa
  <math|\<gamma\><around*|[|0,1|]>\<rightarrow\>\<Omega\>> è omotopa in
  <math|\<Omega\>> ad una curva costante <math|\<sigma\><around*|(|t|)> =
  x<rsub|0> \<forall\>t\<in\><around*|[|0,1|]>>.

  <subsection|Insieme a stella>

  Un insieme <math|\<Omega\> \<subseteq\> \<bbb-R\><rsup|n> >verrà detto a
  stella se <math|\<exists\>x<rsub|0>\<in\>\<Omega\>> tale che il segmento
  <math|<overline|x<rsub|0>>x \<subseteq\> \<Omega\> > \ \ \<forall\><math|x
  \<in\> \<Omega\>>\ 

  <subsection|Rotore>

  Dato <math|A:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|3> > con
  <math|\<Omega\>\<subseteq\> \<bbb-R\><rsup|3>> di definisce rotore il rotA
  = <math|<around*|(|<around*|(|A<rsub|2>|)><rsub|x<rsub|3>>-<around*|(|A<rsub|3>|)><rsub|x<rsub|2>>
  , -<around*|[|<around*|(|A<rsub|1>|)><rsub|x<rsub|3>>-
  <around*|(|A<rsub|3>|)><rsub|x<rsub|1>>|]>\<nocomma\>,<around*|(|A<rsub|1>|)><rsub|x<rsub|2>>-<around*|(|A<rsub|2>|)><rsub|x<rsub|1>>|)>>.
  Il rotore di un campo vettoriale è a sua volta un campo vettoriale ed è il
  prodotto vettore tra le componenti scalari del campo e le derivate
  parziali.

  <subsection|Componente connessa>

  Un insieme sconnesso è un insieme non connesso ed un insieme sconnesso può
  essere decomposto i componenti connesse.

  Dato <math|\<Omega\>\<subseteq\>\<bbb-R\><rsup|n>,x<rsub|0
  >\<in\>\<Omega\>> si definisce componente connessa contenente
  <math|x<rsub|0>> come : <math|\<Omega\><around*|(|x<rsub|0>|)> =
  <around*|{|x \<in\> \<Omega\>: \<exists\>\<space\>\<gamma\>:<around*|[|0,1|]>\<rightarrow\>\<Omega\>
  : \<gamma\><around*|(|0|)> = x<rsub|0> e \<gamma\><around*|(|1|)> = x|}>>

  <subsection|Sostengo di una curva>

  Data una curva <math|\<gamma\><around*|[|a,b|]> \<rightarrow\>
  \<bbb-R\><rsup|n> > si definisce sostegno l'immagine della curva
  <math|\<gamma\>> Im<math|\<gamma\>>={y \<in\> <math|\<bbb-R\><rsup|n>:
  \<exists\>t\<in\><around*|[|a,b|]>: y = \<gamma\><around*|(|t|)>>}. Il
  sostegno di una curva definisce il grafico di essa, ma non il verso e la
  velocità di percorrenza

  <subsection|Curve Equivalenti>

  Date due curve <math|\<gamma\>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><rsup|n>>
  e <math|\<sigma\><around*|[|c,d|]>\<rightarrow\>\<bbb-R\><rsup|n>> si
  diranno equivalenti se <math|\<exists\>
  \<alpha\>:<around*|[|a,b|]>\<rightarrow\><around*|[|c,d|]>> invertibile con
  \<alpha\><math| \<in\> C<rsup|1><around*|(|<around*|[|a,b|]> |)>> tale che
  <math|\<gamma\><around*|(|t|)>= \<sigma\><around*|(|\<alpha\><around*|(|t|)>|)>>.

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <subsection|Elementi delle teoria della misura e dell'integrazione secondo
  L>

  <\itemize>
    <item>Misura di un intervallo in <math|\<bbb-R\>> :
    <math|<around*|[|a,b|]> \<subseteq\>\<bbb-R\>> allora n([a,b]) = b-a

    <item>Miusra di un intervallo in <math|\<bbb-R\><rsup|2>>: [a,b]x[c,d] =
    {(x,y) : x \<in\>[a,b] e y \<in\>[c,d]} -\<gtr\> n([a,b]x[c,d]) \ (b-a) *
    (c-d)

    <item>Misura di un intervallo in <math|\<bbb-R\><rsup|n>>:
    <math|\<Pi\><rsub|i = 1><rsup|n> <around*|[|a<rsub|i>,b<rsub|i>|]>> =
    {<math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>: <math|x<rsub|i>
    \<in\> <around*|[|a<rsub|i>,b<rsub|i>|]>> \<forall\>i = 1...n} = I
    -\<gtr\>\|I\| = <math|\<Pi\><rsub|i = 1><rsup|n> <around*|(|b<rsub|i>
    -a<rsub|i>|)>>

    <item>Plurintervallo : è un insieme di intervalli che non hanno punti in
    comuni-\<gtr\> <math|\<Pi\>= U<rsub|i = 1><rsup|n>I<rsub|i>> con
    \|<math|I<rsub|i> \<cap\>I<rsub|j>>\| = 0 \<forall\><math|i \<neq\> j>

    <item>Misura degli insiemi aperti : <math|\<Omega\> aperto>,
    <math|\<Pi\>> plurintervallo contenuto in <math|\<Omega\> <text|
    \ >\<Pi\>\<subseteq\>\<Omega\>> -\<gtr\> \|<math|\<Omega\>>\|=
    sup(<math|\<Pi\>>)

    <item>Misura degli insiemi compatti: K compatto, <math|\<Pi\>>
    plurintervallo conentente <math|\<Omega\>> -\<gtr\> \|K\| =
    inf(<math|\<Pi\>>)

    <item>Misura interna ed esterna: E <math|\<subseteq\> \<bbb-R\><rsup|n>>
    insieme arbitrario limitato, definiamo con\ 

    <\itemize>
      <item>\|E\|<math|<rsub|>>* = inf(A) <math|A\<supseteq\> E> aperto
      (misura esterna)

      <item>\|E\|<math|<rsub|*<text|*>>> = sup(K) <math|K \<subseteq\> E
      >compatto (msura interna)\ 
    </itemize>
  </itemize>

  \;

  \;

  \;

  <subsection|Proprietà di un insieme misurabile>

  <\itemize>
    <item>Se E e F sono misurabili allora E U F , E<math|\<cap\> F> e
    E<math|\<backslash\>>F sono misurabili

    <item>Se E e F misurabili con E <math|\<cap\> F > = 0 allora \|E+F\| =
    \|E\| + \|F\|

    <item>Se E e F misurabili con <math|E \<subseteq\> F> allora \|E\|
    <math|\<leqslant\> >\|F\| (MONOTONIA)

    <item>Se E<math|<rsub|i> > i= 1..n misurabili e <math|E<rsub|i
    >\<cap\>E<rsub|j> = 0 \<forall\>i \<neq\>j> allora \|U<math|<rsub|i =
    1><rsup|n> E<rsub|i>>\| = <math|<big|sum><rsub|i=1><rsup|n><around*|\||E<rsub|i>|\|>>
    additiva numerabile

    <item>Se <math|E<rsub|i> i = 1\<ldots\>n> misurbuli \|U<math|<rsub|i =
    1><rsup|n> E<rsub|i>>\| <math|\<leqslant\>>
    <math|<big|sum><rsub|i=1><rsup|n><around*|\||E<rsub|i>|\|>> subadditività
    numerabile

    <item>Se E<math|<rsub|1> \<subseteq\> E<rsub|2>
    \<subseteq\>\<ldots\>E<rsub|n>> misurabili con E = <math|U<rsub|i =
    1><rsup|n>E<rsub|i>> allora \|E\| = sup<math|<rsub|i =
    1\<ldots\>n><around*|(|<around*|\||E<rsub|i>|\|>|)>> continuità verso
    l'alto

    <item>Se <math|E<rsub|1>\<supseteq\>E<rsub|2
    >\<supseteq\>\<ldots\>.E<rsub|n>> misurabili sia E = <math|\<cap\><rsub|i
    = 1><rsup|n>E<rsub|i> > allora \|E\| = <math|inf<rsub|i =
    1\<ldots\>n><around*|(|<around*|\||E<rsub|i>|\|>|)>>
  </itemize>

  <subsection|Insieme Numerabile>

  Un insieme <math|\<Omega\>> si dice numerabile se ha la stessa cardinalità
  dell'insieme dei numeri naturali <math|\<bbb-N\>>,cioè se è possibile
  stabilire una corrispondenza biuniovca tra <math|\<Nu\> e \<Omega\>>. Se
  <math|\<Omega\>> numerabile allora \|<math|\<Omega\>>\| = 0.

  <subsection|Misura di insiemi non limitati>

  Dato E insieme non limitato e data <math|B<rsub|r><around*|(|0|)>> sfera di
  raggio r \<gtr\>0 \ con <math|E\<cap\>B<rsub|r><around*|(|0|)>> misurabile
  allora \|E\|= sup<math|<rsub|r><around*|\||E\<cap\>B<rsub|r><around*|(|0|)>|\|>>
  <math|>

  <subsection|Funzione Misurabile>

  Una funzione si dice misurabile se l'insieme {<math|x \<in\>domf :
  f<around*|(|x|)> \<in\> I>} è misurabile per ogni intervallo I

  <subsection|Funzione Numerabile>

  Una funzione f si dice numerabile se \<forall\> intervallo I,
  <math|f<rsup|-1><around*|(|I|)>> è misurabile

  <subsection|Proprietà dell'integrale di Lebesgue>

  <\itemize>
    <item>

    <item>Se f e g \ integrabili su E e <math|f \<geqslant\> g> allora
    <math|<big|int><rsub|E>f \<geqslant\> <big|int><rsub|e>g> (MONOTONIA)

    <item>Se f<math|\<geqslant\> 0> integrabile su E allora
    <math|<big|int><rsub|E>F \<geqslant\> 0> (Positività)

    <item>Se f integrabile su E e \|E\| = 0 allora <math|<big|int><rsub|E>f =
    0>

    <item>Se f integrabile su E, f<math| \<geqslant\> 0> tale che
    <math|<big|int><rsub|E>f = 0> allora \|{x \<in\> E : f(x) <math|\<neq\>>
    0}\| = 0

    <item>Se f integrabile su E e F con <math|E \<supseteq\> F> e f
    <math|\<geqslant\> 0> allora <math|<big|int><rsub|E>f> <math|\<geqslant\>
    <big|int><rsub|F>f>

    <item>Se f integrabile su <math|U<rsub|i = 1><rsup|n>E<rsub|i>>, con
    <math|E<rsub|i>\<cap\>E<rsub|j> = 0 \<forall\>i\<neq\>j> allora
    <math|<big|int><rsub|U<rsub|i = 1><rsup|n>>E<rsub|i> = <big|sum><rsub|i =
    1><rsup|n><big|int><rsub|E<rsub|i>>f>

    <item>CNS: affinche f sia integrabile su E è che
    <math|\<forall\>\<varepsilon\>\<gtr\>0 \<exists\> \<Pi\> :
    <around*|(|\<Sigma\><rsub|\<Pi\>>-\<sigma\><rsub|\<Pi\>>|)>\<less\>
    \<varepsilon\>>
  </itemize>

  <subsection|Dominio Normale>

  Si deginisce Dominio normale lo spazio compreso tra due funzioni

  <\itemize>
    <item>Rispetto ad x : E un dominio normale rispetto ad x se\ 

    <\itemize>
      <item><math|E<rsub|x>= <around*|[|a,b|]> >

      <item><math|\<exists\> \<varphi\> : <around*|[|a,b|]>\<rightarrow\>
      \<bbb-R\> : \<psi\>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>>

      <item>E = {(x,y) : x \<in\>[a,b] e <math|\<varphi\><around*|(|x|)>\<leqslant\>
      y \<leqslant\> \<psi\><around*|(|x|)>>}
    </itemize>

    <item>Rispetto ad y : E un dominio normale rispetto ad y \ se\ 

    <\itemize>
      <item><math|E<rsub|y>= <around*|[|c,d|]> >

      <item><math|\<exists\> \<varphi\> : <around*|[|c,d|]>\<rightarrow\>
      \<bbb-R\> : \<psi\>:<around*|[|c,d|]>\<rightarrow\>\<bbb-R\>>

      <item>E = {(x,y) : y \<in\>[c,d] e <math|\<varphi\><around*|(|d|)>\<leqslant\>
      x \<leqslant\> \<psi\><around*|(|d|)>>}
    </itemize>

    \;
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|page-orientation|landscape>
    <associate|par-columns|2>
    <associate|prog-scripts|r>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|Lista definizioni Analisi II.tm>>
    <associate|auto-10|<tuple|1.9|1|Lista definizioni Analisi II.tm>>
    <associate|auto-11|<tuple|1.10|2|Lista definizioni Analisi II.tm>>
    <associate|auto-12|<tuple|1.11|2|Lista definizioni Analisi II.tm>>
    <associate|auto-13|<tuple|1.12|2|Lista definizioni Analisi II.tm>>
    <associate|auto-14|<tuple|1.13|2|Lista definizioni Analisi II.tm>>
    <associate|auto-15|<tuple|1.14|2|Lista definizioni Analisi II.tm>>
    <associate|auto-16|<tuple|1.15|2|Lista definizioni Analisi II.tm>>
    <associate|auto-17|<tuple|1.16|2|Lista definizioni Analisi II.tm>>
    <associate|auto-18|<tuple|1.17|2|Lista definizioni Analisi II.tm>>
    <associate|auto-19|<tuple|1.18|2|Lista definizioni Analisi II.tm>>
    <associate|auto-2|<tuple|1.1|1|Lista definizioni Analisi II.tm>>
    <associate|auto-20|<tuple|1.19|2|Lista definizioni Analisi II.tm>>
    <associate|auto-21|<tuple|1.20|2|Lista definizioni Analisi II.tm>>
    <associate|auto-22|<tuple|1.21|3|Lista definizioni Analisi II.tm>>
    <associate|auto-23|<tuple|1.22|3|Lista definizioni Analisi II.tm>>
    <associate|auto-24|<tuple|1.23|3|Lista definizioni Analisi II.tm>>
    <associate|auto-25|<tuple|1.24|3|Lista definizioni Analisi II.tm>>
    <associate|auto-26|<tuple|1.25|3|Lista definizioni Analisi II.tm>>
    <associate|auto-27|<tuple|1.26|3|Lista definizioni Analisi II.tm>>
    <associate|auto-28|<tuple|1.27|3|Lista definizioni Analisi II.tm>>
    <associate|auto-29|<tuple|1.28|3|Lista definizioni Analisi II.tm>>
    <associate|auto-3|<tuple|1.2|1|Lista definizioni Analisi II.tm>>
    <associate|auto-30|<tuple|1.29|3|Lista definizioni Analisi II.tm>>
    <associate|auto-31|<tuple|1.30|3|Lista definizioni Analisi II.tm>>
    <associate|auto-32|<tuple|1.31|4|Lista definizioni Analisi II.tm>>
    <associate|auto-33|<tuple|1.32|4|Lista definizioni Analisi II.tm>>
    <associate|auto-34|<tuple|1.33|4|Lista definizioni Analisi II.tm>>
    <associate|auto-35|<tuple|1.34|4|Lista definizioni Analisi II.tm>>
    <associate|auto-36|<tuple|1.35|4|Lista definizioni Analisi II.tm>>
    <associate|auto-37|<tuple|1.36|4|Lista definizioni Analisi II.tm>>
    <associate|auto-38|<tuple|1.37|4|Lista definizioni Analisi II.tm>>
    <associate|auto-39|<tuple|1.38|4|Lista definizioni Analisi II.tm>>
    <associate|auto-4|<tuple|1.3|1|Lista definizioni Analisi II.tm>>
    <associate|auto-40|<tuple|1.39|5|Lista definizioni Analisi II.tm>>
    <associate|auto-41|<tuple|1.40|5|Lista definizioni Analisi II.tm>>
    <associate|auto-42|<tuple|1.41|5|Lista definizioni Analisi II.tm>>
    <associate|auto-43|<tuple|1.42|5|Lista definizioni Analisi II.tm>>
    <associate|auto-44|<tuple|1.43|5|Lista definizioni Analisi II.tm>>
    <associate|auto-45|<tuple|1.44|5|Lista definizioni Analisi II.tm>>
    <associate|auto-46|<tuple|1.45|5|Lista definizioni Analisi II.tm>>
    <associate|auto-47|<tuple|1.46|5|Lista definizioni Analisi II.tm>>
    <associate|auto-48|<tuple|1.47|5|Lista definizioni Analisi II.tm>>
    <associate|auto-49|<tuple|1.48|5|Lista definizioni Analisi II.tm>>
    <associate|auto-5|<tuple|1.4|1|Lista definizioni Analisi II.tm>>
    <associate|auto-50|<tuple|1.49|6|Lista definizioni Analisi II.tm>>
    <associate|auto-51|<tuple|1.50|6|Lista definizioni Analisi II.tm>>
    <associate|auto-52|<tuple|1.51|6|Lista definizioni Analisi II.tm>>
    <associate|auto-53|<tuple|1.52|6|Lista definizioni Analisi II.tm>>
    <associate|auto-54|<tuple|1.53|6|Lista definizioni Analisi II.tm>>
    <associate|auto-55|<tuple|1.54|6|Lista definizioni Analisi II.tm>>
    <associate|auto-56|<tuple|1.55|6|Lista definizioni Analisi II.tm>>
    <associate|auto-57|<tuple|1.56|6|Lista definizioni Analisi II.tm>>
    <associate|auto-58|<tuple|1.57|6|Lista definizioni Analisi II.tm>>
    <associate|auto-59|<tuple|1.58|7|Lista definizioni Analisi II.tm>>
    <associate|auto-6|<tuple|1.5|1|Lista definizioni Analisi II.tm>>
    <associate|auto-60|<tuple|1.59|7|Lista definizioni Analisi II.tm>>
    <associate|auto-61|<tuple|1.60|7|Lista definizioni Analisi II.tm>>
    <associate|auto-62|<tuple|1.61|7|Lista definizioni Analisi II.tm>>
    <associate|auto-63|<tuple|1.62|7|Lista definizioni Analisi II.tm>>
    <associate|auto-64|<tuple|1.63|7|Lista definizioni Analisi II.tm>>
    <associate|auto-65|<tuple|1.64|7|Lista definizioni Analisi II.tm>>
    <associate|auto-66|<tuple|1.65|?>>
    <associate|auto-67|<tuple|1.66|?>>
    <associate|auto-68|<tuple|1.67|?>>
    <associate|auto-7|<tuple|1.6|1|Lista definizioni Analisi II.tm>>
    <associate|auto-8|<tuple|1.7|1|Lista definizioni Analisi II.tm>>
    <associate|auto-9|<tuple|1.8|1|Lista definizioni Analisi II.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Definizioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Sfera
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Punto Interno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Punto Esterno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Punto di frontiera
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Punto Isolato
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Punto di Accumulazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Insieme aperto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Insieme Chiuso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.9<space|2spc>Insieme Limitato
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Insieme Convesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|1.11<space|2spc>Insieme Connesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|1.12<space|2spc>Chiusura di un insieme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|1.13<space|2spc>Insieme compatto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|1.14<space|2spc>Successione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|1.15<space|2spc>Successione convergente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|1.16<space|2spc>Successione divergente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|1.17<space|2spc>Successioni oscillanti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|1.18<space|2spc>Continuità di f
      :<with|mode|<quote|math>| \<bbb-R\><rsup|n>\<rightarrow\>
      \<bbb-R\><rsup|m>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|1.19<space|2spc>Curva parametrica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|1.20<space|2spc>Superfice Parametrica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|1.21<space|2spc>Curva chiusa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|1.22<space|2spc>Curva costante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|1.23<space|2spc>Curva Semplice
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|1.24<space|2spc>Insieme connesso (per archi
      ) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|1.25<space|2spc>Funzione oscillante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|1.26<space|2spc>Derivata direzionale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|1.27<space|2spc>Funzione
      <with|mode|<quote|math>|\<alpha\>>-omogenea
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|1.28<space|2spc>Differenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|1.29<space|2spc>Funzione di classe
      <with|mode|<quote|math>|C<rsup|1>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|1.30<space|2spc>Equazioni della curva di
      livello <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1tab>|1.31<space|2spc>Direzione di massima
      pendenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|1.32<space|2spc>Funzioni tangent in punto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|1.33<space|2spc>Vettore Normale, Piano
      Tangente e Retta tangente <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|1.34<space|2spc>Matrice Hessiana e
      Jacobiana <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|1.35<space|2spc>Funzione di classse
      <with|mode|<quote|math>|C<rsup|2>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|1.36<space|2spc>Polinomio di Taylor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|1.37<space|2spc>Primitive
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|1.38<space|2spc>Campo di vettori di classe
      <with|mode|<quote|math>|C<rsup|k>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|1.39<space|2spc>Campo Piano
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|1.40<space|2spc>Forma differenziale lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|1.41<space|2spc>Campo associato all forma e
      forma associata al campo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|1.42<space|2spc>Integrale di un campo su
      una curva continua <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|1.43<space|2spc>Campo e Forma Integrabili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|1tab>|1.44<space|2spc>Curva Regolare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|1.45<space|2spc>Superfice Parametica
      regolare <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|1.46<space|2spc>Curva Rettificabile
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|1.47<space|2spc>Campo Irrotazione e forma
      chiusa <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|1.48<space|2spc>Congiunzione di curva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|1tab>|1.49<space|2spc>Curva Opposta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|1.50<space|2spc>Curve Deformabili od
      Omotope <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|1.51<space|2spc>Insieme Semplicemente
      Connesso <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1tab>|1.52<space|2spc>Insieme a stella
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|1tab>|1.53<space|2spc>Rotore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|1.54<space|2spc>Componente connessa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|1.55<space|2spc>Sostengo di una curva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|1tab>|1.56<space|2spc>Curve Equivalenti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|1.57<space|2spc>Elementi delle teoria della
      misura e dell'integrazione secondo L
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|1tab>|1.58<space|2spc>Proprietà di un insieme
      misurabile <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|1.59<space|2spc>Insieme Numerabile
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|1.60<space|2spc>Misura di insiemi non
      limitati <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|1tab>|1.61<space|2spc>Funzione Misurabile
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|1tab>|1.62<space|2spc>Funzione Numerabile
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|1.63<space|2spc>Proprietà dell'integrale di
      Lebesgue <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|1tab>|1.64<space|2spc>Dominio Normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|1.99.2>

<style|letter>

<\body>
<<<<<<< Updated upstream
  <doc-data|<doc-title|Formulario di fisica>|<doc-author|<author-data|<author-name|Gianluca
  Mondini>>>>

  \;

  <chapter|Cinematica>

  \;

  \;

  <section|Energia meccanica>

  <subsection|Energia cinetica del centro di massa>

  <\equation*>
    E<rsub|c>=<frac|1|2>*m*v<rsup|2>\<space\><space|1em><around*|[|J|]>
  </equation*>

  <subsection|Energia cinetica di rotazione>

  <\equation*>
    E<rsub|rot>=<frac|1|2>*m*v<rsup|2>=<frac|1|2>*m*r<rsup|2>*w<rsup|2>
  </equation*>

  a questo punto si pone <math|m*r<rsup|2>=I> e si ottiene

  <\equation*>
    E<rsub|rot>=<frac|1|2>*I*w<rsup|2>
  </equation*>

  <subsection|Relazione tra energia cinetica e quantità di moto>

  <\equation*>
    E<rsub|c>=<frac|p<rsup|2>|2*m>
  </equation*>

  <\equation*>
    p=<sqrt|2*m*E<rsub|c>>
  </equation*>

  <subsection|Lavoro ed energia cinetica>

  <\equation*>
    W=\<Delta\>E<rsub|c>=<frac|1|2>*m<around*|(|v<rsub|f><rsup|2>-v<rsub|i><rsup|2>|)>
  </equation*>

  <subsection|Energia potenziale gravitazionale (vicino alla superficie)>

  <\equation*>
    U<around*|(|h|)>=m*g*h
  </equation*>

  <subsection|Energia potenziale gravitazionale (distanza arbitraria)>

  <\equation*>
    U<around*|(|r|)>=-G<frac|M*m|<around*|\||r|\|>>
  </equation*>

  \;

=======
>>>>>>> Stashed changes
  <section|Moto oscillatorio>

  <\equation*>
    x<around*|(|t|)>=A*cos<around*|(|\<omega\>*t+\<Phi\>|)>
  </equation*>

  <\equation*>
    \<omega\>=<sqrt|<frac|k|m>>
  </equation*>

  <subsection|Forza frenante>

  <\equation*>
    x=A\<cdot\>e<rsup|-<frac|b|2m>*t>\<cdot\>cos<around*|(|\<omega\>*t+\<Phi\>|)>
  </equation*>

  <\equation*>
    \<omega\>=<sqrt|<frac|k|m>-<around*|(|<frac|b|2*m>|)><rsup|2>>
  </equation*>

  <subsection|Periodo di oscillazione>

  <subsubsection|Pendolo semplice>

  <\equation*>
    T=<frac|2*\<pi\>|\<omega\>>=2*\<pi\>*<sqrt|<frac|l|g>>
  </equation*>

  <subsubsection|Pendolo fisico>

  <\equation*>
    T=2*\<pi\>*<sqrt|<frac|I|m*g*d>>
  </equation*>

  <section|Moto circolare>

  <subsection|Forza centripeta>

  <\equation*>
<<<<<<< Updated upstream
    F<rsub|c>=m*<frac|v<rsub|t><rsup|2>|r>
  </equation*>

  <\equation*>
    <wide|F<rsub|c>|\<vect\>>=m*w<rsup|2>*r
  </equation*>

  <section|Accelerazione angolare>

  \;

  <\equation*>
    <big|sum>\<tau\>=I*\<alpha\>
  </equation*>

  \;

  <section|Momento di una forza>

  \;

  <\equation*>
    <wide|\<tau\>|\<vect\>>=<wide|r|\<vect\>>\<times\><wide|F|\<vect\>>
  </equation*>
=======
    F<rsub|c>=m*<frac|v<rsub|t><rsup|2>|r> = m\<omega\><rsup|2>r
  </equation*>

  \;
>>>>>>> Stashed changes

  <section|Momento angolare>

  Un punto materiale di quantità di moto <math|<wide|p|\<vect\>>=m*<wide|v|\<vect\>>>
  possiede, rispetto ad un asse passante per l'origine, un momento angolare
  <math|<wide|L|\<vect\>>> dato dall'espressione

  <\equation*>
    <wide|L|\<vect\>>=<wide|r|\<vect\>>\<times\><wide|p|\<vect\>>
  </equation*>

  dove <math|<wide|r|\<vect\>>> è il vettore posizione del punto materiale
  relativo all'origine.

  Si ha anche che

  <\equation*>
    <big|sum><wide|\<tau\>|\<vect\>>=<frac|d<wide|L|\<vect\>>|d*t>
  </equation*>

  Se il corpo ruota attorno ad un asse fisso <math|z>, la componente lungo
  tale asse del momento angolare è

  <\equation*>
    L<rsub|z>=I*\<omega\>
  </equation*>

  dove <math|I> è il momento di inerzia del corpo rispetto all'asse di
  rotazione e <math|\<omega\>> la sua velocità angolare

  <section|Potenza ``angolare''>

  <\equation*>
    P=<frac|d*W|d*t>=\<tau\>*\<omega\>
  </equation*>

  <chapter|Elettromagnetismo>

  <subsection|Forza di Coulomb>

  <\equation*>
    <around*|\||F<rsub|e>|\|>=k<rsub|e>\<cdot\><frac|<around*|\||q<rsub|1>|\|>\<cdot\><around*|\||q<rsub|2>|\|>|r<rsup|2>>
  </equation*>

  dove <math|k<rsub|e>=8.9876\<times\>10<rsup|9>
  N\<cdot\>m<rsup|2>/C<rsup|2>><math|>. <math|k<rsub|e>> si può indicare
  anche come <math|<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>>

  <subsubsection|Energia potenziale (Coulomb)>

  <\equation*>
    U<around*|(|r|)>=<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>><frac|Q*q|<around*|\||r|\|>>
  </equation*>

  dove <math|Q> è la carica generatrice del campo

  <subsection|Quantità totale di carica>

  La quantità totale di carica che scorre in un circuito in un instante di
  tempo è pari a

  <\equation*>
    Q=<big|int><rsub|0><rsup|t<rsub|1>>I<around*|(|t|)>*dt<space|1em><around*|[|C|]>
  </equation*>

  <subsection|Vettore campo elettrico>

  <\equation*>
    <wide|F<rsub|e>|\<vect\>>=q<rsub|0>*<wide|E|\<vect\>>
  </equation*>

  <subsection|Lavoro per spostare una carica>

  <\equation*>
    W=<frac|q<rsub|1>*q<rsub|2>|4*\<pi\>*\<varepsilon\><rsub|0>><around*|(|<frac|1|r<rsub|A>>-<frac|1|r<rsub|B>>|)>
  </equation*>

  <subsection|Energia potenziale elettrica>

  Un campo conservativo ammette energia potenziale.

  Partendo dalla relazione

  <\equation*>
    W<rsub|cons>=-\<Delta\>U<rsub|E>=U<rsub|finale>-U<rsub|iniziale>
  </equation*>

  Abbiamo che l'energia potenziale associata al campo elettrico è uguale a

  <\equation*>
    U<rsub|E>=<frac|q<rsub|1>*q<rsub|2>|4*\<pi\>*\<varepsilon\><rsub|0>>*<frac|1|r>
  </equation*>

  dove <math|r> è la distanza tra le due cariche

  \;

  <subsection|Flusso elettrico>

<<<<<<< Updated upstream
  \;

=======
>>>>>>> Stashed changes
  <\equation*>
    \<Phi\><rsub|E>=E*A*cos<around*|(|\<theta\>|)>
    <around*|[|<frac|N*m<rsup|2>|C>|]>
  </equation*>

  <subsection|Flusso elettrico (legge di Gauss)>

  Data una superficie chiusa,

  <\equation*>
    \<Phi\><rsub|S><around*|(|<wide|E|\<vect\>>|)>=<big|oint><wide|E|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=<frac|<big|sum>q<rsub|in>|\<varepsilon\><rsub|0>>
  </equation*>

<<<<<<< Updated upstream
  \;

  dove <math|<big|sum>q<rsub|in>> è la carica totale contenuta all'interno
  della superficie.

  In pratica, il flusso attraverso una superficie è uguale alla somma delle
  cariche interne diviso <math|\<varepsilon\><rsub|0>>. Le cariche esterne
  non danno un contributo al flusso in quanto le linee di forza entrano ed
  escono, quindi la somma dei contributi è nulla.

  <subsubsection|>

  \;

  <\enumerate>
    \;
  </enumerate>

=======
>>>>>>> Stashed changes
  <subsection|Relazione con il campo magnetico>

  Un campo magnetico variabile genera un campo elettrico

  <\equation*>
    <big|oint><rsub|L><around*|(|<wide|E|\<vect\>>|)>=-<frac|d|d*t>*\<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>
  </equation*>

<<<<<<< Updated upstream
  <subsection|>

  \;

=======
>>>>>>> Stashed changes
  <subsection|Differenza di potenziale>

  <\equation*>
    \<Delta\>V<rsub|A*B>=V<rsub|A>-V<rsub|B>\<equiv\><frac|\<Delta\>U|q<rsub|2>>=<big|int><rsub|A><rsup|B><wide|E|\<vect\>>\<cdot\>d<wide|l|\<vect\>>
    = <frac|q<rsub|1>|4*\<pi\>*\<varepsilon\><rsub|0>><around*|(|<frac|1|r<rsub|A>>-<frac|1|r<rsub|B>>|)>
  </equation*>

  \;

  Ponendo, per convenzione, potenziale nullo all'infinito, abbiamo che

  <\equation*>
    V=<frac|q<rsub|1>|4\<pi\>*\<varepsilon\><rsub|0>>*<frac|1|r><around*|[|v=<frac|J|C>|]>
  </equation*>

  <subsection|Variazione di energia potenziale>

  Quando una carica di prova positiva <math|q<rsub|1>> si sposta dal punto
  <math|<around*|(|A|)>> al punto <math|<around*|(|B|)>> in un campo
  elettrico <math|<wide|E|\<vect\>>>, la variazione di energia potenziale del
  sistema carica-campo è

  <\equation*>
    \<Delta\>U=-q<rsub|1>*<big|int><rsub|A><rsup|B><wide|E|\<vect\>>*\<cdot\>d<wide|s|\<vect\>>
  </equation*>

  <subsection|Condensatore>

  <\equation*>
    C=<frac|Q|\<Delta\>V> <around*|[|<frac|C|v>=F|]>
  </equation*>

  dove <math|Q> è la carica (per convenzione quella positiva) depositata sul
  condensatore.

  <subsubsection|Capacità di condensatori salienti>

  <\itemize>
    <item>Condensatore a faccie piane parallele di superficie <math|S> e
    distanza <math|d>

    <\equation*>
      C=\<varepsilon\><rsub|r>*\<varepsilon\><rsub|0>*<frac|S|d>
    </equation*>

    <item>Condensatore cilindrico di lunghezza <math|h>, raggio esterno
    <math|R<rsub|1>> e raggio interno <math|R<rsub|2>>

    <\equation*>
      C=2*\<pi\>*\<varepsilon\><rsub|r>*\<varepsilon\><rsub|0>*<frac|h|ln<around*|(|<frac|R<rsub|1>|R<rsub|2>>|)>>
    </equation*>

    <item>Condensatore sferico

    <\equation*>
      C=4*\<pi\>*\<varepsilon\><rsub|r>*\<varepsilon\><rsub|0>*<frac|R<rsub|1>*R<rsub|2>|R<rsub|1>-R<rsub|2>>
    </equation*>
  </itemize>

  <subsubsection|Relazione tra carica \ e corrente>

  <\equation*>
    I=<frac|d*Q|d*t>
  </equation*>

  <subsubsection|Caratteristica tensione-corrente>

  <\equation*>
    I=C*<frac|d*V|d*t>
  </equation*>

  <subsubsection|Energia in un condensatore>

  <\equation*>
    W=<frac|1|2>*C*V<rsup|2>=U
  </equation*>

  <subsection|Energia potenziale di un elettrone>

  (da verificare)

  La differenza di energia potenziale dell'elettronce tra quando è in
  <math|A> e quando si trova in <math|A> è data da:

  <\equation*>
    \<Delta\>U=q<rsub|e>*V<around*|(|A|)>-q<rsub|e>*V<around*|(|B|)>
  </equation*>

  <section|Campo magnetico>

  <subsection|Flusso magnetico attraverso una superficie>

  Il flusso magnetico <math|\<Phi\><rsub|B>> attraverso una superficie è
  definito dall'integrale di superficie

  <\equation*>
    \<Phi\><rsub|B>=<big|int><wide|B|\<vect\>>\<cdot\><wide|d*A|\<vect\>>
  </equation*>

  <subsection|Teorema di Ampère>

  È il duale del teorema di Gauss per il campo magnetico

  La circuitazione del campo magnetico lungo una linea <math|\<gamma\>> è
  uguale a <math|\<mu\><rsub|0>> moltiplicata per la somma delle correnti
  <math|I<rsub|i>> concatenate con la linea stessa

  <\equation*>
    <big|oint><rsub|\<gamma\>>B\<cdot\>d*l=\<mu\><rsub|0>*<big|sum><rsub|i>I<rsub|i>
  </equation*>

  <subsection|Legge di Biot-Savart>

  Il campo magnetico <math|<wide|d*B|\<vect\>>> prodotto, in un punto
  <math|P>, da un elemento <math|<wide|d*s|\<vect\>>> percorso da una
  corrente continua <math|I> è

  <\equation*>
    <wide|d*B|\<vect\>>=<frac|\<mu\><rsub|0>|4*\<pi\>><frac|I*<wide|d*s|\<vect\>>\<times\><wide|r|^>|r<rsup|2>>
  </equation*>

  <subsection|Fili paralleli>

  Il modulo della forza magnetica per unità di lunghezza che si esercita tra
  due fili paralleli distanti <math|a> fra loro e percorsi dalle correnti
  <math|I<rsub|1>> e <math|I<rsub|2>> è\ 

  <\equation*>
    <frac|F<rsub|b>|\<ell\>>=<frac|\<mu\><rsub|0>*I<rsub|1>*I<rsub|2>|2*\<pi\>*a>
  </equation*>

  <subsection|Alcuni campi magnetici>

  <\equation*>
    B=\<mu\><rsub|0>\<cdot\><frac|I|2*\<pi\>*r>
  </equation*>

  Si ricava dal teorema di Ampère integrando <math|d*l> lungo la
  circonferenza di raggio <math|r> e considerando la corrente <math|I> come
  l'unica corrente concatenata alla linea <math|\<gamma\>>.

  <subsubsection|Toroide>

  <\equation*>
    B=<frac|\<mu\><rsub|0>*N*I|2*\<pi\>*r>
  </equation*>

  <subsubsection|Solenoide>

  <\equation*>
    B=\<mu\><rsub|0>*<frac|N|\<ell\>>I=\<mu\><rsub|0>*n*I<space|1em><around*|[|T|]>
  </equation*>

  <subsection|Alcuni flussi magnetici salienti>

  <subsubsection|Solenoide>

  <\equation*>
    \<Phi\>=B\<cdot\>S\<cdot\>N
  </equation*>

  dove <math|S> è la sezione del solenoide

  \ <subsection|Legge di Gauss per il campo magnetico>

  Il flusso magnetico totale che attraversa una superficie chiusa è sempre
  nullo.

  <\equation*>
    \<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>=0
  </equation*>

  Ovvero non è possibile isolare un monopolo magnetico. Un ulteriore
  conseguenza è che il campo magnetico <math|<wide|B|\<vect\>>> è
  solenoidale, ovvero è composto da linee chiuse.

<<<<<<< Updated upstream
  <subsection|Particella in movimento in un campo magnetico uniforme>

  (da verificare)

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

  <with|font-series|bold|Esempio> Il raggio di curvatura nella prima regione
  si calcola da

  <\equation*>
    <around*|\||F|\|>=q*V*B<separating-space|1em>F=m*a=m*V<rsup|2>/R
    <space|1em>\<Longrightarrow\><space|1em>q*V*B=m*V<rsup|2>/R
  </equation*>

  <\equation*>
    R=<frac|q*B|m*V> <around*|[|m|]>
  </equation*>

=======
>>>>>>> Stashed changes
  \;

  <subsection|Energia potenziale magnetica>

  L'energia potenziale del sistema formato da un momento di dipolo magnetico
  in un campo magnetico è

  [da verificare]

  <\equation*>
    U=-<wide|\<mu\>|\<vect\>>\<cdot\><wide|B|\<vect\>>
  </equation*>

  <subsubsection|Energia magnetica in un solenoide>

  L'energia magnetica <math|U> immagazzinata in un solenoide in cui scorre
  una corrente elettrica <math|i> vale

  <\equation*>
    U=<frac|1|2>*L*i<rsup|2> <around*|[|J|]>
  </equation*>

  <subsection|Legge di Faraday dell'induzione>

  Stabilisce che la f.e.m indotta lungo una linea chiusa è direttamente
  proporzionale alla derivata temporale del flusso magnetico che attraversa
  la linea chiusa, cioè

  <\equation*>
    F.E.M=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  dove <math|\<Phi\><rsub|B>=<big|oint><wide|B|\<vect\>>\<cdot\><wide|d*A|\<vect\>>>

  <subsubsection|Forma generale>

  <\equation*>
    <big|oint><wide|E|\<vect\>>\<cdot\><wide|d*s|\<vect\>>=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  \;

  <subsubsection|Legge di Faraday per una bobina>

  <\equation*>
    fem=-N*<frac|d\<Phi\><rsub|B>|d*t>
  </equation*>

  <subsubsection|Legge di Faraday per una sbarretta>

  <\equation*>
    fem=-B*\<ell\>*v
  </equation*>

  <subsection|Legge di Lenz>

  <\equation*>
    fem=-B*\<ell\>*v
  </equation*>

  <subsection|Forza di Lorentz>

  <\equation*>
    <wide|F|\<vect\>>=q*<wide|E|\<vect\>>+q*<around*|(|<wide|v|\<vect\>>\<times\><wide|B|\<vect\>>|)>
  </equation*>

  <\equation*>
    <wide|F<rsub|B>|\<vect\>>=I*<around*|(|<wide|d|\<vect\>>\<times\><wide|B|\<vect\>>|)>
  </equation*>

  <\equation*>
    <around*|\||F|\|>=q*V*B
  </equation*>

  <subsection|Corrente di spostamento>

  In una regione dello spazio dove si ha una variazione del campo elettrico
  nel tempo, c'è una corrente di spostamento che è definita come

  <\equation*>
    I<rsub|d>=\<varepsilon\><rsub|0>*<frac|d*\<Phi\><rsub|E>|d*t>
  </equation*>

  dove <math|\<Phi\><rsub|E>=<big|int><wide|E|\<vect\>>*\<cdot\><wide|d*A|\<vect\>>>
  è il flusso del campo elettrico

<<<<<<< Updated upstream
  <subsection|Vettore di Poynting>

  Il flusso di energia della radiazione elettromagnetica per unità di area e
  per unità di tempo è descritto dal <with|font-series|bold|vettore di
  Poynting <math|<wide|S|\<vect\>>>>

  <\equation*>
    <wide|S|\<vect\>>\<equiv\><frac|1|\<mu\>*<rsub|0>>*<around*|(|<wide|E|\<vect\>>\<times\><wide|B|\<vect\>>|)>
  </equation*>

  <subsection|Forza agente su un conduttore rettilineo>

  Se un conduttore rettilineo di lunghezza <math|L> è percorso da una
  corrente <math|I>, la forza che agisce sul conduttore immerso in un campo
  magnetico uniforme <math|<wide|B|\<vect\>>> è

  <\equation*>
    <wide|F<rsub|B>|\<vect\>>=I*<wide|L|\<vect\>>\<times\><wide|B|\<vect\>>
  </equation*>

  <math|<wide|L|\<vect\>>> è orientato nel verso della corrente <math|I>

  <subsection|Forza agente su un filo di forma arbitraria>

  Se un filo di forma arbitraria, percorso da una corrente <math|I>, è
  immerso in un campo magnetico, la forza che agisce su un elemento
  infinitesimo <math|<wide|d*s|\<vect\>>> è

  <\equation*>
    d<wide|F<rsub|B>|\<vect\>>=I*<wide|d*s|\<vect\>>\<times\><wide|B|\<vect\>>
  </equation*>

  Per determinare la forza totale agente sul filo si deve integrare
  l'equazione precedente, ricordando che sia <math|<wide|B|\<vect\>>> che
  <math|<wide|d*s|\<vect\>>> possono variare da punto a punto

  <subsection|Momento di dipolo magnetico>

  \;

  <\equation*>
    <wide|\<mu\>|\<vect\>>\<equiv\>I<wide|A|\<vect\>><space|1em>
    <around*|[|A\<cdot\>m<rsup|2>=J/T=Joule/Tesla|]>
  </equation*>

  La direzione è data dalla direzione positiva di attraversamento di
  <math|S>, che viene individuata tramite la regola della mano destra
  (ponendo il pollice nella direzione della corrente <math|I> che scorre
  lungo il ``contorno'' di <math|S>)

  <subsection|Momento meccanico>

  Il momento meccanico <math|<wide|\<tau\>|\<vect\>>> delle forze magnetiche
  esercitato su una spira percorsa da corrente immersa in un campo magnetico
  uniforme <math|<wide|B|\<vect\>>> è

  <\equation*>
    <wide|\<tau\>|\<vect\>>=<wide|\<mu\>|\<vect\>>\<times\><wide|B|\<vect\>>
  </equation*>
=======
  \;
>>>>>>> Stashed changes

  <subsection|Forza magnetica su di una particella>

  <\equation*>
    <wide|F<rsub|B>|\<vect\>>=q*<wide|v|\<vect\>>*\<times\><wide|B|\<vect\>>
  </equation*>

<<<<<<< Updated upstream
  \;

=======
>>>>>>> Stashed changes
  <\equation*>
    <around*|\||F<rsub|B>|\|>=<around*|\||q|\|>*v*B*sin<around*|(|\<theta\>|)>
  </equation*>

  <section|Circuiti in corrente continua>

  <subsection|Potenza dissipata da una resistenza>

  <\equation*>
    P=<frac|V<rsup|2><around*|(|t|)>|R>
  </equation*>

  <\equation*>
    E=<big|int><rsub|0><rsup|t>R*I<around*|(|t|)><rsup|2>*d*t \<Rightarrow\>
    E = <big|int><rsub|0><rsup|t>P<around*|(|t|)>
  </equation*>

  <subsection|Induttanze salienti>

  <subsubsection|Bobina>

  <\equation*>
    L=<frac|N*\<Phi\><rsub|B>|I><space|1em><around*|[|H=<frac|V\<cdot\>s|A>|]>
  </equation*>

  <subsubsection|Solendoie (in aria)>

  <\equation*>
    L=\<mu\><rsub|0>*<frac|N<rsup|2>|\<ell\>>*A
  </equation*>

  <subsection|Mutua induttanza>

  La mutua induttanza di un sistema di due bobine è

  <\equation*>
    M<rsub|1 2>=<frac|N<rsub|2>*\<Phi\><rsub|1 2>|I<rsub|1>>=M<rsub|2
    1>=<frac|N<rsub|1>*\<Phi\><rsub|2 1>|I<rsub|2>>=M
  </equation*>

  La mutua induttanza permette di legare la f.e.m. indotta in una bobina alla
  derivata delal corrente che scorre nella bobina vicina, facendo uso delle
  espressioni

  <\equation*>
    E<rsub|2>=-M<rsub|1 2>*<frac|d*I<rsub|1>|d*t><space|1em>E<rsub|1>=-M<rsub|2
    1>*<frac|d*I<rsub|2>|d*t>
  </equation*>

  <subsection|Densità di energia>

  La densità di energia in un punto in cui il campo magnetico è <math|B> è

  <\equation*>
    u<rsub|B>=<frac|B<rsup|2>|2*\<mu\><rsub|0>>
  </equation*>

  <subsection|Circuito RC>

  <subsubsection|Tensione sul condensatore>

  <\equation*>
    v<around*|(|t|)>=v<rsub|0>*<around*|(|1-e<rsup|-<frac|t|\<tau\>>>|)>
  </equation*>

  <subsection|Circuito RL>

  <subsubsection|Corrente nel circuito>

  <\equation*>
    I=<frac|E|R><around*|(|1-e<rsup|-t/\<tau\>>|)> =
    <frac|E|R>*e<rsup|-t/\<tau\>>
  </equation*>

  \;

  <subsection|Circuito LC>

  <subsubsection|Frequenza di oscillazione>

  <\equation*>
    \<omega\><rsub|0>=<frac|1|<sqrt|L*C>>
  </equation*>

  <subsection|Circuito RLC>

  <subsubsection|Carica sul condensatore>

  <\equation*>
    Q=Q<rsub|max>\<cdot\>*e<rsup|-R\<cdot\>t/2L>\<cdot\>cos<around*|(|\<omega\><rsub|d>*t|)>
  </equation*>

  dove

  <\equation*>
    \<omega\><rsub|d>=<around*|[|<frac|1|L*C>-<around*|(|<frac|R|2*L>|)><rsup|2>|]><rsup|<frac*|1|2>>
  </equation*>

  <subsubsection|Impedenza>

  <\equation*>
    Z\<equiv\><sqrt|R<rsup|2>+<around*|(|X<rsub|L>-X<rsub|C>|)><rsup|2>>
  </equation*>

  <subsubsection|Angolo di fase tra corrente e tensione>

  <\equation*>
    \<Phi\>=tan<rsup|-1><around*|(|<frac|X<rsub|L>-X<rsub|C>|R>|)>
  </equation*>

  <section|Circuiti in corrente alternata>

  <subsection|Frequenza di risonanza>

  <\equation*>
    \<omega\><rsub|0>=<frac|1|<sqrt|L*C>>
  </equation*>

  <subsubsection|Reattanza induttiva>

  <\equation*>
    X<rsub|L>=\<omega\>*L<space|1em><around*|[|\<Omega\>|]>
  </equation*>

  <subsubsection|Reattanza capacitiva>

  <\equation*>
    X<rsub|C>=<frac|1|\<omega\>*C><space|1em><around*|[|\<Omega\>|]>
  </equation*>

  <subsection|Potenza media>

  La potenza media fornita da un generatore ad un circuito RLC è

  <\equation*>
    P<rsub|media>=I<rsub|eff>*\<Delta\>V<rsub|eff>*cos<around*|(|\<Phi\>|)> =
    I<rsup|2><rsub|eff>R
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

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-bot|2cm>
    <associate|page-even|1cm>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|1cm>
    <associate|page-orientation|portrait>
    <associate|page-right|1cm>
    <associate|page-screen-margin|false>
    <associate|page-top|1cm>
    <associate|page-type|a4>
    <associate|page-width|auto>
<<<<<<< Updated upstream
    <associate|par-columns|3>
=======
    <associate|par-columns|2>
>>>>>>> Stashed changes
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
<<<<<<< Updated upstream
    <associate|auto-10|<tuple|2.1|1>>
    <associate|auto-100|<tuple|4.2.2|5>>
    <associate|auto-101|<tuple|4.3|5>>
    <associate|auto-102|<tuple|4.4|5>>
    <associate|auto-103|<tuple|4.5|5>>
    <associate|auto-104|<tuple|3|5>>
    <associate|auto-105|<tuple|4|5>>
    <associate|auto-106|<tuple|1|5>>
    <associate|auto-107|<tuple|2|5>>
    <associate|auto-108|<tuple|5|6>>
    <associate|auto-109|<tuple|1|6>>
    <associate|auto-11|<tuple|2.2|1>>
    <associate|auto-110|<tuple|2|6>>
    <associate|auto-111|<tuple|3|6>>
    <associate|auto-112|<tuple|4|6>>
    <associate|auto-113|<tuple|5|6>>
    <associate|auto-114|<tuple|6|6>>
    <associate|auto-115|<tuple|7|6>>
    <associate|auto-116|<tuple|8|6>>
    <associate|auto-117|<tuple|9|6>>
    <associate|auto-118|<tuple|10|6>>
    <associate|auto-119|<tuple|11|6>>
    <associate|auto-12|<tuple|3|1>>
=======
    <associate|auto-10|<tuple|1|1>>
    <associate|auto-100|<tuple|6|12>>
    <associate|auto-101|<tuple|7|12>>
    <associate|auto-102|<tuple|7|12>>
    <associate|auto-103|<tuple|7|12>>
    <associate|auto-104|<tuple|7|12>>
    <associate|auto-105|<tuple|8|12>>
    <associate|auto-106|<tuple|9|12>>
    <associate|auto-107|<tuple|10|12>>
    <associate|auto-108|<tuple|11|13>>
    <associate|auto-109|<tuple|11|13>>
    <associate|auto-11|<tuple|0.1|1>>
    <associate|auto-110|<tuple|11|13>>
    <associate|auto-111|<tuple|11|13>>
    <associate|auto-112|<tuple|11|13>>
    <associate|auto-113|<tuple|9|13>>
    <associate|auto-114|<tuple|10|13>>
    <associate|auto-115|<tuple|11|14>>
    <associate|auto-116|<tuple|11|14>>
    <associate|auto-117|<tuple|11|14>>
    <associate|auto-118|<tuple|11|14>>
    <associate|auto-119|<tuple|10|14>>
    <associate|auto-12|<tuple|0.1.1|1>>
>>>>>>> Stashed changes
    <associate|auto-120|<tuple|11|15>>
    <associate|auto-121|<tuple|11|15>>
    <associate|auto-122|<tuple|11|15>>
    <associate|auto-123|<tuple|11|16|altro_formulario.tm>>
    <associate|auto-124|<tuple|11|16|altro_formulario.tm>>
    <associate|auto-125|<tuple|11|16|altro_formulario.tm>>
    <associate|auto-126|<tuple|6|16|altro_formulario.tm>>
    <associate|auto-127|<tuple|1|16|altro_formulario.tm>>
    <associate|auto-128|<tuple|1|17|altro_formulario.tm>>
    <associate|auto-129|<tuple|9|17|altro_formulario.tm>>
<<<<<<< Updated upstream
    <associate|auto-13|<tuple|3.1|1>>
=======
    <associate|auto-13|<tuple|0.2|1>>
>>>>>>> Stashed changes
    <associate|auto-130|<tuple|10|17|altro_formulario.tm>>
    <associate|auto-131|<tuple|11|17|altro_formulario.tm>>
    <associate|auto-132|<tuple|6|17|altro_formulario.tm>>
    <associate|auto-133|<tuple|1|18|altro_formulario.tm>>
    <associate|auto-134|<tuple|6|18|altro_formulario.tm>>
    <associate|auto-135|<tuple|1|18|altro_formulario.tm>>
<<<<<<< Updated upstream
    <associate|auto-14|<tuple|3.1.1|1>>
    <associate|auto-15|<tuple|3.1.2|1>>
    <associate|auto-16|<tuple|4|1>>
    <associate|auto-17|<tuple|4.1|1>>
    <associate|auto-18|<tuple|4.2|1>>
    <associate|auto-19|<tuple|5|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|5.1|1>>
    <associate|auto-21|<tuple|6|1>>
    <associate|auto-22|<tuple|7|1>>
    <associate|auto-23|<tuple|8|1>>
    <associate|auto-24|<tuple|9|1>>
    <associate|auto-25|<tuple|2|1>>
    <associate|auto-26|<tuple|1|1>>
    <associate|auto-27|<tuple|1.1|1>>
    <associate|auto-28|<tuple|1.1.1|2>>
    <associate|auto-29|<tuple|1.2|2>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-30|<tuple|1.3|2>>
    <associate|auto-31|<tuple|1.4|2>>
    <associate|auto-32|<tuple|1.5|2>>
    <associate|auto-33|<tuple|1.6|2>>
    <associate|auto-34|<tuple|1.7|2>>
    <associate|auto-35|<tuple|1.8|2>>
    <associate|auto-36|<tuple|1.8.1|2>>
    <associate|auto-37|<tuple|1.9|2>>
    <associate|auto-38|<tuple|1.10|2>>
    <associate|auto-39|<tuple|1.11|2>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-40|<tuple|1.12|2>>
    <associate|auto-41|<tuple|1.13|2>>
    <associate|auto-42|<tuple|1.13.1|2>>
    <associate|auto-43|<tuple|1.13.2|2>>
    <associate|auto-44|<tuple|1.13.3|3>>
    <associate|auto-45|<tuple|1.13.4|3>>
    <associate|auto-46|<tuple|1.14|3>>
    <associate|auto-47|<tuple|2|3>>
    <associate|auto-48|<tuple|2.1|3>>
    <associate|auto-49|<tuple|2.2|3>>
    <associate|auto-5|<tuple|1.3|1>>
    <associate|auto-50|<tuple|2.3|3>>
    <associate|auto-51|<tuple|2.4|3>>
    <associate|auto-52|<tuple|2.5|3>>
    <associate|auto-53|<tuple|2.6|3>>
    <associate|auto-54|<tuple|2.6.1|3>>
    <associate|auto-55|<tuple|2.6.2|3>>
    <associate|auto-56|<tuple|2.7|3>>
    <associate|auto-57|<tuple|2.7.1|3>>
    <associate|auto-58|<tuple|2.8|3>>
    <associate|auto-59|<tuple|2.9|3>>
    <associate|auto-6|<tuple|1.4|1>>
    <associate|auto-60|<tuple|2.10|3>>
    <associate|auto-61|<tuple|2.11|3>>
    <associate|auto-62|<tuple|2.11.1|4>>
    <associate|auto-63|<tuple|2.12|4>>
    <associate|auto-64|<tuple|2.12.1|4>>
    <associate|auto-65|<tuple|2.12.2|4>>
    <associate|auto-66|<tuple|2.12.3|4>>
    <associate|auto-67|<tuple|2.13|4>>
    <associate|auto-68|<tuple|2.14|4>>
    <associate|auto-69|<tuple|2.15|4>>
    <associate|auto-7|<tuple|1.5|1>>
    <associate|auto-70|<tuple|2.16|4>>
    <associate|auto-71|<tuple|2.17|4>>
    <associate|auto-72|<tuple|2.18|4>>
    <associate|auto-73|<tuple|2.19|4>>
    <associate|auto-74|<tuple|2.20|4>>
    <associate|auto-75|<tuple|2.21|4>>
    <associate|auto-76|<tuple|2.22|4>>
    <associate|auto-77|<tuple|3|4>>
    <associate|auto-78|<tuple|3.1|4>>
    <associate|auto-79|<tuple|3.2|5>>
    <associate|auto-8|<tuple|1.6|1>>
    <associate|auto-80|<tuple|3.3|5>>
    <associate|auto-81|<tuple|3.3.1|5>>
    <associate|auto-82|<tuple|3.3.2|5>>
    <associate|auto-83|<tuple|3.4|5>>
    <associate|auto-84|<tuple|3.5|5>>
    <associate|auto-85|<tuple|3.6|5>>
    <associate|auto-86|<tuple|3.6.1|5>>
    <associate|auto-87|<tuple|3.7|5>>
    <associate|auto-88|<tuple|3.7.1|5>>
    <associate|auto-89|<tuple|3.8|5>>
    <associate|auto-9|<tuple|2|1>>
    <associate|auto-90|<tuple|3.8.1|5>>
    <associate|auto-91|<tuple|3.9|5>>
    <associate|auto-92|<tuple|3.9.1|5>>
    <associate|auto-93|<tuple|3.9.2|5>>
    <associate|auto-94|<tuple|3.9.3|5>>
    <associate|auto-95|<tuple|3.9.4|5>>
    <associate|auto-96|<tuple|4|5>>
    <associate|auto-97|<tuple|4.1|5>>
    <associate|auto-98|<tuple|4.2|5>>
    <associate|auto-99|<tuple|4.2.1|5>>
=======
    <associate|auto-14|<tuple|0.3|1>>
    <associate|auto-15|<tuple|0.4|1>>
    <associate|auto-16|<tuple|0.5|1>>
    <associate|auto-17|<tuple|0.6|1>>
    <associate|auto-18|<tuple|0.7|2>>
    <associate|auto-19|<tuple|0.8|2>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|0.9|2>>
    <associate|auto-21|<tuple|0.10|2>>
    <associate|auto-22|<tuple|0.11|2>>
    <associate|auto-23|<tuple|0.11.1|2>>
    <associate|auto-24|<tuple|0.11.2|2>>
    <associate|auto-25|<tuple|0.11.3|2>>
    <associate|auto-26|<tuple|0.11.4|2>>
    <associate|auto-27|<tuple|0.12|2>>
    <associate|auto-28|<tuple|1|2>>
    <associate|auto-29|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-30|<tuple|1.2|2>>
    <associate|auto-31|<tuple|1.3|2>>
    <associate|auto-32|<tuple|1.4|2>>
    <associate|auto-33|<tuple|1.5|3>>
    <associate|auto-34|<tuple|1.5.1|3>>
    <associate|auto-35|<tuple|1.5.2|3>>
    <associate|auto-36|<tuple|1.6|3>>
    <associate|auto-37|<tuple|1.6.1|3>>
    <associate|auto-38|<tuple|1.7|3>>
    <associate|auto-39|<tuple|1.8|3>>
    <associate|auto-4|<tuple|1.2.1|1>>
    <associate|auto-40|<tuple|1.8.1|3>>
    <associate|auto-41|<tuple|1.9|3>>
    <associate|auto-42|<tuple|1.9.1|3>>
    <associate|auto-43|<tuple|1.9.2|3>>
    <associate|auto-44|<tuple|1.9.3|3>>
    <associate|auto-45|<tuple|1.10|3>>
    <associate|auto-46|<tuple|1.11|3>>
    <associate|auto-47|<tuple|1.12|3>>
    <associate|auto-48|<tuple|1.13|3>>
    <associate|auto-49|<tuple|2|3>>
    <associate|auto-5|<tuple|1.2.2|1>>
    <associate|auto-50|<tuple|2.1|3>>
    <associate|auto-51|<tuple|2.2|4>>
    <associate|auto-52|<tuple|2.2.1|4>>
    <associate|auto-53|<tuple|2.2.2|4>>
    <associate|auto-54|<tuple|2.3|4>>
    <associate|auto-55|<tuple|2.4|4>>
    <associate|auto-56|<tuple|2.5|4>>
    <associate|auto-57|<tuple|2.5.1|4>>
    <associate|auto-58|<tuple|2.6|4>>
    <associate|auto-59|<tuple|2.6.1|4>>
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-60|<tuple|2.7|4>>
    <associate|auto-61|<tuple|2.7.1|4>>
    <associate|auto-62|<tuple|2.8|4>>
    <associate|auto-63|<tuple|2.8.1|4>>
    <associate|auto-64|<tuple|2.8.2|4>>
    <associate|auto-65|<tuple|2.8.3|4>>
    <associate|auto-66|<tuple|3|4>>
    <associate|auto-67|<tuple|3.1|4>>
    <associate|auto-68|<tuple|3.1.1|4>>
    <associate|auto-69|<tuple|3.1.2|4>>
    <associate|auto-7|<tuple|2.1|1>>
    <associate|auto-70|<tuple|3.2|4>>
    <associate|auto-71|<tuple|2|4>>
    <associate|auto-72|<tuple|2|9>>
    <associate|auto-73|<tuple|2|9>>
    <associate|auto-74|<tuple|2|9>>
    <associate|auto-75|<tuple|3|9>>
    <associate|auto-76|<tuple|1|9>>
    <associate|auto-77|<tuple|2|9>>
    <associate|auto-78|<tuple|3|9>>
    <associate|auto-79|<tuple|4|9>>
    <associate|auto-8|<tuple|3|1>>
    <associate|auto-80|<tuple|5|10>>
    <associate|auto-81|<tuple|6|10>>
    <associate|auto-82|<tuple|7|10>>
    <associate|auto-83|<tuple|7|10>>
    <associate|auto-84|<tuple|7|10>>
    <associate|auto-85|<tuple|6|10>>
    <associate|auto-86|<tuple|7|10>>
    <associate|auto-87|<tuple|6|10>>
    <associate|auto-88|<tuple|7|10>>
    <associate|auto-89|<tuple|7|10>>
    <associate|auto-9|<tuple|4|1>>
    <associate|auto-90|<tuple|7|10>>
    <associate|auto-91|<tuple|7|10>>
    <associate|auto-92|<tuple|7|10>>
    <associate|auto-93|<tuple|7|11>>
    <associate|auto-94|<tuple|7|11>>
    <associate|auto-95|<tuple|7|11>>
    <associate|auto-96|<tuple|7|11>>
    <associate|auto-97|<tuple|7|11>>
    <associate|auto-98|<tuple|7|11>>
    <associate|auto-99|<tuple|5|11>>
>>>>>>> Stashed changes
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
<<<<<<< Updated upstream
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Cinematica>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Energia
      meccanica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Energia cinetica del centro
      di massa <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Energia cinetica di
      rotazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Relazione tra energia
      cinetica e quantità di moto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Lavoro ed energia cinetica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Energia potenziale
      gravitazionale (vicino alla superficie)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Energia potenziale
      gravitazionale (distanza arbitraria)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Moto
      oscillatorio> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Energia cinetica e
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Forza frenante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Pendolo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Periodo di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|3.1.1<space|2spc>Pendolo semplice
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|3.1.2<space|2spc>Pendolo fisico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Forza
      ed energia elastica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Legge di Hooke
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Energia potenziale elastica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Moto
      circolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Forza centripeta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Accelerazione
      angolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Momento
      di una forza> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Momento
      angolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Potenza
      ``angolare''> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24><vspace|0.5fn>
=======
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Moto
      oscillatorio> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Forza frenante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Periodo di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1.2.1<space|2spc>Pendolo semplice
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.2.2<space|2spc>Pendolo fisico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Moto
      circolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Forza centripeta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Momento
      angolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Potenza
      ``angolare''> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
>>>>>>> Stashed changes

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Elettromagnetismo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-25><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Campo
      elettrico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn>
=======
      <no-break><pageref|auto-10><vspace|1fn>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.1<space|2spc>Forza di Coulomb
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-27>>
=======
      <no-break><pageref|auto-11>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|0.1.1<space|2spc>Energia potenziale
      (Coulomb) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-28>>
=======
      <no-break><pageref|auto-12>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.2<space|2spc>Quantità totale di carica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-29>>
=======
      <no-break><pageref|auto-13>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.3<space|2spc>Vettore campo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-30>>
=======
      <no-break><pageref|auto-14>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.4<space|2spc>Lavoro per spostare una
      carica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-31>>
=======
      <no-break><pageref|auto-15>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.5<space|2spc>Energia potenziale elettrica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Momento di dipolo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>
=======
      <no-break><pageref|auto-16>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.6<space|2spc>Flusso elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-34>>
=======
      <no-break><pageref|auto-17>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.7<space|2spc>Flusso elettrico (legge di
      Gauss) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|1.8.1<space|2spc>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>
=======
      <no-break><pageref|auto-18>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.8<space|2spc>Relazione con il campo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>
=======
      <no-break><pageref|auto-19>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.9<space|2spc>Differenza di potenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-39>>
=======
      <no-break><pageref|auto-20>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.10<space|2spc>Variazione di energia
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-40>>
=======
      <no-break><pageref|auto-21>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.11<space|2spc>Condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-41>>
=======
      <no-break><pageref|auto-22>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|0.11.1<space|2spc>Capacità di condensatori
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-42>>
=======
      <no-break><pageref|auto-23>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|0.11.2<space|2spc>Relazione tra carica \ e
      corrente <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-43>>
=======
      <no-break><pageref|auto-24>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|0.11.3<space|2spc>Caratteristica
      tensione-corrente <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-44>>
=======
      <no-break><pageref|auto-25>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|0.11.4<space|2spc>Energia in un
      condensatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-45>>
=======
      <no-break><pageref|auto-26>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|0.12<space|2spc>Energia potenziale di un
      elettrone <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-46>>
=======
      <no-break><pageref|auto-27>>
>>>>>>> Stashed changes

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Campo
      magnetico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-47><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Campo magnetico dato come
      derivata <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Flusso magnetico attraverso
      una superficie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>
=======
      <no-break><pageref|auto-28><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Flusso magnetico attraverso
      una superficie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|1.2<space|2spc>Teorema di Ampère
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-50>>
=======
      <no-break><pageref|auto-30>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|1.3<space|2spc>Legge di Biot-Savart
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-51>>
=======
      <no-break><pageref|auto-31>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|1.4<space|2spc>Fili paralleli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Alcuni campi magnetici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|2.6.1<space|2spc>Toroide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|2tab>|2.6.2<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>
=======
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Alcuni campi magnetici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|1.5.1<space|2spc>Toroide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|2tab>|1.5.2<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|1.6<space|2spc>Alcuni flussi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-56>>
=======
      <no-break><pageref|auto-36>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|1.6.1<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Teorema di Ampère-Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>
=======
      <no-break><pageref|auto-37>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|1.7<space|2spc>Legge di Gauss per il campo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|2.10<space|2spc>Particella in movimento in
      un campo magnetico uniforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|2.11<space|2spc>Energia potenziale
      magnetica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>
=======
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Energia potenziale magnetica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|1.8.1<space|2spc>Energia magnetica in un
      solenoide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-62>>
=======
      <no-break><pageref|auto-40>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|1.9<space|2spc>Legge di Faraday
      dell'induzione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-63>>
=======
      <no-break><pageref|auto-41>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|1.9.1<space|2spc>Forma generale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-64>>
=======
      <no-break><pageref|auto-42>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|1.9.2<space|2spc>Legge di Faraday per una
      bobina <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-65>>
=======
      <no-break><pageref|auto-43>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|1.9.3<space|2spc>Legge di Faraday per una
      sbarretta <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|1tab>|2.13<space|2spc>Legge di Lenz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|1tab>|2.14<space|2spc>Forza di Lorentz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|1tab>|2.15<space|2spc>Equazioni di Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <with|par-left|<quote|1tab>|2.16<space|2spc>Corrente di spostamento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      <with|par-left|<quote|1tab>|2.17<space|2spc>Vettore di Poynting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>>

      <with|par-left|<quote|1tab>|2.18<space|2spc>Forza agente su un
      conduttore rettilineo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      <with|par-left|<quote|1tab>|2.19<space|2spc>Forza agente su un filo di
      forma arbitraria <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>>

      <with|par-left|<quote|1tab>|2.20<space|2spc>Momento di dipolo magnetico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>>

      <with|par-left|<quote|1tab>|2.21<space|2spc>Momento meccanico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <with|par-left|<quote|1tab>|2.22<space|2spc>Forza magnetica su di una
      particella <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>>
=======
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Legge di Lenz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|1.11<space|2spc>Forza di Lorentz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|1.12<space|2spc>Corrente di spostamento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|1.13<space|2spc>Forza magnetica su di una
      particella <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>
>>>>>>> Stashed changes

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Circuiti
      in corrente continua> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-77><vspace|0.5fn>
=======
      <no-break><pageref|auto-49><vspace|0.5fn>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|2.1<space|2spc>Potenza dissipata da una
      resistenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-78>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Valore della resistenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Induttanze salienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>>

      <with|par-left|<quote|2tab>|3.3.1<space|2spc>Bobina
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>>

      <with|par-left|<quote|2tab>|3.3.2<space|2spc>Solendoie (in aria)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Mutua induttanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Densità di energia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>>

      <with|par-left|<quote|1tab>|3.6<space|2spc>Circuito RC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85>>

      <with|par-left|<quote|2tab>|3.6.1<space|2spc>Tensione sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>>

      <with|par-left|<quote|1tab>|3.7<space|2spc>Circuito RL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87>>

      <with|par-left|<quote|2tab>|3.7.1<space|2spc>Corrente nel circuito
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88>>

      <with|par-left|<quote|1tab>|3.8<space|2spc>Circuito LC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89>>

      <with|par-left|<quote|2tab>|3.8.1<space|2spc>Frequenza di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90>>

      <with|par-left|<quote|1tab>|3.9<space|2spc>Circuito RLC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>>

      <with|par-left|<quote|2tab>|3.9.1<space|2spc>Carica sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92>>

      <with|par-left|<quote|2tab>|3.9.2<space|2spc>Corrente efficace
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93>>

      <with|par-left|<quote|2tab>|3.9.3<space|2spc>Impedenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>>

      <with|par-left|<quote|2tab>|3.9.4<space|2spc>Angolo di fase tra
      corrente e tensione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>>
=======
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Induttanze salienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|2tab>|2.2.1<space|2spc>Bobina
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|2tab>|2.2.2<space|2spc>Solendoie (in aria)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Mutua induttanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Densità di energia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Circuito RC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|2tab>|2.5.1<space|2spc>Tensione sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Circuito RL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|2tab>|2.6.1<space|2spc>Corrente nel circuito
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Circuito LC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|2tab>|2.7.1<space|2spc>Frequenza di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Circuito RLC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|2tab>|2.8.1<space|2spc>Carica sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|2tab>|2.8.2<space|2spc>Impedenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|2tab>|2.8.3<space|2spc>Angolo di fase tra
      corrente e tensione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>
>>>>>>> Stashed changes

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Circuiti
      in corrente alternata> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-96><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Frequenza di risonanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Reattanze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-98>>

      <with|par-left|<quote|2tab>|4.2.1<space|2spc>Reattanza induttiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-99>>

      <with|par-left|<quote|2tab>|4.2.2<space|2spc>Reattanza capacitiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-100>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Corrente e tensione efficace
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Potenza media
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-102>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Trasformatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-103>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-104><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|4<space|2spc>Formule
      geometriche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-105><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Sfera>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-106><vspace|0.5fn>
=======
      <no-break><pageref|auto-66><vspace|0.5fn>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|3.1<space|2spc>Frequenza di risonanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-107><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|5<space|2spc>Momenti
      d'inerzia> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-108><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Massa
      puntiforme> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-109><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Asta>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-110><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Circonferenza>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-111><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Disco>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-112><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Cilindro>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-113><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Sfera>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-114><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Cono>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-115><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Toro>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-116><vspace|0.5fn>
=======
      <no-break><pageref|auto-67>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|3.1.1<space|2spc>Reattanza induttiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-117><vspace|0.5fn>
=======
      <no-break><pageref|auto-68>>
>>>>>>> Stashed changes

      <with|par-left|<quote|2tab>|3.1.2<space|2spc>Reattanza capacitiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-118><vspace|0.5fn>
=======
      <no-break><pageref|auto-69>>
>>>>>>> Stashed changes

      <with|par-left|<quote|1tab>|3.2<space|2spc>Potenza media
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
<<<<<<< Updated upstream
      <no-break><pageref|auto-119><vspace|0.5fn>
=======
      <no-break><pageref|auto-70>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71><vspace|1fn>
>>>>>>> Stashed changes
    </associate>
  </collection>
</auxiliary>
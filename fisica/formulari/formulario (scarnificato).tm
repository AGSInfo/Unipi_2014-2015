<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Formulario di fisica>|<doc-author|<author-data|<author-name|Gianluca
  Mondini e di chiunque altro mi aiuti>>>>

  \;

  <chapter|Cinematica>

  <section|Legge oraria>

  <\equation*>
    x<around*|(|t|)>=<big|int><rsub|0><rsup|t>v<around*|(|T|)>*d*T
  </equation*>

  <section|Calcolo del centro di massa>

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

  <section|Moto oscillatorio>

  <\equation*>
    x<around*|(|t|)>=A*cos<around*|(|\<omega\>*t+\<Phi\>|)>
  </equation*>

  <\equation*>
    \<omega\>=<sqrt|<frac|k|m>>
  </equation*>

  <subsection|Energia cinetica e potenziale>

  <\equation*>
    K=<frac|1|2>*m*v<rsup|2>=<frac|1|2>*m*\<omega\><rsup|2>*A<rsup|2>*sin<rsup|2><around*|(|\<omega\>*t+\<Phi\>|)>
  </equation*>

  <\equation*>
    U=<frac|1|2>*k*x<rsup|2>=<frac|1|2>*k*A<rsup|2>*cos<rsup|2><around*|(|\<omega\>*t+\<Phi\>|)>
  </equation*>

  <\equation*>
    E=K+U=<frac|1|2>*k*A<rsup|2>
  </equation*>

  <subsection|Forza frenante>

  <\equation*>
    x=A\<cdot\>e<rsup|-<frac|b|2m>*t>\<cdot\>cos<around*|(|\<omega\>*t+\<Phi\>|)>
  </equation*>

  <\equation*>
    \<omega\>=<sqrt|<frac|k|m>-<around*|(|<frac|b|2*m>|)><rsup|2>>
  </equation*>

  <section|Pendolo>

  <subsection|Periodo di oscillazione>

  <subsubsection|Pendolo semplice>

  <\equation*>
    T=<frac|2*\<pi\>|\<omega\>>=2*\<pi\>*<sqrt|<frac|l|g>>
  </equation*>

  <subsubsection|Pendolo fisico>

  <\equation*>
    T=2*\<pi\>*<sqrt|<frac|I|m*g*d>>
  </equation*>

  <section|Forza ed energia elastica>

  <subsection|Legge di Hooke>

  <\equation*>
    F=-k*x
  </equation*>

  <subsection|Energia potenziale elastica>

  <\equation*>
    U<around*|(|x|)>=<frac|1|2>*k*x<rsup|2>
  </equation*>

  <section|Moto circolare>

  <subsection|Forza centripeta>

  <\equation*>
    F<rsub|c>=m*<frac|v<rsub|t><rsup|2>|r>
  </equation*>

  <\equation*>
    <wide|F<rsub|c>|\<vect\>>=m*w<rsup|2>*r
  </equation*>

  <section|Accelerazione angolare>

  Se un corpo rigido è libero di ruotare intorno ad un asse fisso e su di
  esso agisce un momento risultante <math|\<tau\>>, l'accelerazione angolare
  <math|\<alpha\>> è data dalla relazione

  <\equation*>
    <big|sum>\<tau\>=I*\<alpha\>
  </equation*>

  È l'equivalente del secondo principio della dinamica nel modello di punto
  materiale

  <section|Momento di una forza>

  Il momento <math|<wide|\<tau\>|\<vect\>>> di una forza
  <math|<wide|F|\<vect\>>>, calcolato rispetto ad un asse passante per
  l'origine di un sistema di riferimento inerziale, è definito come

  <\equation*>
    <wide|\<tau\>|\<vect\>>=<wide|r|\<vect\>>\<times\><wide|F|\<vect\>>
  </equation*>

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

  <section|Campo elettrico>

  ``Definizione'': Forza per unità di carica che una carica sonda percepisce
  per la presenza delle cariche sorgenti

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
    <wide|E|\<vect\>>\<equiv\><frac|<wide|F<rsub|e>|\<vect\>>|q<rsub|0>>*<around*|[|<frac|N|C>|]>
  </equation*>

  Da questo ricaviamo che, presa una carica <math|q<rsub|0>> immersa in un
  campo elettrico <math|<wide|E|\<vect\>>>, la forza che spinge la carica è
  uguale a

  <\equation*>
    <wide|F<rsub|e>|\<vect\>>=q<rsub|0>*<wide|E|\<vect\>>
  </equation*>

  <subsection|Lavoro per spostare una carica>

  Il lavoro necessario per spostare una carica dalla posizione
  <math|r<rsub|A>> alla posizione <math|r<rsub|B>> è pari a

  <\equation*>
    W=<big|int><rsub|r<rsub|A>><rsup|r<rsub|B>>F<rsub|t>*d*r
  </equation*>

  dove <math|F<rsub|t>> è la forza tangente che compie lo spostamento.
  Siccome <math|F<rsub|t>> è sempre tangente, abbiamo

  <\equation*>
    W=<big|int><rsub|r<rsub|A>><rsup|r*B>q*E*d*r
  </equation*>

  Sostituendo e semplificando otteniamo

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

  <subsection|Momento di dipolo elettrico>

  \;

  <\equation*>
    <wide|p|\<vect\>>=q*\<cdot\><wide|d|\<vect\>>
  </equation*>

  \;

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
    \<Phi\><rsub|S><around*|(|<wide|E|\<vect\>>|)>=<big|oint><wide|E|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=<frac|<big|sum>q<rsub|in>|\<varepsilon\><rsub|0>>
  </equation*>

  \;

  dove <math|<big|sum>q<rsub|in>> è la carica totale contenuta all'interno
  della superficie.

  In pratica, il flusso attraverso una superficie è uguale alla somma delle
  cariche interne diviso <math|\<varepsilon\><rsub|0>>. Le cariche esterne
  non danno un contributo al flusso in quanto le linee di forza entrano ed
  escono, quindi la somma dei contributi è nulla.

  <subsubsection|Scelta della superficie <math|E>>

  È fondamentale che la superficie chiusa <math|E> soddisfi una o più delle
  seguenti condizioni:

  <\enumerate>
    <item>Da considerazioni di simmetria si può arguire che il valore del
    campo elettrico deve essere costante sulla porzione di superficie

    <item>Il prodotto scalare <math|E*dA> che compare nella formula può
    essere espresso come un semplice prodotto algebrico <math|E*dA> in quanto
    <math|<wide|E|\<vect\>>> e <math|<wide|dA|\<vect\>>> sono paralleli.

    <item>Il prodotto scalare <math|E*dA> che compare nella formula è nullo,
    in quanto <math|<wide|E|\<vect\>>> e <math|<wide|dA|\<vect\>>> sono
    perpendicolari.

    <item>Il campo elettrico è nullo sulla porzione di superficie.
  </enumerate>

  <subsection|Relazione con il campo magnetico>

  Un campo magnetico variabile genera un campo elettrico

  <\equation*>
    <big|oint><rsub|L><around*|(|<wide|E|\<vect\>>|)>=-<frac|d|d*t>*\<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>
  </equation*>

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
    \<Delta\>V<rsub|A*B>=V<rsub|A>-V<rsub|B>\<equiv\><frac|\<Delta\>U|q<rsub|2>>=<big|int><rsub|A><rsup|B><wide|E|\<vect\>>\<cdot\>d<wide|l|\<vect\>>
  </equation*>

  <\equation*>
    \<Delta\>V<rsub|A*B>=<frac|q<rsub|1>|4*\<pi\>*\<varepsilon\><rsub|0>><around*|(|<frac|1|r<rsub|A>>-<frac|1|r<rsub|B>>|)>
  </equation*>

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

  Il campo magnetico è costituito da linee chiuse

  <subsection|Campo magnetico dato come derivata>

  Per conoscere il valore di <math|B<around*|(|t|)>> per <math|t=t<rsub|1>>
  se questo è dato sotto forma di derivata, è necessario integrarlo
  dall'inizio al tempo <math|t<rsub|1>>

  <\equation*>
    B<around*|(|t<rsub|1>|)>=<big|int><rsub|0><rsup|t<rsub|1>><frac|d*B|d*t><space|1em><around*|[|T|]>
  </equation*>

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

  dove <math|N> è il numero totale di spire, <math|n> il numero di spire per
  unità di lunghezza, <math|\<ell\>> è la lunghezza del solenoide

  <subsection|Alcuni flussi magnetici salienti>

  <subsubsection|Solenoide>

  <\equation*>
    \<Phi\>=B\<cdot\>S\<cdot\>N
  </equation*>

  dove <math|S> è la sezione del solenoide

  <subsection|Teorema di Ampère-Maxwell>

  Rispetto al teorema di Ampère tiene conto anche delle
  <with|font-series|bold|variazioni di campo elettrico>

  <\equation*>
    <big|oint><rsub|\<gamma\>>B*=\<mu\><rsub|0><around*|(|I<rsub|conc>+\<varepsilon\><rsub|0>*<tfrac|\<partial\>\<Phi\><rsub|S><around*|(|<wide|E|\<vect\>>|)>|\<partial\>*t>|)>
  </equation*>

  La superficie <math|S> ha come bordo <math|\<gamma\>>

  Il termine <math|\<varepsilon\><rsub|0>*<tfrac|\<partial\>\<Phi\><rsub|S><around*|(|<wide|E|\<vect\>>|)>|\<partial\>*t>>
  prende il nome di <with|font-series|bold|corrente di spostamento>

  \ <subsection|Legge di Gauss per il campo magnetico>

  Il flusso magnetico totale che attraversa una superficie chiusa è sempre
  nullo.

  <\equation*>
    \<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>=0
  </equation*>

  Ovvero non è possibile isolare un monopolo magnetico. Un ulteriore
  conseguenza è che il campo magnetico <math|<wide|B|\<vect\>>> è
  solenoidale, ovvero è composto da linee chiuse.

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

  <subsubsection|Tipologie di sostanze magnetiche>

  <\description>
    <item*|Dimagnetiche>Il momento magnetico è debole ed opposto rispetto al
    campo magnetico applicato.

    <item*|Paramagnetiche>Il momento magnetico è debole e nello stesso verso
    del campo applicato

    <item*|Ferromagnetiche>Le interazioni tra atomi provocano l'allineamento
    dei momenti magnetici e generano una forte magnetizzazione che permane
    anche rimuovendo il campo magnetico esterno.
  </description>

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
    E=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  dove <math|\<Phi\><rsub|B>=<big|oint><wide|B|\<vect\>>\<cdot\><wide|d*A|\<vect\>>>

  <subsubsection|Forma generale>

  <\equation*>
    <big|oint><wide|E|\<vect\>>\<cdot\><wide|d*s|\<vect\>>=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  dove <math|<wide|E|\<vect\>>> è il campo elettrico non conservativo che è
  prodotto dalla variazione di flusso magnetico.

  <subsubsection|Legge di Faraday per una bobina>

  <\equation*>
    E=-N*<frac|d\<Phi\><rsub|B>|d*t>
  </equation*>

  <subsubsection|Legge di Faraday per una sbarretta>

  \;

  <\equation*>
    E=-B*\<ell\>*v
  </equation*>

  <subsection|Legge di Lenz>

  \;

  <\equation*>
    E=-B*\<ell\>*v
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

  <subsection|Equazioni di Maxwell>

  <\equation*>
    <big|oint><wide|E|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=<frac|q|\<varepsilon\><rsub|0>>
  </equation*>

  <\equation*>
    <big|oint><wide|B|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=0
  </equation*>

  <\equation*>
    <big|oint><wide|E|\<vect\>>*\<cdot\>d<wide|s|\<vect\>>=-<frac|d\<Phi\><rsub|B>|d*t>
  </equation*>

  <\equation*>
    <big|oint><wide|B|\<vect\>>\<cdot\>d<wide|s|\<vect\>>=\<mu\><rsub|0>*I+\<varepsilon\><rsub|0>*\<mu\><rsub|0>*<frac|d*\<Phi\><rsub|E>|d*t>
  </equation*>

  <subsection|Corrente di spostamento>

  In una regione dello spazio dove si ha una variazione del campo elettrico
  nel tempo, c'è una corrente di spostamento che è definita come

  <\equation*>
    I<rsub|d>=\<varepsilon\><rsub|0>*<frac|d*\<Phi\><rsub|E>|d*t>
  </equation*>

  dove <math|\<Phi\><rsub|E>=<big|int><wide|E|\<vect\>>*\<cdot\><wide|d*A|\<vect\>>>
  è il flusso del campo elettrico

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

  Il momento magnetico di un magnete è una grandezza che quantifica la forza
  che l'oggetto esercita su una corrente elettrica e la torsione che il campo
  magnetico produce interagendo con esso.

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

  <subsection|Forza magnetica su di una particella>

  La forza magnetica che agisce su una carica <math|q> che si muove con
  velocità <math|<wide|v|\<vect\>>> in un campo <math|<wide|B|\<vect\>>> è

  <\equation*>
    <wide|F<rsub|B>|\<vect\>>=q*<wide|v|\<vect\>>*\<times\><wide|B|\<vect\>>
  </equation*>

  La forza magnetica è perpendicolare sia alla velocità della particella che
  al campo magnetico. Il modulo della forza magnetica è

  <\equation*>
    <around*|\||F<rsub|B>|\|>=<around*|\||q|\|>*v*B*sin<around*|(|\<theta\>|)>
  </equation*>

  dove <math|\<theta\>> è l'angolo più piccolo tra <math|<wide|v|\<vect\>>> e
  <math|<wide|B|\<vect\>>>

  <section|Circuiti in corrente continua>

  <subsection|Potenza dissipata da una resistenza>

  <\equation*>
    P=<frac|V<rsup|2><around*|(|t|)>|R>
  </equation*>

  <\equation*>
    P=<big|int><rsub|0><rsup|t>R*I<around*|(|t|)><rsup|2>*d*t
  </equation*>

  <subsection|Valore della resistenza>

  <\equation*>
    R=<frac|\<rho\>*L|S>
  </equation*>

  dove <math|\<rho\>> è la resistività elettrica, <math|L> è la lunghezza del
  conduttore e <math|S> l'area della sezione

  <\equation*>
    E<rsub|L>=-L*<frac|d*I|d*t>
  </equation*>

  dove <math|L> è l'induttanza del circuito.

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
    I=<frac|E|R><around*|(|1-e<rsup|-t/\<tau\>>|)>
  </equation*>

  \;

  <\equation*>
    I=<frac|E|R>*e<rsup|-t/\<tau\>>
  </equation*>

  <subsection|Circuito LC>

  <subsubsection|Frequenza di oscillazione>

  <\equation*>
    \<omega\><rsub|0>=<frac|1|<sqrt|L*C>>
  </equation*>

  \;

  <subsection|Circuito RLC>

  <subsubsection|Carica sul condensatore>

  <\equation*>
    Q=Q<rsub|max>\<cdot\>*e<rsup|-R\<cdot\>t/2L>\<cdot\>cos<around*|(|\<omega\><rsub|d>*t|)>
  </equation*>

  dove

  <\equation*>
    \<omega\><rsub|d>=<around*|[|<frac|1|L*C>-<around*|(|<frac|R|2*L>|)><rsup|2>|]><rsup|<frac*|1|2>>
  </equation*>

  <subsubsection|Corrente efficace>

  <\equation*>
    I<rsub|eff>=<frac|\<Delta\>V<rsub|eff>|<sqrt|R<rsup|2>+<around*|(|X<rsub|L>-X<rsub|C>|)><rsup|2>>>
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

  se la frequenza del generatore è uguale a <math|\<omega\><rsub|0>>, la
  corrente raggiunge il suo valore massimo

  <subsection|Reattanze>

  <subsubsection|Reattanza induttiva>

  <\equation*>
    X<rsub|L>=\<omega\>*L<space|1em><around*|[|\<Omega\>|]>
  </equation*>

  <subsubsection|Reattanza capacitiva>

  <\equation*>
    X<rsub|C>=<frac|1|\<omega\>*C><space|1em><around*|[|\<Omega\>|]>
  </equation*>

  <subsection|Corrente e tensione efficace>

  <\equation*>
    I<rsub|eff>=<frac|I<rsub|max>|<sqrt|2>>=0.707\<cdot\>I<rsub|max>
  </equation*>

  <\equation*>
    \<Delta\>V<rsub|eff>=<frac|\<Delta\>V<rsub|max>|<sqrt|2>>=0.707\<cdot\>\<Delta\>V<rsub|max>
  </equation*>

  <subsection|Potenza media>

  La potenza media fornita da un generatore ad un circuito RLC è

  <\equation*>
    P<rsub|media>=I<rsub|eff>*\<Delta\>V<rsub|eff>*cos<around*|(|\<Phi\>|)>
  </equation*>

  un espressione equivalente è

  <\equation*>
    P<rsub|media>=I<rsup|2><rsub|eff>*R
  </equation*>

  <subsection|Trasformatore>

  <\equation*>
    \<Delta\>v<rsub|2>=<frac|N<rsub|2>|N<rsub|1>>*\<Delta\>v<rsub|1>
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

  <chapter|Formule geometriche>

  <section|Sfera>

  <\itemize>
    <item>Superficie

    <\equation*>
      S=4*\<pi\>*r<rsup|2>
    </equation*>

    <item>Volume

    <\equation*>
      V=<frac|4|3>*\<pi\>*r<rsup|3>
    </equation*>
  </itemize>

  <section|Piramide>

  <\itemize>
    <item>Volume

    <\equation*>
      V=<frac|S<rsub|base>\<cdot\>h|3>
    </equation*>
  </itemize>

  \;

  <\chapter>
    Momenti d'inerzia
  </chapter>

  <section|Massa puntiforme>

  Una massa puntiforme non ha momento di inerzia intorno al proprio asse. Nel
  caso in cui l'asse di rotazione sia ad una distanza <math|r> dal centro di
  massa si ha

  <\equation*>
    I=m*r<rsup|2>
  </equation*>

  <section|Asta>

  Se un asta (infinitamente sottile ma rigida) di lunghezza <math|L> e di
  massa <math|m> ruota attorno ad una sua estremità si ha che

  <\equation*>
    I<rsub|estremità>=<frac|m*L<rsup|2>|3>
  </equation*>

  altrimenti, se l'asse di rotazione è al centro

  <\equation*>
    I<rsub|centrale>=<frac|m*L<rsup|2>|12>
  </equation*>

  <section|Circonferenza>

  Circonferenza sottile (quindi anche un toro sottile) di raggio <math|r> e
  di massa <math|m> che ruota attorno all'asse <math|z> ha

  <\equation*>
    I<rsub|z>=m*r<rsup|2>
  </equation*>

  <\equation*>
    I<rsub|x>=I<rsub|y>=<frac|m*r<rsup|2>|2>
  </equation*>

  <section|Disco>

  Disco solido e sottile (in pratica è un cilindro spiaccicato) di raggio
  <math|r> e di massa <math|m> che ruota attorno all'asse <math|z>

  <\equation*>
    I<rsub|z>=<frac|m*r<rsup|2>|2>
  </equation*>

  <\equation*>
    I<rsub|x>=I<rsub|y>=<frac|m*r<rsup|2>|4>
  </equation*>

  <section|Cilindro>

  Superficie cilindrica sottile con estremità aperte, di raggio <math|r> e di
  massa <math|m>

  <\equation*>
    I=m*r<rsup|2>
  </equation*>

  Cilindro solido di raggio <math|r>, altezza <math|h> e massa <math|m>

  <\equation*>
    I<rsub|z>=<frac|m*r<rsup|2>|2>
  </equation*>

  <\equation*>
    I<rsub|x>=I<rsub|y>=<frac|1|12>*m*<around*|(|3*r<rsup|2>+h<rsup|2>|)>
  </equation*>

  Tubo cilindrico con pareti spesse ed estremità aperte, di raggio interno
  <math|r<rsub|1>>, raggio esterno <math|r<rsub|2>>, lunghezza <math|h> e
  massa <math|m>

  <\equation*>
    I<rsub|z>=<frac|1|2>*m*<around*|(|r<rsub|1><rsup|2>+r<rsub|2><rsup|2>|)>
  </equation*>

  <\equation*>
    I<rsub|x>=I<rsub|y>=<frac|1|12>*m*<around*|[|3*<around*|(|r<rsub|2><rsup|2>+r<rsub|1><rsup|2>|)>+h<rsup|2>|]>
  </equation*>

  <section|Sfera>

  Sfera cava di raggio <math|r> e massa <math|m>

  <\equation*>
    I=<frac|2*m*r<rsup|2>|3>
  </equation*>

  (una sfera cava può essere considerata come costituita da due pile di
  cerchi infinitamente sottili, uno sopra l'altro, con i raggi che aumentano
  da 0 a <math|r>)

  Sfera piene di raggio <math|r> e massa <math|m>

  <\equation*>
    I=<frac|2*m*r<rsup|2>|5>
  </equation*>

  <section|Cono>

  Cono cavo circolare retto con raggio <math|r>, altezza <math|h> e massa
  <math|m>

  <\equation*>
    I<rsub|z>=<frac|3|10>*m*r<rsup|2>
  </equation*>

  <\equation*>
    I<rsub|x>=I<rsub|y>=<frac|3|5>*m*<around*|(|<frac|r<rsup|2>|4>+h<rsup|2>|)>
  </equation*>

  <section|Toro>

  Toro con raggio del tubo <math|a>, distanza dal centro del tubo al centro
  del toro <math|b> e massa <math|m>.

  Il momento di inerzia intorno al diametro vale

  <\equation*>
    I<rsub|diametro>=<frac|1|8>*<around*|(|4*a<rsup|2>+5*b<rsup|2>|)>*m
  </equation*>

  mentre quello attorno all'asse verticale

  <\equation*>
    I<rsub|verticale>=<around*|(|a<rsup|2>+<frac|3|4>*b<rsup|2>|)>*m
  </equation*>

  <section|Ellissoide>

  Ellissoide solido di semiassi <math|\<alpha\>,\<beta\>> e
  <math|\<varsigma\>> con asse di rotazione <math|a> e massa <math|m>

  <\equation*>
    I<rsub|\<alpha\>>=<frac|m<around*|(|\<beta\><rsup|2>+\<varsigma\><rsup|2>|)>|5>
  </equation*>

  <section|Piastra>

  Piastra rettangolare sottile di altezza <math|h>, larghezza <math|w> e
  massa <math|m>.

  Con asse di rotazione all'estremità della piastra

  <\equation*>
    I<rsub|estremità>=<frac|m*h<rsup|2>|3>+<frac|m*w<rsup|2>|12>
  </equation*>

  Con asse di rotazione centrale

  <\equation*>
    I<rsub|centrale>=<frac|m*<around*|(|h<rsup|2>+w<rsup|2>|)>|12>
  </equation*>

  <section|Parallelepipedo>

  Parallelepipedo solido di altezza <math|h>, larghezza <math|w>, profondità
  <math|d> e massa <math|m>

  <\equation*>
    I<rsub|h>=<frac|1|12>*m*<around*|(|w<rsup|2>+d<rsup|2>|)>
  </equation*>

  <\equation*>
    I<rsub|w>=<frac|1|12>*m*<around*|(|h<rsup|2>+d<rsup|2>|)>
  </equation*>

  <\equation*>
    I<rsub|d>=<frac|1|12>*m*<around*|(|h<rsup|2>+w<rsup|2>|)>
  </equation*>

  se fosse stato un cubo di lato <math|s>

  <\equation*>
    I=<frac|m*s<rsup|2>|6>
  </equation*>

  Parallelepipedo solido di altezza <math|D>, larghezza <math|W>, lunghezza
  <math|L> e massa <math|m> lungo la diagonale più lunga.

  <\equation*>
    I<rsub|diagonale più lunga> =<frac|m*<around*|(|W<rsup|2>*D<rsup|2>+L<rsup|2>*D<rsup|2>+L<rsup|2>*W<rsup|2>|)>|6*<around*|(|L<rsup|2>+W<rsup|2>+D<rsup|2>|)>>
  </equation*>

  \;

  \;

  \;
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
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|altro_formulario.tm>>
    <associate|auto-10|<tuple|3.6|2|altro_formulario.tm>>
    <associate|auto-100|<tuple|4.1|13|altro_formulario.tm>>
    <associate|auto-101|<tuple|4.2|14|altro_formulario.tm>>
    <associate|auto-102|<tuple|4.2.1|14|altro_formulario.tm>>
    <associate|auto-103|<tuple|4.2.2|14|altro_formulario.tm>>
    <associate|auto-104|<tuple|4.3|14|altro_formulario.tm>>
    <associate|auto-105|<tuple|4.4|14|altro_formulario.tm>>
    <associate|auto-106|<tuple|4.5|14|altro_formulario.tm>>
    <associate|auto-107|<tuple|3|14|altro_formulario.tm>>
    <associate|auto-108|<tuple|4|14|altro_formulario.tm>>
    <associate|auto-109|<tuple|1|14|altro_formulario.tm>>
    <associate|auto-11|<tuple|4|2|altro_formulario.tm>>
    <associate|auto-110|<tuple|2|14|altro_formulario.tm>>
    <associate|auto-111|<tuple|5|14|altro_formulario.tm>>
    <associate|auto-112|<tuple|1|14|altro_formulario.tm>>
    <associate|auto-113|<tuple|2|14|altro_formulario.tm>>
    <associate|auto-114|<tuple|3|15|altro_formulario.tm>>
    <associate|auto-115|<tuple|4|15|altro_formulario.tm>>
    <associate|auto-116|<tuple|5|15|altro_formulario.tm>>
    <associate|auto-117|<tuple|6|15|altro_formulario.tm>>
    <associate|auto-118|<tuple|7|15|altro_formulario.tm>>
    <associate|auto-119|<tuple|8|15|altro_formulario.tm>>
    <associate|auto-12|<tuple|4.1|2|altro_formulario.tm>>
    <associate|auto-120|<tuple|9|15|altro_formulario.tm>>
    <associate|auto-121|<tuple|10|16|altro_formulario.tm>>
    <associate|auto-122|<tuple|11|16|altro_formulario.tm>>
    <associate|auto-123|<tuple|11|16|altro_formulario.tm>>
    <associate|auto-124|<tuple|11|16|altro_formulario.tm>>
    <associate|auto-125|<tuple|11|16|altro_formulario.tm>>
    <associate|auto-126|<tuple|6|16|altro_formulario.tm>>
    <associate|auto-127|<tuple|1|16|altro_formulario.tm>>
    <associate|auto-128|<tuple|1|17|altro_formulario.tm>>
    <associate|auto-129|<tuple|9|17|altro_formulario.tm>>
    <associate|auto-13|<tuple|4.2|2|altro_formulario.tm>>
    <associate|auto-130|<tuple|10|17|altro_formulario.tm>>
    <associate|auto-131|<tuple|11|17|altro_formulario.tm>>
    <associate|auto-132|<tuple|6|17|altro_formulario.tm>>
    <associate|auto-133|<tuple|1|18|altro_formulario.tm>>
    <associate|auto-134|<tuple|6|18|altro_formulario.tm>>
    <associate|auto-135|<tuple|1|18|altro_formulario.tm>>
    <associate|auto-14|<tuple|5|2|altro_formulario.tm>>
    <associate|auto-15|<tuple|5.1|3|altro_formulario.tm>>
    <associate|auto-16|<tuple|5.1.1|3|altro_formulario.tm>>
    <associate|auto-17|<tuple|5.1.2|3|altro_formulario.tm>>
    <associate|auto-18|<tuple|6|3|altro_formulario.tm>>
    <associate|auto-19|<tuple|6.1|3|altro_formulario.tm>>
    <associate|auto-2|<tuple|1|1|altro_formulario.tm>>
    <associate|auto-20|<tuple|6.2|4|altro_formulario.tm>>
    <associate|auto-21|<tuple|7|4|altro_formulario.tm>>
    <associate|auto-22|<tuple|7.1|4|altro_formulario.tm>>
    <associate|auto-23|<tuple|8|4|altro_formulario.tm>>
    <associate|auto-24|<tuple|9|4|altro_formulario.tm>>
    <associate|auto-25|<tuple|10|4|altro_formulario.tm>>
    <associate|auto-26|<tuple|11|4|altro_formulario.tm>>
    <associate|auto-27|<tuple|2|4|altro_formulario.tm>>
    <associate|auto-28|<tuple|1|4|altro_formulario.tm>>
    <associate|auto-29|<tuple|1.1|4|altro_formulario.tm>>
    <associate|auto-3|<tuple|2|1|altro_formulario.tm>>
    <associate|auto-30|<tuple|1.1.1|4|altro_formulario.tm>>
    <associate|auto-31|<tuple|1.2|4|altro_formulario.tm>>
    <associate|auto-32|<tuple|1.3|5|altro_formulario.tm>>
    <associate|auto-33|<tuple|1.4|5|altro_formulario.tm>>
    <associate|auto-34|<tuple|1.5|5|altro_formulario.tm>>
    <associate|auto-35|<tuple|1.6|5|altro_formulario.tm>>
    <associate|auto-36|<tuple|1.7|5|altro_formulario.tm>>
    <associate|auto-37|<tuple|1.8|5|altro_formulario.tm>>
    <associate|auto-38|<tuple|1.8.1|5|altro_formulario.tm>>
    <associate|auto-39|<tuple|1.9|5|altro_formulario.tm>>
    <associate|auto-4|<tuple|3|1|altro_formulario.tm>>
    <associate|auto-40|<tuple|1.10|5|altro_formulario.tm>>
    <associate|auto-41|<tuple|1.11|6|altro_formulario.tm>>
    <associate|auto-42|<tuple|1.12|6|altro_formulario.tm>>
    <associate|auto-43|<tuple|1.13|6|altro_formulario.tm>>
    <associate|auto-44|<tuple|1.13.1|6|altro_formulario.tm>>
    <associate|auto-45|<tuple|1.13.2|6|altro_formulario.tm>>
    <associate|auto-46|<tuple|1.13.3|7|altro_formulario.tm>>
    <associate|auto-47|<tuple|1.13.4|7|altro_formulario.tm>>
    <associate|auto-48|<tuple|1.14|7|altro_formulario.tm>>
    <associate|auto-49|<tuple|2|7|altro_formulario.tm>>
    <associate|auto-5|<tuple|3.1|1|altro_formulario.tm>>
    <associate|auto-50|<tuple|2.1|7|altro_formulario.tm>>
    <associate|auto-51|<tuple|2.2|7|altro_formulario.tm>>
    <associate|auto-52|<tuple|2.3|8|altro_formulario.tm>>
    <associate|auto-53|<tuple|2.4|8|altro_formulario.tm>>
    <associate|auto-54|<tuple|2.5|8|altro_formulario.tm>>
    <associate|auto-55|<tuple|2.6|8|altro_formulario.tm>>
    <associate|auto-56|<tuple|2.6.1|8|altro_formulario.tm>>
    <associate|auto-57|<tuple|2.6.2|8|altro_formulario.tm>>
    <associate|auto-58|<tuple|2.7|8|altro_formulario.tm>>
    <associate|auto-59|<tuple|2.7.1|8|altro_formulario.tm>>
    <associate|auto-6|<tuple|3.2|1|altro_formulario.tm>>
    <associate|auto-60|<tuple|2.8|8|altro_formulario.tm>>
    <associate|auto-61|<tuple|2.9|9|altro_formulario.tm>>
    <associate|auto-62|<tuple|2.10|9|altro_formulario.tm>>
    <associate|auto-63|<tuple|2.10.1|9|altro_formulario.tm>>
    <associate|auto-64|<tuple|2.11|9|altro_formulario.tm>>
    <associate|auto-65|<tuple|2.11.1|9|altro_formulario.tm>>
    <associate|auto-66|<tuple|2.12|9|altro_formulario.tm>>
    <associate|auto-67|<tuple|2.12.1|9|altro_formulario.tm>>
    <associate|auto-68|<tuple|2.12.2|9|altro_formulario.tm>>
    <associate|auto-69|<tuple|2.12.3|9|altro_formulario.tm>>
    <associate|auto-7|<tuple|3.3|1|altro_formulario.tm>>
    <associate|auto-70|<tuple|2.13|10|altro_formulario.tm>>
    <associate|auto-71|<tuple|2.14|10|altro_formulario.tm>>
    <associate|auto-72|<tuple|2.15|10|altro_formulario.tm>>
    <associate|auto-73|<tuple|2.16|10|altro_formulario.tm>>
    <associate|auto-74|<tuple|2.17|10|altro_formulario.tm>>
    <associate|auto-75|<tuple|2.18|10|altro_formulario.tm>>
    <associate|auto-76|<tuple|2.19|11|altro_formulario.tm>>
    <associate|auto-77|<tuple|2.20|11|altro_formulario.tm>>
    <associate|auto-78|<tuple|2.21|11|altro_formulario.tm>>
    <associate|auto-79|<tuple|2.22|11|altro_formulario.tm>>
    <associate|auto-8|<tuple|3.4|1|altro_formulario.tm>>
    <associate|auto-80|<tuple|3|11|altro_formulario.tm>>
    <associate|auto-81|<tuple|3.1|11|altro_formulario.tm>>
    <associate|auto-82|<tuple|3.2|11|altro_formulario.tm>>
    <associate|auto-83|<tuple|3.3|12|altro_formulario.tm>>
    <associate|auto-84|<tuple|3.3.1|12|altro_formulario.tm>>
    <associate|auto-85|<tuple|3.3.2|12|altro_formulario.tm>>
    <associate|auto-86|<tuple|3.4|12|altro_formulario.tm>>
    <associate|auto-87|<tuple|3.5|12|altro_formulario.tm>>
    <associate|auto-88|<tuple|3.6|12|altro_formulario.tm>>
    <associate|auto-89|<tuple|3.6.1|12|altro_formulario.tm>>
    <associate|auto-9|<tuple|3.5|2|altro_formulario.tm>>
    <associate|auto-90|<tuple|3.7|13|altro_formulario.tm>>
    <associate|auto-91|<tuple|3.7.1|13|altro_formulario.tm>>
    <associate|auto-92|<tuple|3.8|13|altro_formulario.tm>>
    <associate|auto-93|<tuple|3.8.1|13|altro_formulario.tm>>
    <associate|auto-94|<tuple|3.9|13|altro_formulario.tm>>
    <associate|auto-95|<tuple|3.9.1|13|altro_formulario.tm>>
    <associate|auto-96|<tuple|3.9.2|13|altro_formulario.tm>>
    <associate|auto-97|<tuple|3.9.3|13|altro_formulario.tm>>
    <associate|auto-98|<tuple|3.9.4|13|altro_formulario.tm>>
    <associate|auto-99|<tuple|4|13|altro_formulario.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Cinematica>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Legge
      oraria> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Calcolo
      del centro di massa> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>In un sistema di
      <with|mode|<quote|math>|N> punti materiali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>In un sistema continuo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Energia
      meccanica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Energia cinetica del centro
      di massa <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Energia cinetica di
      rotazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Relazione tra energia
      cinetica e quantità di moto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Lavoro ed energia cinetica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Energia potenziale
      gravitazionale (vicino alla superficie)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|3.6<space|2spc>Energia potenziale
      gravitazionale (distanza arbitraria)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Impulso>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Teorema dell'impulso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Urti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Urto elastico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Urto anaelastico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Conservazione
      di quantità di moto e momento angolare>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Moto
      oscillatorio> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <with|par-left|<quote|1tab>|7.1<space|2spc>Energia cinetica e
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|7.2<space|2spc>Forza frenante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Pendolo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <with|par-left|<quote|1tab>|8.1<space|2spc>Periodo di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|8.1.1<space|2spc>Pendolo semplice
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|8.1.2<space|2spc>Pendolo fisico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Forza
      ed energia elastica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn>

      <with|par-left|<quote|1tab>|9.1<space|2spc>Legge di Hooke
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|9.2<space|2spc>Energia potenziale elastica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Moto
      circolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29><vspace|0.5fn>

      <with|par-left|<quote|1tab>|10.1<space|2spc>Forza centripeta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Accelerazione
      angolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Momento
      di una forza> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Momento
      angolare> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Potenza
      ``angolare''> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Elettromagnetismo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Campo
      elettrico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Forza di Coulomb
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|2tab>|1.1.1<space|2spc>Energia potenziale
      (Coulomb) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Quantità totale di carica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Vettore campo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Lavoro per spostare una
      carica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Energia potenziale elettrica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Momento di dipolo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Flusso elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Flusso elettrico (legge di
      Gauss) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|1.8.1<space|2spc>Scelta della superficie
      <with|mode|<quote|math>|E> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|1.9<space|2spc>Relazione con il campo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Equilibrio elettrostatico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|1.11<space|2spc>Differenza di potenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|1tab>|1.12<space|2spc>Variazione di energia
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|1.13<space|2spc>Condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|2tab>|1.13.1<space|2spc>Capacità di condensatori
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|2tab>|1.13.2<space|2spc>Relazione tra carica \ e
      corrente <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|1.13.3<space|2spc>Caratteristica
      tensione-corrente <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|2tab>|1.13.4<space|2spc>Energia in un
      condensatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|1.14<space|2spc>Energia potenziale di un
      elettrone <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Campo
      magnetico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Campo magnetico dato come
      derivata <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Flusso magnetico attraverso
      una superficie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Teorema di Ampère
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Legge di Biot-Savart
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Fili paralleli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Alcuni campi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|2tab>|2.6.1<space|2spc>Filo rettilineo uniforme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|2tab>|2.6.2<space|2spc>Toroide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|2tab>|2.6.3<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Alcuni flussi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|2tab>|2.7.1<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Teorema di Ampère-Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <with|par-left|<quote|1tab>|2.9<space|2spc>Legge di Gauss per il campo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      <with|par-left|<quote|1tab>|2.10<space|2spc>Particella in movimento in
      un campo magnetico uniforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>>

      <with|par-left|<quote|2tab>|2.10.1<space|2spc>Tipologie di sostanze
      magnetiche <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      <with|par-left|<quote|1tab>|2.11<space|2spc>Energia potenziale
      magnetica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>>

      <with|par-left|<quote|2tab>|2.11.1<space|2spc>Energia magnetica in un
      solenoide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>>

      <with|par-left|<quote|1tab>|2.12<space|2spc>Legge di Faraday
      dell'induzione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <with|par-left|<quote|2tab>|2.12.1<space|2spc>Forma generale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>>

      <with|par-left|<quote|2tab>|2.12.2<space|2spc>Legge di Faraday per una
      bobina <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>>

      <with|par-left|<quote|2tab>|2.12.3<space|2spc>Legge di Faraday per una
      sbarretta <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-78>>

      <with|par-left|<quote|1tab>|2.13<space|2spc>Legge di Lenz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79>>

      <with|par-left|<quote|1tab>|2.14<space|2spc>F.e.m. indotta dal moto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>>

      <with|par-left|<quote|1tab>|2.15<space|2spc>Forza di Lorentz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>>

      <with|par-left|<quote|1tab>|2.16<space|2spc>Equazioni di Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>>

      <with|par-left|<quote|1tab>|2.17<space|2spc>Corrente di spostamento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>>

      <with|par-left|<quote|1tab>|2.18<space|2spc>Vettore di Poynting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>>

      <with|par-left|<quote|1tab>|2.19<space|2spc>Forza agente su un
      conduttore rettilineo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85>>

      <with|par-left|<quote|1tab>|2.20<space|2spc>Forza agente su un filo di
      forma arbitraria <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>>

      <with|par-left|<quote|1tab>|2.21<space|2spc>Momento di dipolo magnetico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87>>

      <with|par-left|<quote|1tab>|2.22<space|2spc>Momento meccanico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88>>

      <with|par-left|<quote|1tab>|2.23<space|2spc>Forza magnetica su di una
      particella <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Circuiti
      in corrente continua> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Potenza dissipata da una
      resistenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Valore della resistenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>F.e.m. autoindotta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Induttanze salienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>>

      <with|par-left|<quote|2tab>|3.4.1<space|2spc>Bobina
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>>

      <with|par-left|<quote|2tab>|3.4.2<space|2spc>Solendoie (in aria)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Mutua induttanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>

      <with|par-left|<quote|1tab>|3.6<space|2spc>Densità di energia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-98>>

      <with|par-left|<quote|1tab>|3.7<space|2spc>Circuito RC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-99>>

      <with|par-left|<quote|2tab>|3.7.1<space|2spc>Tensione sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-100>>

      <with|par-left|<quote|1tab>|3.8<space|2spc>Circuito RL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101>>

      <with|par-left|<quote|2tab>|3.8.1<space|2spc>Corrente nel circuito
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-102>>

      <with|par-left|<quote|1tab>|3.9<space|2spc>Circuito LC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-103>>

      <with|par-left|<quote|2tab>|3.9.1<space|2spc>Frequenza di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-104>>

      <with|par-left|<quote|1tab>|3.10<space|2spc>Circuito RLC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-105>>

      <with|par-left|<quote|2tab>|3.10.1<space|2spc>Carica sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-106>>

      <with|par-left|<quote|2tab>|3.10.2<space|2spc>Corrente efficace
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-107>>

      <with|par-left|<quote|2tab>|3.10.3<space|2spc>Impedenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-108>>

      <with|par-left|<quote|2tab>|3.10.4<space|2spc>Angolo di fase tra
      corrente e tensione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-109>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Circuiti
      in corrente alternata> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-110><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Frequenza di risonanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-111>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Reattanze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-112>>

      <with|par-left|<quote|2tab>|4.2.1<space|2spc>Reattanza induttiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-113>>

      <with|par-left|<quote|2tab>|4.2.2<space|2spc>Reattanza capacitiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-114>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Corrente e tensione efficace
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-115>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Potenza media
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-116>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Trasformatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-117>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-118><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|4<space|2spc>Formule
      geometriche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-119><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Sfera>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-120><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Piramide>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-121><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|5<space|2spc>Momenti
      d'inerzia> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-122><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Massa
      puntiforme> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-123><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Asta>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-124><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Circonferenza>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-125><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Disco>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-126><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Cilindro>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-127><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Sfera>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-128><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Cono>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-129><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Toro>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-130><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Ellissoide>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-131><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Piastra>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-132><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Parallelepipedo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-133><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|6<space|2spc>Misto>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-134><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Prodotto
      vettore> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-135><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
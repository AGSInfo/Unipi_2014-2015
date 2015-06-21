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

  <section|Calcolo del centro di massa>

  <subsection|In un sistema di <math|N> punti materiali>

  (da verificare)

  <\equation*>
    R<rsub|x>=<frac|m<rsub|1>*r<rsub|1<rsub|x>>+m<rsub|2>*r<rsub|2<rsub|x>>+\<ldots\>+m<rsub|n>*r<rsub|n<rsub|x>>|M>=<frac|<big|sum><rsub|i=1><rsup|n>m<rsub|i>*r<rsub|i<rsub|x>>|<big|sum><rsub|i=1><rsup|n>m<rsub|i>>
  </equation*>

  dove <math|M=m<rsub|1>+m<rsub|2>+\<ldots\>m<rsub|n>>, <math|R<rsub|x>> è la
  componente <math|x> del vettore centro di massa, <math|r<rsub|i<rsub|x>>> è
  la componente <math|x> del vettore del centro di massa <math|m<rsub|i>>

  <subsection|In un sistema continuo>

  <\equation*>
    M<around*|(|\<Omega\>|)>=<big|int><rsub|\<Omega\>>\<rho\><around*|(|r|)>*d<with|font-shape|italic|V>
  </equation*>

  Dove <math|\<rho\><around*|(|r|)>> è una funzione scalare rappresentante la
  densità

  <section|Energia meccanica>

  <subsection|Energia cinetica del centro di massa>

  <\equation*>
    E<rsub|c>=<frac|1|2>*m*v<rsup|2>
  </equation*>

  <subsection|Energia cinetica di rotazione>

  <\equation*>
    E<rsub|rot>=<frac|1|2>*m*v<rsup|2>=<frac|1|2>*m*r<rsup|2>*w<rsup|2>
  </equation*>

  a questo punto si pone <math|m*r<rsup|2>=I> e si ottiene

  <\equation*>
    E<rsub|rot>=<frac|1|2>*I*w<rsup|2>
  </equation*>

  <section|Impulso>

  (da verificare)

  <math|F=m*a> \ \ \ <math|a=<frac|v<rsub|2>-v<rsub|1>|t<rsub|2>-t<rsub|1>>>
  \ \ \ <math|F*<around*|(|t<rsub|2>-t<rsub|1>|)>=m*v<rsub|2>-m*v<rsub|1>>
  \ \ \ <math|q=m*v> \ \ <math|I=F*<around*|(|t<rsub|2>-t<rsub|1>|)>>

  dove <math|I> è l'impulso, che rappresenta il prodotto della forza
  applicata ad un corpo per l'intervallo di tempo in cui tale forza viene
  applicata.

  Si ha quindi che l'impulso è la variazione della quantità di moto

  <\equation*>
    \<Delta\><wide|p|\<vect\>>=<big|int><rsub|t<rsub|0>><rsup|t<rsub|1>><wide|F|\<vect\>>*dt
  </equation*>

  <subsection|Teorema dell'impulso>

  Il teorema dell'impulso (o della variazione della quantità di moto)
  consiste nell'affermazione: il secondo principio della dinamica comporta
  che l'impulso corrisponde alla variazione della quantità di moto del sistma
  in un intervallo temporale. Infatti per il secondo principio:

  <\equation*>
    <wide|F|\<vect\>>=<frac|d<wide|p|\<vect\>>|d*t>
  </equation*>

  Sfruttando la definizione di differenziale di una funzione

  <\equation*>
    d<wide|p|\<vect\>>=<wide|F|\<vect\>>*d*t
  </equation*>

  Integrando entrando ambo i membri tra due istanti <math|t<rsub|0>> e
  <math|t<rsub|1>> otteniamo:

  <\equation*>
    <big|int><rsub|<wide|p|\<vect\>><around*|(|t<rsub|0>|)>><rsup|<wide|p|\<vect\>><around*|(|t<rsub|1>|)>>d<wide|p|\<vect\>>=<big|int><rsub|t<rsub|0>><rsup|t<rsub|1>><wide|F|\<vect\>>*d*t
  </equation*>

  ma la primitiva di un differenziale è la grandezza differenziata, e in base
  al teorema di Torricelli:

  <\equation*>
    <wide|p|\<vect\>><around*|(|t<rsub|1>|)>-<wide|p|\<vect\>><around*|(|t<rsub|0>|)>=<big|int><rsub|t<rsub|0>><rsup|t<rsub|1>><wide|F|\<vect\>>*dt
  </equation*>

  Nel caso in cui la forza sia costante, la si può portare fuori dal segno
  d'integrale, cosicché:

  <\equation*>
    \<Delta\><wide|p|\<vect\>>=<wide|F|\<vect\>>*\<Delta\>t
  </equation*>

  <section|Pendolo>

  <subsection|Periodo di oscillazione>

  <subsubsection|Pendolo semplice>

  <\equation*>
    T=2*\<pi\>*<sqrt|<frac|l|g>>
  </equation*>

  <subsubsection|Pendolo fisico>

  <\equation*>
    T=2*\<pi\>*<sqrt|<frac|I|m*g*d>>
  </equation*>

  <chapter|Elettromagnetismo>

  <section|Campo elettrico>

  ``Definizione': 'Forza per unità di carica che una carica sonda percepisce
  per la presenza delle cariche sorgenti

  <subsection|Legge di Coulomb>

  <\equation*>
    <around*|\||F<rsub|e>|\|>=k<rsub|e>\<cdot\><frac|<around*|\||q<rsub|1>|\|>\<cdot\><around*|\||q<rsub|2>|\|>|r<rsup|2>>
  </equation*>

  dove <math|k<rsub|e>=8.9876\<times\>10<rsup|9>
  N\<cdot\>m<rsup|2>/C<rsup|2>><math|>. <math|k<rsub|e>> si può indicare
  anche come <math|<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>>

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
    \<Delta\>V<rsub|A*B>=V<rsub|A>-V<rsub|B>\<equiv\><frac|\<Delta\>U|q<rsub|2>>=-<big|int><rsub|A><rsup|B><wide|E|\<vect\>>\<cdot\>d<wide|s|\<vect\>>
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

  L'energia potenziale del campo elettrostatico contenuta nel condensatore è
  uguale a

  <\equation*>
    U=<frac|1|2>C*\<Delta\>V=<frac|1|2>*<frac|Q<rsup|2>|C>
  </equation*>

  <section|Campo magnetico>

  Il campo magnetico è costituito da linee chiuse

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

  <subsection|Legge di Biot-Sabart>

  Il campo magnetico <math|<wide|d*B|\<vect\>>> prodotto, in un punto
  <math|P>, da un elemento <math|<wide|d*s|\<vect\>>> percorso da una
  corrente continua <math|I> è

  <\equation*>
    <wide|d*B|\<vect\>>=<frac|\<mu\><rsub|0>|4*\<pi\>><frac|I*<wide|d*s|\<vect\>>\<times\><wide|r|^>|r<rsup|2>>
  </equation*>

  dove <math|r> è la distanza del punto <math|P> dall'elemento di corrente e
  <math|<wide|r|^>> è il versore orientato da <math|<wide|d*s|\<vect\>>>
  verso il punto <math|P>. Per calcolare il campo risultante nel punto
  <math|P> è necessario integrare questa espressione vettoriale su tutta la
  distribuzione di corrente.

  <subsection|Alcuni campi magnetici salienti>

  <subsubsection|Filo rettilineo uniforme>

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

  <subsubsection|Toroide>

  <\equation*>
    B=<frac|\<mu\><rsub|0>*N*I|2*\<pi\>*r>
  </equation*>

  <subsubsection|Solenoide>

  <\equation*>
    B=\<mu\><rsub|0>*<frac|N|\<ell\>>I=\<mu\><rsub|0>*n*I
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

  <\equation*>
    \<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>=0
  </equation*>

  Ovvero non è possibile isolare un monopolo magnetico. Un ulteriore
  conseguenza è che il campo magnetico <math|<wide|B|\<vect\>>> è
  solenoidale, ovvero è composto da linee chiuse.

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

  Il momento magnetico di un magnete è una grandezza che quantifica la forza
  che l'oggetto esercita su una corrente elettrica e la torsione che il campo
  magnetico produce interagendo con esso.

  <\equation*>
    <wide|m|\<vect\>>=I\<cdot\>S <around*|[|A\<cdot\>m<rsup|2>=J/T=Joule/Tesla|]>
  </equation*>

  La direzione è data dalla direzione positiva di attraversamento di
  <math|S>, che viene individuata tramite la regola della mano destra
  (ponendo il pollice nella direzione della corrente <math|I> che scorre
  lungo il ``contorno'' di <math|S>)

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

  <subsection|Legge di Lenz>

  La legge di Lenz stabilisce che la f.e.m. e la corrente indotte in un
  conduttore hanno direzioni tali da produrre un campo magnetico che si
  oppone alla variazione che le ha prodotte.

  <subsection|F.e.m. indotta dal moto>

  Quando una sbarretta conduttrice di lunghezza <math|\<ell\>> si muove con
  velocità <math|<wide|v|\<vect\>>> attraverso un campo magnetico
  <math|<wide|B|\<vect\>>>, perpendicolare alla sbarretta e a
  <math|<wide|v|\<vect\>>>, la f.e.m. indotta dal moto nella sbarretta è

  <\equation*>
    E=-B*\<ell\>*v
  </equation*>

  <section|Circuiti in corrente continua>

  <subsection|F.e.m. autoindotta>

  Quando in un circuito la corrente varia nel tempo in accordo alla legge di
  Faraday, viene indotta una f.e.m.. La f.e.m. autoindotta è

  <\equation*>
    E<rsub|L>=-L*<frac|d*I|d*t>
  </equation*>

  dove <math|L> è l'induttanza del circuito.

  <subsection|Induttanze salienti>

  <subsubsection|Bobina>

  <\equation*>
    L=<frac|N*\<Phi\><rsub|B>|I>
  </equation*>

  <subsubsection|Solendoie (in aria)>

  <\equation*>
    L=\<mu\><rsub|0>*<frac|N<rsup|2>|\<ell\>>*A
  </equation*>

  <subsection|Densità di energia>

  La densità di energia in un punto in cui il campo magnetico è <math|B> è

  <\equation*>
    u<rsub|B>=<frac|B<rsup|2>|2*\<mu\><rsub|0>>
  </equation*>

  <subsection|Circuito RL>

  <subsubsection|Corrente nel circuito>

  <\equation*>
    I=<frac|E|R><around*|(|1-e<rsup|-t/\<tau\>>|)>
  </equation*>

  dove <math|\<tau\>=L/R> . Se la batteria che generava <math|E> viene
  sostituita con un filo di resistenza trascurabile, la corrente diminuisce
  esponenzialmente nel tempo con la legge

  <\equation*>
    I=<frac|E|R>*e<rsup|-t/\<tau\>>
  </equation*>

  <subsection|Circuito LC>

  <subsubsection|Frequenza di oscillazione>

  <\equation*>
    \<omega\>=<frac|1|<sqrt|L*C>>
  </equation*>

  L'energia in un circuito <with|font-shape|italic|LC> è continuamente
  convertita tra energia immagazzinata nel condesantore ed energia
  immagazzinata nell'induttore.

  <subsection|Circuito RLC>

  <subsubsection|Carica sul condensatore>

  <\equation*>
    Q=Q<rsub|max>\<cdot\>*e<rsup|-R\<cdot\>t/2L>\<cdot\>cos<around*|(|\<omega\><rsub|d>*t|)>
  </equation*>

  dove

  <\equation*>
    \<omega\><rsub|d>=<around*|[|<frac|1|L*C>-<around*|(|<frac|R|2*L>|)><rsup|2>|]><rsup|<frac*|1|2>>
  </equation*>

  <section|Circuiti in corrente alternata>

  <subsection|Reattanze>

  <subsubsection|Reattanza induttiva>

  <\equation*>
    X<rsub|L>=\<omega\>*L<space|1em><around*|[|\<Omega\>|]>
  </equation*>

  <subsubsection|Reattanza capacitiva>

  <\equation*>
    X<rsub|C>=<frac|1|\<omega\>*C><space|1em><around*|[|\<Omega\>|]>
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

  <chapter|Momenti d'inerzia>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-bot|2cm>
    <associate|page-even|1cm>
    <associate|page-medium|paper>
    <associate|page-odd|1cm>
    <associate|page-right|1cm>
    <associate|page-screen-margin|false>
    <associate|page-top|1cm>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4|2>>
    <associate|auto-11|<tuple|4.1|2>>
    <associate|auto-12|<tuple|4.1.1|2>>
    <associate|auto-13|<tuple|4.1.2|2>>
    <associate|auto-14|<tuple|2|2>>
    <associate|auto-15|<tuple|1|2>>
    <associate|auto-16|<tuple|1.1|2>>
    <associate|auto-17|<tuple|1.2|2>>
    <associate|auto-18|<tuple|1.3|3>>
    <associate|auto-19|<tuple|1.4|3>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|1.5|3>>
    <associate|auto-21|<tuple|1.6|3>>
    <associate|auto-22|<tuple|1.7|3>>
    <associate|auto-23|<tuple|1.7.1|4>>
    <associate|auto-24|<tuple|1.8|4>>
    <associate|auto-25|<tuple|1.9|4>>
    <associate|auto-26|<tuple|1.10|4>>
    <associate|auto-27|<tuple|1.11|4>>
    <associate|auto-28|<tuple|1.12|4>>
    <associate|auto-29|<tuple|2|5>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-30|<tuple|2.1|5>>
    <associate|auto-31|<tuple|2.2|5>>
    <associate|auto-32|<tuple|2.3|5>>
    <associate|auto-33|<tuple|2.4|5>>
    <associate|auto-34|<tuple|2.4.1|5>>
    <associate|auto-35|<tuple|2.4.2|5>>
    <associate|auto-36|<tuple|2.4.3|5>>
    <associate|auto-37|<tuple|2.5|5>>
    <associate|auto-38|<tuple|2.5.1|5>>
    <associate|auto-39|<tuple|2.6|6>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-40|<tuple|2.7|6>>
    <associate|auto-41|<tuple|2.8|6>>
    <associate|auto-42|<tuple|2.9|6>>
    <associate|auto-43|<tuple|2.9.1|6>>
    <associate|auto-44|<tuple|2.10|6>>
    <associate|auto-45|<tuple|2.10.1|6>>
    <associate|auto-46|<tuple|2.11|7>>
    <associate|auto-47|<tuple|2.11.1|7>>
    <associate|auto-48|<tuple|2.12|7>>
    <associate|auto-49|<tuple|2.13|7>>
    <associate|auto-5|<tuple|2|1>>
    <associate|auto-50|<tuple|3|7>>
    <associate|auto-51|<tuple|3.1|7>>
    <associate|auto-52|<tuple|3.2|7>>
    <associate|auto-53|<tuple|3.2.1|7>>
    <associate|auto-54|<tuple|3.2.2|7>>
    <associate|auto-55|<tuple|3.3|7>>
    <associate|auto-56|<tuple|3.4|7>>
    <associate|auto-57|<tuple|3.4.1|7>>
    <associate|auto-58|<tuple|3.5|8>>
    <associate|auto-59|<tuple|3.5.1|8>>
    <associate|auto-6|<tuple|2.1|1>>
    <associate|auto-60|<tuple|3.6|8>>
    <associate|auto-61|<tuple|3.6.1|8>>
    <associate|auto-62|<tuple|4|8>>
    <associate|auto-63|<tuple|4.1|8>>
    <associate|auto-64|<tuple|4.1.1|8>>
    <associate|auto-65|<tuple|4.1.2|8>>
    <associate|auto-66|<tuple|3|8>>
    <associate|auto-67|<tuple|4|?>>
    <associate|auto-7|<tuple|2.2|1>>
    <associate|auto-8|<tuple|3|1>>
    <associate|auto-9|<tuple|3.1|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Cinematica>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Calcolo
      del centro di massa> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>In un sistema di
      <with|mode|<quote|math>|N> punti materiali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>In un sistema continuo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Energia
      meccanica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Energia cinetica del centro
      di massa <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Energia cinetica di
      rotazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Impulso>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Teorema dell'impulso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Pendolo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Periodo di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|4.1.1<space|2spc>Pendolo semplice
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|2tab>|4.1.2<space|2spc>Pendolo fisico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Elettromagnetismo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Campo
      elettrico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Legge di Coulomb
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Vettore campo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Lavoro per spostare una
      carica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Energia potenziale elettrica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Momento di dipolo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Flusso elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Flusso elettrico (legge di
      Gauss) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|1.7.1<space|2spc>Scelta della superficie
      <with|mode|<quote|math>|E> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Relazione con il campo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|1.9<space|2spc>Equilibrio elettrostatico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Differenza di potenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|1.11<space|2spc>Variazione di energia
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|1.12<space|2spc>Condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Campo
      magnetico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Flusso magnetico attraverso
      una superficie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Teorema di Ampère
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Legge di Biot-Sabart
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Alcuni campi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|2.4.1<space|2spc>Filo rettilineo uniforme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|2tab>|2.4.2<space|2spc>Toroide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|2.4.3<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Alcuni flussi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|2tab>|2.5.1<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Teorema di Ampère-Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Legge di Gauss per il campo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Particella in movimento in
      un campo magnetico uniforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|2.9<space|2spc>Momento di dipolo magnetico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|2.9.1<space|2spc>Tipologie di sostanze
      magnetiche <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|2.10<space|2spc>Energia potenziale
      magnetica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|2tab>|2.10.1<space|2spc>Energia magnetica in un
      solenoide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|2.11<space|2spc>Legge di Faraday
      dell'induzione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|2tab>|2.11.1<space|2spc>Forma generale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|2.12<space|2spc>Legge di Lenz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|2.13<space|2spc>F.e.m. indotta dal moto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Circuiti
      in corrente continua> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>F.e.m. autoindotta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Induttanze salienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|2tab>|3.2.1<space|2spc>Bobina
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|3.2.2<space|2spc>Solendoie (in aria)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Densità di energia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Circuito RL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|2tab>|3.4.1<space|2spc>Corrente nel circuito
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Circuito LC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|2tab>|3.5.1<space|2spc>Frequenza di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|3.6<space|2spc>Circuito RLC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|2tab>|3.6.1<space|2spc>Carica sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Circuiti
      in corrente alternata> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Reattanze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|2tab>|4.1.1<space|2spc>Reattanza capacitiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|4<space|2spc>Momenti
      d'inerzia> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66><vspace|1fn>
    </associate>
  </collection>
</auxiliary>
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

  A destra di alcune formule � indicata l'unit� di misura del valore
  corrispondente all'interno di parentesi quadre (es. <math|V=I\<cdot\>R
  <around*|[|v|]>>)

  <chapter|Cinematica>

  <section|Calcolo del centro di massa>

  <subsection|In un sistema di <math|N> punti materiali>

  (da verificare)

  <\equation*>
    R<rsub|x>=<frac|m<rsub|1>*r<rsub|1<rsub|x>>+m<rsub|2>*r<rsub|2<rsub|x>>+\<ldots\>+m<rsub|n>*r<rsub|n<rsub|x>>|M>=<frac|<big|sum><rsub|i=1><rsup|n>m<rsub|i>*r<rsub|i<rsub|x>>|<big|sum><rsub|i=1><rsup|n>m<rsub|i>>
  </equation*>

  dove <math|M=m<rsub|1>+m<rsub|2>+\<ldots\>m<rsub|n>>, <math|R<rsub|x>> � la
  componente <math|x> del vettore centro di massa, <math|r<rsub|i<rsub|x>>> �
  la componente <math|x> del vettore del centro di massa <math|m<rsub|i>>

  <subsection|In un sistema continuo>

  <\equation*>
    M<around*|(|\<Omega\>|)>=<big|int><rsub|\<Omega\>>\<rho\><around*|(|r|)>*d<with|font-shape|italic|V>
  </equation*>

  Dove <math|\<rho\><around*|(|r|)>> � una funzione scalare rappresentante la
  densit�

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

  dove <math|I> � l'impulso, che rappresenta il prodotto della forza
  applicata ad un corpo per l'intervallo di tempo in cui tale forza viene
  applicata.

  Si ha quindi che l'impulso � la variazione della quantit� di moto

  <\equation*>
    \<Delta\><wide|p|\<vect\>>=<big|int><rsub|t<rsub|0>><rsup|t<rsub|1>><wide|F|\<vect\>>*dt
  </equation*>

  <subsection|Teorema dell'impulso>

  Il teorema dell'impulso (o della variazione della quantit� di moto)
  consiste nell'affermazione: il secondo principio della dinamica comporta
  che l'impulso corrisponde alla variazione della quantit� di moto del sistma
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

  ma la primitiva di un differenziale � la grandezza differenziata, e in base
  al teorema di Torricelli:

  <\equation*>
    <wide|p|\<vect\>><around*|(|t<rsub|1>|)>-<wide|p|\<vect\>><around*|(|t<rsub|0>|)>=<big|int><rsub|t<rsub|0>><rsup|t<rsub|1>><wide|F|\<vect\>>*dt
  </equation*>

  Nel caso in cui la forza sia costante, la si pu� portare fuori dal segno
  d'integrale, cosicch�:

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

  ``Definizione': 'Forza per unit� di carica che una carica sonda percepisce
  per la presenza delle cariche sorgenti

  <subsection|Legge di Coulomb>

  <\equation*>
    <around*|\||F<rsub|e>|\|>=k<rsub|e>\<cdot\><frac|<around*|\||q<rsub|1>|\|>\<cdot\><around*|\||q<rsub|2>|\|>|r<rsup|2>>
  </equation*>

  dove <math|k<rsub|e>=8.9876\<times\>10<rsup|9>
  N\<cdot\>m<rsup|2>/C<rsup|2>><math|>. <math|k<rsub|e>> si pu� indicare
  anche come <math|<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>>

  <subsection|Vettore campo elettrico>

  <\equation*>
    <wide|E|\<vect\>>\<equiv\><frac|<wide|F<rsub|e>|\<vect\>>|q<rsub|0>>*<around*|[|<frac|N|C>|]>
  </equation*>

  Da questo ricaviamo che, presa una carica <math|q<rsub|0>> immersa in un
  campo elettrico <math|<wide|E|\<vect\>>>, la forza che spinge la carica �
  uguale a

  <\equation*>
    <wide|F<rsub|e>|\<vect\>>=q<rsub|0>*<wide|E|\<vect\>>
  </equation*>

  <subsection|Lavoro per spostare una carica>

  Il lavoro necessario per spostare una carica dalla posizione
  <math|r<rsub|A>> alla posizione <math|r<rsub|B>> � pari a

  <\equation*>
    W=<big|int><rsub|r<rsub|A>><rsup|r<rsub|B>>F<rsub|t>*d*r
  </equation*>

  dove <math|F<rsub|t>> � la forza tangente che compie lo spostamento.
  Siccome <math|F<rsub|t>> � sempre tangente, abbiamo

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

  Abbiamo che l'energia potenziale associata al campo elettrico � uguale a

  <\equation*>
    U<rsub|E>=<frac|q<rsub|1>*q<rsub|2>|4*\<pi\>*\<varepsilon\><rsub|0>>*<frac|1|r>
  </equation*>

  dove <math|r> � la distanza tra le due cariche

  \;

  <subsection|Momento di dipolo elettrico>

  Dato un sistema di cariche, il momento elettrico (o momento di dipolo) �
  una grandezza vettoriale che quantifica la separazione tra le cariche
  positive e negative, ovvero la polarit� del sistema, e si misura in Coulomb
  per metro.

  Date due cariche di segno opposto e uguale modulo <math|q>, il momento
  elettrico <math|p> � definito come

  <\equation*>
    <wide|p|\<vect\>>=q*\<cdot\><wide|d|\<vect\>>
  </equation*>

  dove <math|<wide|d|\<vect\>>> � il vettore spostamento dell'uno rispetto
  all'altro, orientato dalla carica negativa alla carica positiva.

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

  Data una superficie chiusa,

  <\equation*>
    \<Phi\><rsub|S><around*|(|<wide|E|\<vect\>>|)>=<big|oint><wide|E|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=<frac|<big|sum>q<rsub|in>|\<varepsilon\><rsub|0>>
  </equation*>

  \;

  dove <math|<big|sum>q<rsub|in>> � la carica totale contenuta all'interno
  della superficie.

  In pratica, il flusso attraverso una superficie � uguale alla somma delle
  cariche interne diviso <math|\<varepsilon\><rsub|0>>. Le cariche esterne
  non danno un contributo al flusso in quanto le linee di forza entrano ed
  escono, quindi la somma dei contributi � nulla.

  <subsubsection|Scelta della superficie <math|E>>

  � fondamentale che la superficie chiusa <math|E> soddisfi una o pi� delle
  seguenti condizioni:

  <\enumerate>
    <item>Da considerazioni di simmetria si pu� arguire che il valore del
    campo elettrico deve essere costante sulla porzione di superficie

    <item>Il prodotto scalare <math|E*dA> che compare nella formula pu�
    essere espresso come un semplice prodotto algebrico <math|E*dA> in quanto
    <math|<wide|E|\<vect\>>> e <math|<wide|dA|\<vect\>>> sono paralleli.

    <item>Il prodotto scalare <math|E*dA> che compare nella formula � nullo,
    in quanto <math|<wide|E|\<vect\>>> e <math|<wide|dA|\<vect\>>> sono
    perpendicolari.

    <item>Il campo elettrico � nullo sulla porzione di superficie.
  </enumerate>

  <subsection|Relazione con il campo magnetico>

  Un campo magnetico variabile genera un campo elettrico

  <\equation*>
    <big|oint><rsub|L><around*|(|<wide|E|\<vect\>>|)>=-<frac|d|d*t>*\<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>
  </equation*>

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
  sistema carica-campo �

  <\equation*>
    \<Delta\>U=-q<rsub|1>*<big|int><rsub|A><rsup|B><wide|E|\<vect\>>*\<cdot\>d<wide|s|\<vect\>>
  </equation*>

  <subsection|Condensatore>

  <\equation*>
    C=<frac|Q|\<Delta\>V> <around*|[|<frac|C|v>=F|]>
  </equation*>

  dove <math|Q> � la carica (per convenzione quella positiva) depositata sul
  condensatore.

  L'energia potenziale del campo elettrostatico contenuta nel condensatore �
  uguale a

  <\equation*>
    U=<frac|1|2>C*\<Delta\>V=<frac|1|2>*<frac|Q<rsup|2>|C>
  </equation*>

  <subsubsection|Capacit� di un condensatore piano a facce parallele>

  <\equation*>
    C=\<varepsilon\>*<frac|S|d>
  </equation*>

  dove <math|\<varepsilon\>=\<varepsilon\><rsub|r>*\<varepsilon\><rsub|0>>

  <subsubsection|Energia in un condensatore>

  <\equation*>
    W=<frac|1|2>*C*V<rsup|2>=U
  </equation*>

  <section|Campo magnetico>

  Il campo magnetico � costituito da linee chiuse

  <subsection|Flusso magnetico attraverso una superficie>

  Il flusso magnetico <math|\<Phi\><rsub|B>> attraverso una superficie �
  definito dall'integrale di superficie

  <\equation*>
    \<Phi\><rsub|B>=<big|int><wide|B|\<vect\>>\<cdot\><wide|d*A|\<vect\>>
  </equation*>

  <subsection|Teorema di Amp�re>

  � il duale del teorema di Gauss per il campo magnetico

  La circuitazione del campo magnetico lungo una linea <math|\<gamma\>> �
  uguale a <math|\<mu\><rsub|0>> moltiplicata per la somma delle correnti
  <math|I<rsub|i>> concatenate con la linea stessa

  <\equation*>
    <big|oint><rsub|\<gamma\>>B\<cdot\>d*l=\<mu\><rsub|0>*<big|sum><rsub|i>I<rsub|i>
  </equation*>

  <subsection|Legge di Biot-Sabart>

  Il campo magnetico <math|<wide|d*B|\<vect\>>> prodotto, in un punto
  <math|P>, da un elemento <math|<wide|d*s|\<vect\>>> percorso da una
  corrente continua <math|I> �

  <\equation*>
    <wide|d*B|\<vect\>>=<frac|\<mu\><rsub|0>|4*\<pi\>><frac|I*<wide|d*s|\<vect\>>\<times\><wide|r|^>|r<rsup|2>>
  </equation*>

  dove <math|r> � la distanza del punto <math|P> dall'elemento di corrente e
  <math|<wide|r|^>> � il versore orientato da <math|<wide|d*s|\<vect\>>>
  verso il punto <math|P>. Per calcolare il campo risultante nel punto
  <math|P> � necessario integrare questa espressione vettoriale su tutta la
  distribuzione di corrente.

  <subsection|Alcuni campi magnetici salienti>

  <subsubsection|Filo rettilineo uniforme>

  Si applica nel caso di un filo rettilineo indefinito percorso da corrente
  stazionaria <math|I>. Supponendo di essere nel vuoto, il modulo di <math|B>
  � inversamente proporzionale alla distanza dal filo <math|r> secondo
  l'espressione:

  <\equation*>
    B=\<mu\><rsub|0>\<cdot\><frac|I|2*\<pi\>*r>
  </equation*>

  Si ricava dal teorema di Amp�re integrando <math|d*l> lungo la
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

  dove <math|N> � il numero totale di spire, <math|n> il numero di spire per
  unit� di lunghezza, <math|\<ell\>> � la lunghezza del solenoide

  <subsection|Alcuni flussi magnetici salienti>

  <subsubsection|Solenoide>

  <\equation*>
    \<Phi\>=B\<cdot\>S\<cdot\>N
  </equation*>

  dove <math|S> � la sezione del solenoide

  <subsection|Teorema di Amp�re-Maxwell>

  Rispetto al teorema di Amp�re tiene conto anche delle
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

  Ovvero non � possibile isolare un monopolo magnetico. Un ulteriore
  conseguenza � che il campo magnetico <math|<wide|B|\<vect\>>> �
  solenoidale, ovvero � composto da linee chiuse.

  <subsection|Particella in movimento in un campo magnetico uniforme>

  La traiettoria della particella � circolare, ed il piano del cerchio �
  perpendicolare al campo magnetico. Il raggio <math|r> della traiettoria
  circolare �

  <\equation*>
    r=<frac|m*v|q*B>
  </equation*>

  dove <math|m> � la massa della particella e <math|q> la sua carica. La
  velocit� angolare della particella carica �

  <\equation*>
    \<omega\>=<frac|q*B|m>
  </equation*>

  <subsection|Momento di dipolo magnetico>

  Il momento magnetico di un magnete � una grandezza che quantifica la forza
  che l'oggetto esercita su una corrente elettrica e la torsione che il campo
  magnetico produce interagendo con esso.

  <\equation*>
    <wide|m|\<vect\>>=I\<cdot\>S <around*|[|A\<cdot\>m<rsup|2>=J/T=Joule/Tesla|]>
  </equation*>

  La direzione � data dalla direzione positiva di attraversamento di
  <math|S>, che viene individuata tramite la regola della mano destra
  (ponendo il pollice nella direzione della corrente <math|I> che scorre
  lungo il ``contorno'' di <math|S>)

  <subsubsection|Tipologie di sostanze magnetiche>

  <\description>
    <item*|Dimagnetiche>Il momento magnetico � debole ed opposto rispetto al
    campo magnetico applicato.

    <item*|Paramagnetiche>Il momento magnetico � debole e nello stesso verso
    del campo applicato

    <item*|Ferromagnetiche>Le interazioni tra atomi provocano l'allineamento
    dei momenti magnetici e generano una forte magnetizzazione che permane
    anche rimuovendo il campo magnetico esterno.
  </description>

  <subsection|Energia potenziale magnetica>

  L'energia potenziale del sistema formato da un momento di dipolo magnetico
  in un campo magnetico �

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

  Stabilisce che la f.e.m indotta lungo una linea chiusa � direttamente
  proporzionale alla derivata temporale del flusso magnetico che attraversa
  la linea chiusa, cio�

  <\equation*>
    E=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  dove <math|\<Phi\><rsub|B>=<big|oint><wide|B|\<vect\>>\<cdot\><wide|d*A|\<vect\>>>

  <subsubsection|Forma generale>

  <\equation*>
    <big|oint><wide|E|\<vect\>>\<cdot\><wide|d*s|\<vect\>>=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  dove <math|<wide|E|\<vect\>>> � il campo elettrico non conservativo che �
  prodotto dalla variazione di flusso magnetico.

  <subsection|Legge di Lenz>

  La legge di Lenz stabilisce che la f.e.m. e la corrente indotte in un
  conduttore hanno direzioni tali da produrre un campo magnetico che si
  oppone alla variazione che le ha prodotte.

  <subsection|F.e.m. indotta dal moto>

  Quando una sbarretta conduttrice di lunghezza <math|\<ell\>> si muove con
  velocit� <math|<wide|v|\<vect\>>> attraverso un campo magnetico
  <math|<wide|B|\<vect\>>>, perpendicolare alla sbarretta e a
  <math|<wide|v|\<vect\>>>, la f.e.m. indotta dal moto nella sbarretta �

  <\equation*>
    E=-B*\<ell\>*v
  </equation*>

  <subsection|Forza di Lorentz>

  <\equation*>
    <wide|F|\<vect\>>=q*<wide|E|\<vect\>>+q*<around*|(|<wide|v|\<vect\>>\<times\><wide|B|\<vect\>>|)>
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
  nel tempo, c'� una corrente di spostamento che � definita come

  <\equation*>
    I<rsub|d>=\<varepsilon\><rsub|0>*<frac|d*\<Phi\><rsub|E>|d*t>
  </equation*>

  dove <math|\<Phi\><rsub|E>=<big|int><wide|E|\<vect\>>*\<cdot\><wide|d*A|\<vect\>>>
  � il flusso del campo elettrico

  <subsection|Vettore di Poynting>

  Il flusso di energia della radiazione elettromagnetica per unit� di area e
  per unit� di tempo � descritto dal <with|font-series|bold|vettore di
  Poynting <math|<wide|S|\<vect\>>>>

  <\equation*>
    <wide|S|\<vect\>>\<equiv\><frac|1|\<mu\>*<rsub|0>>*<around*|(|<wide|E|\<vect\>>\<times\><wide|B|\<vect\>>|)>
  </equation*>

  <section|Circuiti in corrente continua>

  <subsection|F.e.m. autoindotta>

  Quando in un circuito la corrente varia nel tempo in accordo alla legge di
  Faraday, viene indotta una f.e.m.. La f.e.m. autoindotta �

  <\equation*>
    E<rsub|L>=-L*<frac|d*I|d*t>
  </equation*>

  dove <math|L> � l'induttanza del circuito.

  <subsection|Induttanze salienti>

  <subsubsection|Bobina>

  <\equation*>
    L=<frac|N*\<Phi\><rsub|B>|I>
  </equation*>

  <subsubsection|Solendoie (in aria)>

  <\equation*>
    L=\<mu\><rsub|0>*<frac|N<rsup|2>|\<ell\>>*A
  </equation*>

  <subsection|Densit� di energia>

  La densit� di energia in un punto in cui il campo magnetico � <math|B> �

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
    \<omega\><rsub|0>=<frac|1|<sqrt|L*C>>
  </equation*>

  L'energia in un circuito <with|font-shape|italic|LC> � continuamente
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

  se la frequenza del generatore � uguale a <math|\<omega\><rsub|0>>, la
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

  La potenza media fornita da un generatore ad un circuito RLC �

  <\equation*>
    P<rsub|media>=I<rsub|eff>*\<Delta\>V<rsub|eff>*cos<around*|(|\<Phi\>|)>
  </equation*>

  un espressione equivalente �

  <\equation*>
    P<rsub|media>=I<rsup|2><rsub|eff>*R
  </equation*>

  <subsection|Trasformatore>

  <\equation*>
    \<Delta\>v<rsub|2>=<frac|N<rsub|2>|N<rsub|1>>*\<Delta\>v<rsub|1>
  </equation*>

  <chapter|Costanti>

  <\itemize>
    <item>Costante dielettrica (o permittivit�) del vuoto

    <\equation*>
      \<varepsilon\><rsub|0>=8.8542\<times\>10<rsup|-12>
      C<rsup|2>/N\<cdot\>m<rsup|2>
    </equation*>

    <item>Permeabilit� magnetica del vuoto

    <\equation*>
      \<mu\><rsub|0>=4*\<pi\>\<times\>10<rsup|-7> H/m
    </equation*>

    (necessita di revisione)

    <\equation*>
      \<mu\><rsub|0>\<cong\>1.25663706144\<times\>10<rsup|-6> H/m
    </equation*>

    si pu� anche esprimere in <math|T\<cdot\>m/A>

    <item>Costante di Coulomb

    <\equation*>
      k<rsub|e>=8.9876\<times\>10<rsup|9> N\<cdot\>m<rsup|2>/C<rsup|2>
    </equation*>

    <item>Massa dell'elettrone

    <\equation*>
      m<rsub|e>\<cong\>9.1093826\<times\>10<rsup|-31> kg
    </equation*>
  </itemize>

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
  massa <math|m> ruota attorno ad una sua estremit� si ha che

  <\equation*>
    I<rsub|estremit�>=<frac|m*L<rsup|2>|3>
  </equation*>

  altrimenti, se l'asse di rotazione � al centro

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

  Disco solido e sottile (in pratica � un cilindro spiaccicato) di raggio
  <math|r> e di massa <math|m> che ruota attorno all'asse <math|z>

  <\equation*>
    I<rsub|z>=<frac|m*r<rsup|2>|2>
  </equation*>

  <\equation*>
    I<rsub|x>=I<rsub|y>=<frac|m*r<rsup|2>|4>
  </equation*>

  <section|Cilindro>

  Superficie cilindrica sottile con estremit� aperte, di raggio <math|r> e di
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

  Tubo cilindrico con pareti spesse ed estremit� aperte, di raggio interno
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

  (una sfera cava pu� essere considerata come costituita da due pile di
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

  Con asse di rotazione all'estremit� della piastra

  <\equation*>
    I<rsub|estremit�>=<frac|m*h<rsup|2>|3>+<frac|m*w<rsup|2>|12>
  </equation*>

  Con asse di rotazione centrale

  <\equation*>
    I<rsub|centrale>=<frac|m*<around*|(|h<rsup|2>+w<rsup|2>|)>|12>
  </equation*>

  <section|Parallelepipedo>

  Parallelepipedo solido di altezza <math|h>, larghezza <math|w>, profondit�
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
  <math|L> e massa <math|m> lungo la diagonale pi� lunga.

  <\equation*>
    I<rsub|diagonale pi� lunga> =<frac|m*<around*|(|W<rsup|2>*D<rsup|2>+L<rsup|2>*D<rsup|2>+L<rsup|2>*W<rsup|2>|)>|6*<around*|(|L<rsup|2>+W<rsup|2>+D<rsup|2>|)>>
  </equation*>

  se fosse stato un cubo di lato <math|s>

  <\equation*>
    I=<frac|m*s<rsup|2>|6>
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
    <associate|par-columns|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|altro_formulario.tm>>
    <associate|auto-10|<tuple|4|1|altro_formulario.tm>>
    <associate|auto-11|<tuple|4.1|1|altro_formulario.tm>>
    <associate|auto-12|<tuple|4.1.1|1|altro_formulario.tm>>
    <associate|auto-13|<tuple|4.1.2|1|altro_formulario.tm>>
    <associate|auto-14|<tuple|2|1|altro_formulario.tm>>
    <associate|auto-15|<tuple|1|1|altro_formulario.tm>>
    <associate|auto-16|<tuple|1.1|1|altro_formulario.tm>>
    <associate|auto-17|<tuple|1.2|1|altro_formulario.tm>>
    <associate|auto-18|<tuple|1.3|1|altro_formulario.tm>>
    <associate|auto-19|<tuple|1.4|2|altro_formulario.tm>>
    <associate|auto-2|<tuple|1|1|altro_formulario.tm>>
    <associate|auto-20|<tuple|1.5|2|altro_formulario.tm>>
    <associate|auto-21|<tuple|1.6|2|altro_formulario.tm>>
    <associate|auto-22|<tuple|1.7|2|altro_formulario.tm>>
    <associate|auto-23|<tuple|1.7.1|2|altro_formulario.tm>>
    <associate|auto-24|<tuple|1.8|2|altro_formulario.tm>>
    <associate|auto-25|<tuple|1.9|2|altro_formulario.tm>>
    <associate|auto-26|<tuple|1.10|2|altro_formulario.tm>>
    <associate|auto-27|<tuple|1.11|2|altro_formulario.tm>>
    <associate|auto-28|<tuple|1.12|2|altro_formulario.tm>>
    <associate|auto-29|<tuple|1.12.1|3|altro_formulario.tm>>
    <associate|auto-3|<tuple|1.1|1|altro_formulario.tm>>
    <associate|auto-30|<tuple|1.12.2|3|altro_formulario.tm>>
    <associate|auto-31|<tuple|2|3|altro_formulario.tm>>
    <associate|auto-32|<tuple|2.1|3|altro_formulario.tm>>
    <associate|auto-33|<tuple|2.2|3|altro_formulario.tm>>
    <associate|auto-34|<tuple|2.3|3|altro_formulario.tm>>
    <associate|auto-35|<tuple|2.4|3|altro_formulario.tm>>
    <associate|auto-36|<tuple|2.4.1|3|altro_formulario.tm>>
    <associate|auto-37|<tuple|2.4.2|3|altro_formulario.tm>>
    <associate|auto-38|<tuple|2.4.3|3|altro_formulario.tm>>
    <associate|auto-39|<tuple|2.5|3|altro_formulario.tm>>
    <associate|auto-4|<tuple|1.2|1|altro_formulario.tm>>
    <associate|auto-40|<tuple|2.5.1|3|altro_formulario.tm>>
    <associate|auto-41|<tuple|2.6|3|altro_formulario.tm>>
    <associate|auto-42|<tuple|2.7|3|altro_formulario.tm>>
    <associate|auto-43|<tuple|2.8|3|altro_formulario.tm>>
    <associate|auto-44|<tuple|2.9|3|altro_formulario.tm>>
    <associate|auto-45|<tuple|2.9.1|3|altro_formulario.tm>>
    <associate|auto-46|<tuple|2.10|4|altro_formulario.tm>>
    <associate|auto-47|<tuple|2.10.1|4|altro_formulario.tm>>
    <associate|auto-48|<tuple|2.11|4|altro_formulario.tm>>
    <associate|auto-49|<tuple|2.11.1|4|altro_formulario.tm>>
    <associate|auto-5|<tuple|2|1|altro_formulario.tm>>
    <associate|auto-50|<tuple|2.12|4|altro_formulario.tm>>
    <associate|auto-51|<tuple|2.13|4|altro_formulario.tm>>
    <associate|auto-52|<tuple|2.14|4|altro_formulario.tm>>
    <associate|auto-53|<tuple|2.15|4|altro_formulario.tm>>
    <associate|auto-54|<tuple|2.16|4|altro_formulario.tm>>
    <associate|auto-55|<tuple|2.17|4|altro_formulario.tm>>
    <associate|auto-56|<tuple|3|4|altro_formulario.tm>>
    <associate|auto-57|<tuple|3.1|4|altro_formulario.tm>>
    <associate|auto-58|<tuple|3.2|4|altro_formulario.tm>>
    <associate|auto-59|<tuple|3.2.1|4|altro_formulario.tm>>
    <associate|auto-6|<tuple|2.1|1|altro_formulario.tm>>
    <associate|auto-60|<tuple|3.2.2|4|altro_formulario.tm>>
    <associate|auto-61|<tuple|3.3|4|altro_formulario.tm>>
    <associate|auto-62|<tuple|3.4|4|altro_formulario.tm>>
    <associate|auto-63|<tuple|3.4.1|4|altro_formulario.tm>>
    <associate|auto-64|<tuple|3.5|4|altro_formulario.tm>>
    <associate|auto-65|<tuple|3.5.1|4|altro_formulario.tm>>
    <associate|auto-66|<tuple|3.6|4|altro_formulario.tm>>
    <associate|auto-67|<tuple|3.6.1|4|altro_formulario.tm>>
    <associate|auto-68|<tuple|3.6.2|4|altro_formulario.tm>>
    <associate|auto-69|<tuple|3.6.3|5|altro_formulario.tm>>
    <associate|auto-7|<tuple|2.2|1|altro_formulario.tm>>
    <associate|auto-70|<tuple|3.6.4|5|altro_formulario.tm>>
    <associate|auto-71|<tuple|4|5|altro_formulario.tm>>
    <associate|auto-72|<tuple|4.1|5|altro_formulario.tm>>
    <associate|auto-73|<tuple|4.2|5|altro_formulario.tm>>
    <associate|auto-74|<tuple|4.2.1|5|altro_formulario.tm>>
    <associate|auto-75|<tuple|4.2.2|5|altro_formulario.tm>>
    <associate|auto-76|<tuple|4.3|5|altro_formulario.tm>>
    <associate|auto-77|<tuple|4.4|5|altro_formulario.tm>>
    <associate|auto-78|<tuple|4.5|5|altro_formulario.tm>>
    <associate|auto-79|<tuple|3|5|altro_formulario.tm>>
    <associate|auto-8|<tuple|3|1|altro_formulario.tm>>
    <associate|auto-80|<tuple|4|5|altro_formulario.tm>>
    <associate|auto-81|<tuple|1|5|altro_formulario.tm>>
    <associate|auto-82|<tuple|2|5|altro_formulario.tm>>
    <associate|auto-83|<tuple|3|5|altro_formulario.tm>>
    <associate|auto-84|<tuple|4|5|altro_formulario.tm>>
    <associate|auto-85|<tuple|5|5|altro_formulario.tm>>
    <associate|auto-86|<tuple|6|5|altro_formulario.tm>>
    <associate|auto-87|<tuple|7|5|altro_formulario.tm>>
    <associate|auto-88|<tuple|8|5|altro_formulario.tm>>
    <associate|auto-89|<tuple|9|6|altro_formulario.tm>>
    <associate|auto-9|<tuple|3.1|1|altro_formulario.tm>>
    <associate|auto-90|<tuple|10|6|altro_formulario.tm>>
    <associate|auto-91|<tuple|11|6|altro_formulario.tm>>
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

      <with|par-left|<quote|2tab>|1.12.1<space|2spc>Capacit� di un
      condensatore piano a facce parallele
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|2tab>|1.12.2<space|2spc>Energia in un
      condensatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Campo
      magnetico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Flusso magnetico attraverso
      una superficie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Teorema di Amp�re
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Legge di Biot-Sabart
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Alcuni campi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|2.4.1<space|2spc>Filo rettilineo uniforme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|2tab>|2.4.2<space|2spc>Toroide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|2tab>|2.4.3<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Alcuni flussi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|2tab>|2.5.1<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Teorema di Amp�re-Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Legge di Gauss per il campo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Particella in movimento in
      un campo magnetico uniforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|2.9<space|2spc>Momento di dipolo magnetico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|2tab>|2.9.1<space|2spc>Tipologie di sostanze
      magnetiche <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|2.10<space|2spc>Energia potenziale
      magnetica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|2tab>|2.10.1<space|2spc>Energia magnetica in un
      solenoide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|2.11<space|2spc>Legge di Faraday
      dell'induzione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|2.11.1<space|2spc>Forma generale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|1tab>|2.12<space|2spc>Legge di Lenz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|2.13<space|2spc>F.e.m. indotta dal moto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|2.14<space|2spc>Forza di Lorentz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1tab>|2.15<space|2spc>Equazioni di Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|1tab>|2.16<space|2spc>Corrente di spostamento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|2.17<space|2spc>Vettore di Poynting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Circuiti
      in corrente continua> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>F.e.m. autoindotta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Induttanze salienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|2tab>|3.2.1<space|2spc>Bobina
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|2tab>|3.2.2<space|2spc>Solendoie (in aria)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Densit� di energia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Circuito RL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|2tab>|3.4.1<space|2spc>Corrente nel circuito
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Circuito LC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|2tab>|3.5.1<space|2spc>Frequenza di oscillazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|1tab>|3.6<space|2spc>Circuito RLC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|2tab>|3.6.1<space|2spc>Carica sul condensatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|2tab>|3.6.2<space|2spc>Corrente efficace
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|2tab>|3.6.3<space|2spc>Impedenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <with|par-left|<quote|2tab>|3.6.4<space|2spc>Angolo di fase tra
      corrente e tensione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Circuiti
      in corrente alternata> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Frequenza di risonanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Reattanze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>>

      <with|par-left|<quote|2tab>|4.2.1<space|2spc>Reattanza induttiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>>

      <with|par-left|<quote|2tab>|4.2.2<space|2spc>Reattanza capacitiva
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Corrente e tensione efficace
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Potenza media
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Trasformatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-78>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|4<space|2spc>Momenti
      d'inerzia> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Massa
      puntiforme> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Asta>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Circonferenza>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Disco>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Cilindro>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Sfera>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Cono>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Toro>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Ellissoide>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Piastra>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Parallelepipedo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
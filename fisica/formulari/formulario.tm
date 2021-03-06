<TeXmacs|1.99.2>

<style|<tuple|book|italian>>

<\body>
  <doc-data|<doc-title|Formulario di fisica>|<doc-author|<author-data|<author-name|Gianluca
  Mondini>>>>

  <chapter|Cinematica>

  <\equation*>
    x<around*|(|t|)>=<big|int><rsub|0><rsup|t>v<around*|(|T|)>*d*T
  </equation*>

  \;

  <\equation*>
    R<rsub|x>=<frac|m<rsub|1>*r<rsub|1<rsub|x>>+m<rsub|2>*r<rsub|2<rsub|x>>+\<ldots\>+m<rsub|n>*r<rsub|n<rsub|x>>|M>=<frac|<big|sum><rsub|i=1><rsup|n>m<rsub|i>*r<rsub|i<rsub|x>>|<big|sum><rsub|i=1><rsup|n>m<rsub|i>>
  </equation*>

  \;

  <\equation*>
    M<around*|(|\<Omega\>|)>=<big|int><rsub|\<Omega\>>\<rho\><around*|(|r|)><rsub|<around*|(|densit�|)>>*d<with|font-shape|italic|V>
  </equation*>

  \;

  <\equation*>
    K<rsub|centro di massa>=<frac|1|2>*m*v<rsup|2>\<space\><space|1em><around*|[|J|]>
  </equation*>

  <\equation*>
    K<rsub|rotazione>=<frac|1|2>*m*v<rsup|2>=<frac|1|2>*m*r<rsup|2>*w<rsup|2>
  </equation*>

  a questo punto si pone <math|m*r<rsup|2>=I> e si ottiene

  <\equation*>
    K<rsub|rotazione>=<frac|1|2>*I*w<rsup|2>
  </equation*>

  \;

  <\equation*>
    K<rsub|centro di massa>=<frac|p<rsup|2>|2*m>
  </equation*>

  <\equation*>
    p=<sqrt|2*m*K<rsub|centro di massa><rsub|>>
  </equation*>

  \;

  <\equation*>
    U<rsub|vicino alla superficie><around*|(|h|)>=m*g*h
  </equation*>

  \;

  <\equation*>
    U<rsub|distanza arbitraria><around*|(|r|)>=-G*<frac|M*m|<around*|\||r|\|>>
  </equation*>

  \;

  <\equation*>
    W=\<Delta\>K<rsub|c>=<frac|1|2>*m<around*|(|v<rsub|f><rsup|2>-v<rsub|i><rsup|2>|)>
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
    \<Delta\><wide|p|\<vect\>>=<big|int><rsub|t<rsub|0>><rsup|t<rsub|1>><wide|F|\<vect\>>*dt<space|1em><around*|[|N*s|]>
  </equation*>

  <with|font-series|bold|Esempio> dovendo calcolare l'impulso esercitato su
  di un perno <math|A> � sufficiente calcolare la differenza della quantit�
  di moto finale ed iniziale del sistema (nel caso in cui <math|A> sia
  l'unica causa della riduzione della quantit� di moto)

  <\equation*>
    \<Delta\><wide|p|\<vect\>>=<wide|F|\<vect\>>*\<Delta\>t
  </equation*>

  <section|Urti>

  <subsection|Urto elastico>

  In generale, nella risoluzione di un problema d'urto completamente
  elastico, si parte dalla conservazione della <hlink|quantit� di
  moto|https://it.wikipedia.org/wiki/Quantit%C3%A0_di_moto> e
  dell'<hlink|energia cinetica|https://it.wikipedia.org/wiki/Energia_cinetica>
  prima e dopo l'urto.

  <\itemize>
    <item>La quantit� di moto del sistema si conserva per definizione di
    urto: durante un urto, infatti, � possibile considerare il sistema
    isolato a causa delle <hlink|forze impulsive|https://it.wikipedia.org/wiki/Forza_impulsiva>
    che i corpi che interagiscono si scambiano, e quindi � possibile
    trascurare le altre forze in gioco (es.
    <hlink|gravitazionale|https://it.wikipedia.org/wiki/Forza_di_gravit%C3%A0>);
  </itemize>

  <\itemize>
    <item>Per definizione di urto elastico, si deve conservare
    l'<hlink|energia meccanica|https://it.wikipedia.org/wiki/Energia_meccanica>
    totale del sistema. Considerato per� che il sistema � isolato durante
    l'urto, i potenziali delle forze esterne si trascurano e rimane
    unicamente l'energia cinetica dei corpi.
  </itemize>

  <subsection|Urto anaelastico>

  La legge di conservazione della <hlink|quantit� di
  moto|https://it.wikipedia.org/wiki/Quantit%C3%A0_di_moto> del sistema �:

  <\equation*>
    P<rsub|t>=<big|sum>M\<cdot\>v=cost
  </equation*>

  per gli <with|font-shape|italic|urti anelastici totali>, si pu� scrivere

  <\equation*>
    m<rsub|1>v*<rsub|1>+m<rsub|2>v*<rsub|2>=<around*|(|m<rsub|1>+m<rsub|2>|)>\<cdot\>V
  </equation*>

  dove <math|m<rsub|1>v<rsub|1>> e <math|m<rsub|2>*v<rsub|2>> rappresentano
  le quantit� di moto prima dell'urto rispettivamente del primo corpo di
  massa <math|m<rsub|1>> e del secondo corpo di massa <math|m<rsub|2>>,
  mentre <math|<around*|(|m<rsub|1>+m<rsub|2>|)>\<cdot\>V> � la quantit� di
  moto dell'intero sistema dopo l'urto, cio� quando i due corpi si fondono in
  un unico corpo di massa pari alla somma delle precedenti,
  <math|m<rsub|1>+m<rsub|2>>

  <math|V>, ricavabile dalla precedente espressione, rappresenta la velocit�
  con cui si muovono i due corpi insieme dopo l'urto.

  <with|font-series|bold|Energia dissipata> Se si suppone per semplicit� che
  non vi siano variazioni di energia potenziale (caso pi� comune), allora la
  perdita di energia meccanica � dovuta alla sola variazione di energia
  cinetica. L'energia cinetica dissipata durante l'urto completamente
  anaelastico, �

  <\equation*>
    -\<Delta\>K=K<rsub|i>-K<rsub|f>=<frac|1|2>*m<rsub|1>*v<rsub|1><rsup|2>+<frac|1|2>m<rsub|2>v<rsub|2>-<frac|1|2><around*|(|m<rsub|1>+m<rsub|2>|)>V<rsup|2>=<frac|1|2>m<rsub|r><around*|(|v<rsub|1>-v<rsub|2>|)><rsup|2>*
  </equation*>

  dove\ 

  <\equation*>
    m<rsub|r>=<frac|m<rsub|1>*m<rsub|2>|m<rsub|1>+m<rsub|2>>
  </equation*>

  <section|Conservazione>

  \;

  <\itemize>
    <item>La quantit� di moto non si conserva nel caso in cui esista un
    vincolo che esercita una forza impulsiva

    <item>Il momento angolare si conserva anche nel caso in cui esista un
    vincolo soltanto nel caso in cui questo abbia braccio nullo.
  </itemize>

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

  Se un oscillatore � sottoposto alla forza frenante
  <math|<wide|R|\<vect\>>=-b*<wide|v|\<vect\>>>, il suo spostamento per
  piccoli smorzamenti � descritto da

  <\equation*>
    x=A\<cdot\>e<rsup|-<frac|b|2m>*t>\<cdot\>cos<around*|(|\<omega\>*t+\<Phi\>|)>
  </equation*>

  <\equation*>
    \<omega\>=<sqrt|<frac|k|m>-<around*|(|<frac|b|2*m>|)><rsup|2>>
  </equation*>

  <section|Pendolo>

  <\equation*>
    T<rsub|pendolo semplice>=<frac|2*\<pi\>|\<omega\>>=2*\<pi\>*<sqrt|<frac|l|g>>
  </equation*>

  \;

  <\equation*>
    T<rsub|pendolo fisico>=2*\<pi\>*<sqrt|<frac|I|m*g*d>>
  </equation*>

  <section|Molla>

  \;

  <\equation*>
    F<rsub|hooke>=-k*x
  </equation*>

  \;

  <\equation*>
    U<rsub|elastica><around*|(|x|)>=<frac|1|2>*k*x<rsup|2>
  </equation*>

  <section|Moto circolare>

  <\equation*>
    <around*|\||F<rsub|centripeta>|\|>=m*<frac|v<rsub|t><rsup|2>|r>
  </equation*>

  <\equation*>
    <wide|F|\<vect\>><rsub|centripeta>=m*w<rsup|2>*r
  </equation*>

  <section|Accelerazione angolare>

  <\equation*>
    <big|sum>\<tau\>=I*\<alpha\>
  </equation*>

  <section|Momento di una forza>

  Il momento <math|<wide|\<tau\>|\<vect\>>> di una forza
  <math|<wide|F|\<vect\>>>, calcolato rispetto ad un asse passante per
  l'origine di un sistema di riferimento inerziale, � definito come

  <\equation*>
    <wide|\<tau\>|\<vect\>>=<wide|r|\<vect\>>\<times\><wide|F|\<vect\>>
  </equation*>

  <section|Momento angolare>

  Un punto materiale di quantit� di moto <math|<wide|p|\<vect\>>=m*<wide|v|\<vect\>>>
  possiede, rispetto ad un asse passante per l'origine, un momento angolare
  <math|<wide|L|\<vect\>>> dato dall'espressione

  <\equation*>
    <wide|L|\<vect\>>=<wide|r|\<vect\>>\<times\><wide|p|\<vect\>>
  </equation*>

  dove <math|<wide|r|\<vect\>>> � il vettore posizione del punto materiale
  relativo all'origine.

  Si ha anche che

  <\equation*>
    <big|sum><wide|\<tau\>|\<vect\>>=<frac|d<wide|L|\<vect\>>|d*t>
  </equation*>

  Se il corpo ruota attorno ad un asse fisso <math|z>, la componente lungo
  tale asse del momento angolare �

  <\equation*>
    L<rsub|z>=I*\<omega\>
  </equation*>

  dove <math|I> � il momento di inerzia del corpo rispetto all'asse di
  rotazione e <math|\<omega\>> la sua velocit� angolare

  \;

  <\equation*>
    P<rsub|otenza angolare>=<frac|d*W|d*t>=\<tau\>*\<omega\>
  </equation*>

  <chapter|Campo elettrico>

  ``Definizione'': Forza per unit� di carica che una carica sonda percepisce
  per la presenza delle cariche sorgenti

  <section|Forza di Coulomb>

  <\equation*>
    <around*|\||F<rsub|e>|\|>=k<rsub|e>\<cdot\><frac|<around*|\||q<rsub|1>|\|>\<cdot\><around*|\||q<rsub|2>|\|>|r<rsup|2>>
  </equation*>

  \;

  <\equation*>
    U<rsub|coulomb><around*|(|r|)>=<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>><frac|Q<rsub|<around*|(|carica
    generatrice del campo|)>>*q|<around*|\||r|\|>>
  </equation*>

  \;

  La quantit� totale di carica che scorre in un circuito in un instante di
  tempo � pari a

  <\equation*>
    Q=<big|int><rsub|0><rsup|t<rsub|1>>I<around*|(|t|)>*dt<space|1em><around*|[|C|]>
  </equation*>

  <subsection|Vettore campo elettrico>

  <\equation*>
    <wide|E|\<vect\>>\<equiv\><frac|<wide|F<rsub|e>|\<vect\>>|q<rsub|0>>*<space|1em><around*|[|<frac|N|C>|]>
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

  <subsection|Energia potenziale di un elettrone>

  (da verificare)

  La differenza di energia potenziale dell'elettrone tra quando � in <math|A>
  e quando si trova in <math|A> � data da:

  <\equation*>
    \<Delta\>U=q<rsub|e>*V<around*|(|A|)>-q<rsub|e>*V<around*|(|B|)>
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

  <section|Legge di Gauss>

  Data una superficie chiusa

  <\equation*>
    \<Phi\><rsub|S><around*|(|<wide|E|\<vect\>>|)>=<big|oint><wide|E|\<vect\>>\<cdot\>d<wide|A|\<vect\>>=<frac|<big|sum>q<rsub|interne>|\<varepsilon\><rsub|0>>
  </equation*>

  \;

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

  \;

  Un campo magnetico variabile genera un campo elettrico

  <\equation*>
    <big|oint><rsub|L><around*|(|<wide|E|\<vect\>>|)>=-<frac|d|d*t>*\<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>
  </equation*>

  \;

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

  <section|Potenziale>

  Se definiamo <math|V=0> per <math|r=+\<infty\>>, il pot. el. che una carica
  punt. genera a dist. <math|r>

  <\equation*>
    V=k<rsub|e>*<frac|q|r>
  </equation*>

  <\equation*>
    d*V=k<rsub|e>*<frac|d*q|r>
  </equation*>

  <\equation*>
    V<rsub|distribuzione continua di carica>=k<rsub|e>*<big|int><frac|d*q|r>
  </equation*>

  Il potenziale elettrico dovuto ad un insieme di cariche puntiformi si
  ottiene sommando i potenziali dovuti alle singole cariche

  <subsection|Superficie di un coduttore carico>

  La superficie di un qualsiasi conduttore carico in equilibrio
  elettrostatico � una superficie equipotenziale. Inoltre, poich� il campo
  elettrico all'interno del conduttore � nullo, il potenziale elettrico
  all'interno del conduttore � costante ovunque ed uguale al suo valore sulla
  superficie.

  <subsection|Differenza di potenziale>

  <\equation*>
    \<Delta\>V\<equiv\><frac|\<Delta\>U|q<rsub|0>>=-<big|int><rsub|A><rsup|B><wide|E|\<vect\>>\<cdot\>d<wide|s|\<vect\>><space|1em><around*|[|V=<frac|J|C>|]>
  </equation*>

  Se il campo elettrico � uniforme, preso <math|<wide|s|\<vect\>>> diretto da
  <math|A> a <math|B> si ha che\ 

  <\equation*>
    \<Delta\>V=-E<big|int><rsub|A><rsup|B>d*s=-E*d
  </equation*>

  (da verificare)

  <\equation*>
    \<Delta\>V<rsub|A*B>=<frac|q<rsub|1>|4*\<pi\>*\<varepsilon\><rsub|0>><around*|(|<frac|1|r<rsub|A>>-<frac|1|r<rsub|B>>|)>
  </equation*>

  Ponendo, per convenzione, potenziale nullo all'infinito, abbiamo che

  <\equation*>
    V=<frac|q<rsub|1>|4\<pi\>*\<varepsilon\><rsub|0>>*<frac|1|r>
    <around*|[|V=<frac|J|C>|]>
  </equation*>

  \;

  <\equation*>
    E<rsub|x>=-<frac|d*V|d*x>
  </equation*>

  <subsection|Variazione di energia potenziale>

  Quando una carica di prova positiva <math|q<rsub|0>> si sposta dal punto
  <math|<around*|(|A|)>> al punto <math|<around*|(|B|)>> in un campo
  elettrico <math|<wide|E|\<vect\>>>, la variazione di energia potenziale del
  sistema carica-campo �

  <\equation*>
    \<Delta\>U=-q<rsub|0>*<big|int><rsub|<around*|(|A|)>><rsup|<around*|(|B|)>><wide|E|\<vect\>>*\<cdot\>d<wide|s|\<vect\>>
  </equation*>

  <section|Condensatore>

  <\equation*>
    C=<frac|Q|\<Delta\>V> <around*|[|<frac|C|v>=F|]>
  </equation*>

  dove <math|Q> � la carica (per convenzione quella positiva) depositata sul
  condensatore.

  <subsection|Capacit� di condensatori salienti>

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

  \;

  <\equation*>
    I=<frac|d*Q|d*t>
  </equation*>

  \;

  <\equation*>
    I=C*<frac|d*V|d*t>
  </equation*>

  \;

  <\equation*>
    U<rsub|condensatore>=<frac|Q<rsup|2>|2*C>=<frac|1|2>*Q*\<Delta\>V=<frac|1|2>*C<around*|(|\<Delta\>V|)><rsup|2>
  </equation*>

  <chapter|Campo magnetico>

  Il campo magnetico � costituito da linee chiuse

  <\equation*>
    \<Phi\><rsub|B>=<wide|S|\<vect\>>\<cdot\><wide|B|\<vect\>>
  </equation*>

  \;

  Per conoscere il valore di <math|B<around*|(|t|)>> per <math|t=t<rsub|1>>
  se questo � dato sotto forma di derivata, � necessario integrarlo
  dall'inizio al tempo <math|t<rsub|1>>

  <\equation*>
    B<around*|(|t<rsub|1>|)>=<big|int><rsub|0><rsup|t<rsub|1>><frac|d*B|d*t><space|1em><around*|[|T|]>
  </equation*>

  \;

  Il flusso magnetico <math|\<Phi\><rsub|B>> attraverso una superficie �
  definito dall'integrale di superficie

  <\equation*>
    \<Phi\><rsub|B>=<big|int><wide|B|\<vect\>>\<cdot\>d<wide|A|\<vect\>>
  </equation*>

  <section|Teorema di Ampere>

  <\equation*>
    <big|oint><rsub|\<gamma\>>B\<cdot\>d*l=\<mu\><rsub|0>*<big|sum><rsub|i>I<rsub|i>
  </equation*>

  <section|Legge di Biot-Savart>

  Il campo magnetico <math|<wide|d*B|\<vect\>>> prodotto, in un punto
  <math|P>, da un elemento <math|<wide|d*s|\<vect\>>> percorso da una
  corrente continua <math|I> �

  <\equation*>
    <wide|d*B|\<vect\>>=<frac|\<mu\><rsub|0>|4*\<pi\>><frac|I*d<wide|s|\<vect\>>\<times\><wide|r|^>|r<rsup|2>>
  </equation*>

  dove <math|r> � la distanza del punto <math|P> dall'elemento di corrente e
  <math|<wide|r|^>> � il versore orientato da <math|<wide|d*s|\<vect\>>>
  verso il punto <math|P>. Per calcolare il campo risultante nel punto
  <math|P> � necessario integrare questa espressione vettoriale su tutta la
  distribuzione di corrente.

  <subsection|Fili paralleli>

  Il modulo della forza magnetica per unit� di lunghezza che si esercita tra
  due fili paralleli distanti <math|a> fra loro e percorsi dalle correnti
  <math|I<rsub|1>> e <math|I<rsub|2>> �\ 

  <\equation*>
    <frac|F<rsub|b>|\<ell\>>=<frac|\<mu\><rsub|0>*I<rsub|1>*I<rsub|2>|2*\<pi\>*a>
  </equation*>

  <subsection|Alcuni campi magnetici salienti>

  <subsubsection|Filo rettilineo uniforme>

  Si applica nel caso di un filo rettilineo indefinito percorso da corrente
  stazionaria <math|I>.

  <\equation*>
    B<rsub|<around*|(|nel vuoto|)>>=\<mu\><rsub|0>\<cdot\><frac|I|2*\<pi\>*r>
  </equation*>

  \;

  <\equation*>
    B<rsub|toroide>=<frac|\<mu\><rsub|0>*N*I|2*\<pi\>*r>
  </equation*>

  \;

  <\equation*>
    B<rsub|solenoide>=\<mu\><rsub|0>*<frac|N<rsub|<around*|(|totale di
    spire|)>>|\<ell\>>I=\<mu\><rsub|0>*n<rsub|<around*|(|spire per unit� di
    lunghezza|)>>*I<space|1em><around*|[|T|]>
  </equation*>

  <subsection|Alcuni flussi magnetici salienti>

  <subsubsection|Solenoide>

  <\equation*>
    \<Phi\><rsub|solenoide>=B\<cdot\>S<rsub|<around*|(|sezione|)>>\<cdot\>N
  </equation*>

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

  Il flusso magnetico totale che attraversa una superficie chiusa � sempre
  nullo.

  <\equation*>
    \<Phi\><rsub|S><around*|(|<wide|B|\<vect\>>|)>=0
  </equation*>

  Ovvero non � possibile isolare un monopolo magnetico. Un ulteriore
  conseguenza � che il campo magnetico <math|<wide|B|\<vect\>>> �
  solenoidale, ovvero � composto da linee chiuse.

  <subsection|Particella in movimento in un campo magnetico uniforme>

  (da verificare)

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

  <\equation*>
    U=-<wide|\<mu\>|\<vect\>>\<cdot\><wide|B|\<vect\>>
  </equation*>

  \;

  <\equation*>
    U<rsub|solenoide>=<frac|1|2>*L*i<rsup|2> <around*|[|J|]>
  </equation*>

  <section|Legge di Faraday dell'induzione>

  Stabilisce che la f.e.m indotta lungo una linea chiusa � direttamente
  proporzionale alla derivata temporale del flusso magnetico che attraversa
  la linea chiusa, cio�

  <\equation*>
    \<varepsilon\>=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  dove <math|\<Phi\><rsub|B>=<big|oint><wide|B|\<vect\>>\<cdot\><wide|d*A|\<vect\>>>

  Ci sono diversi modi con cui una forza elettromotrice pu� essere indotta in
  un circuito:

  <\itemize>
    <item>quando il modulo di <math|<wide|B|\<vect\>>> varia nel tempo;

    <item>quando varia la superficie racchiusa dal circuito;

    <item>quando varia l'angolo <math|\<theta\>> fra <math|<wide|B|\<vect\>>>
    e la normale alla superficie del circuito;

    <item>quando si verifica una qualsiasi combinazione dei casi precedenti.
  </itemize>

  <subsubsection|Forma generale>

  <\equation*>
    <big|oint><wide|E|\<vect\>>\<cdot\><wide|d*s|\<vect\>>=-<frac|d*\<Phi\><rsub|B>|d*t>
  </equation*>

  dove <math|<wide|E|\<vect\>>> � il campo elettrico non conservativo che �
  prodotto dalla variazione di flusso magnetico.

  <\equation*>
    \<varepsilon\><rsub|bobina>=-N*<frac|d\<Phi\><rsub|B>|d*t>
  </equation*>

  \;

  <\equation*>
    \<Delta\>V=E*\<ell\>=B*\<ell\>*v
  </equation*>

  <section|Legge di Lenz>

  La legge di Lenz stabilisce che la f.e.m. e la corrente indotte in un
  conduttore hanno direzioni tali da produrre un campo magnetico che si
  oppone alla variazione che le ha prodotte.

  <section|Forza su una carica/forza di Lorentz>

  <\equation*>
    <wide|F|\<vect\>><rsub|B>=q*<around*|(|<wide|v|\<vect\>>*\<times\><wide|B|\<vect\>>|)>
  </equation*>

  Per determinare la direzione: pugno chiuso con pollice diretto verso
  <math|<wide|F<rsub|B>|\<vect\>>>, esterno della mano verso
  <math|<wide|v|\<vect\>>> e l'interno verso <math|<wide|B|\<vect\>>>

  <\equation*>
    <wide|F|\<vect\>>=<wide|F|\<vect\>><rsub|E>+<wide|F|\<vect\>><rsub|B>=q*<wide|E|\<vect\>>+q*<around*|(|<wide|v|\<vect\>>\<times\><wide|B|\<vect\>>|)>
  </equation*>

  <\equation*>
    <around*|\||F<rsub|B>|\|>=<around*|\||q|\|>*v*B*sin<around*|(|\<theta\><rsub|angolo
    pi� piccolo tra <wide|v|\<vect\>> e <wide|B|\<vect\>>> |)>
  </equation*>

  \;

  <\equation*>
    <wide|F<rsub|B><rsub|>|\<vect\>>=I*<around*|(|<wide|d|\<vect\>>\<times\><wide|B|\<vect\>>|)>
  </equation*>

  <subsection|Forza agente su un conduttore rettilineo>

  Se un conduttore rettilineo di lunghezza <math|L> � percorso da una
  corrente <math|I>, la forza che agisce sul conduttore immerso in un campo
  magnetico uniforme <math|<wide|B|\<vect\>>> �

  <\equation*>
    <wide|F<rsub|B>|\<vect\>>=I*<wide|L|\<vect\>>\<times\><wide|B|\<vect\>>
  </equation*>

  <math|<wide|L|\<vect\>>> � orientato nel verso della corrente <math|I>

  \;

  <subsection|Forza agente su un filo di forma arbitraria>

  Se un filo di forma arbitraria, percorso da una corrente <math|I>, �
  immerso in un campo magnetico, la forza che agisce su un elemento
  infinitesimo <math|<wide|d*s|\<vect\>>> �

  <\equation*>
    d<wide|F<rsub|B>|\<vect\>>=I*<wide|d*s|\<vect\>>\<times\><wide|B|\<vect\>>
  </equation*>

  Per determinare la forza totale agente sul filo si deve integrare
  l'equazione precedente, ricordando che sia <math|<wide|B|\<vect\>>> che
  <math|<wide|d*s|\<vect\>>> possono variare da punto a punto

  <subsection|Momento meccanico>

  Il momento meccanico <math|<wide|\<tau\>|\<vect\>>> delle forze magnetiche
  esercitato su una spira percorsa da corrente immersa in un campo magnetico
  uniforme <math|<wide|B|\<vect\>>> �

  <\equation*>
    <wide|\<tau\>|\<vect\>>=<wide|\<mu\>|\<vect\>>\<times\><wide|B|\<vect\>>
  </equation*>

  <section|Equazioni di Maxwell>

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

  <section|Corrente di spostamento>

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

  \;

  <subsection|Momento di dipolo magnetico>

  Il momento magnetico di un magnete � una grandezza che quantifica la forza
  che l'oggetto esercita su una corrente elettrica e la torsione che il campo
  magnetico produce interagendo con esso.

  <\equation*>
    <wide|\<mu\>|\<vect\>>\<equiv\>I<wide|A|\<vect\>><space|1em>
    <around*|[|A\<cdot\>m<rsup|2>=J/T=Joule/Tesla|]>
  </equation*>

  La direzione � data dalla direzione positiva di attraversamento di
  <math|S>, che viene individuata tramite la regola della mano destra
  (ponendo il pollice nella direzione della corrente <math|I> che scorre
  lungo il ``contorno'' di <math|S>)

  \;

  <subsection|Forza magnetica su di una particella>

  La forza magnetica che agisce su una carica <math|q> che si muove con
  velocit� <math|<wide|v|\<vect\>>> in un campo <math|<wide|B|\<vect\>>> �

  <\equation*>
    <wide|F<rsub|B>|\<vect\>>=q*<wide|v|\<vect\>>*\<times\><wide|B|\<vect\>>
  </equation*>

  La forza magnetica � perpendicolare sia alla velocit� della particella che
  al campo magnetico. Il modulo della forza magnetica �

  <\equation*>
    <around*|\||F<rsub|B>|\|>=<around*|\||q|\|>*v*B*sin<around*|(|\<theta\>|)>
  </equation*>

  dove <math|\<theta\>> � l'angolo pi� piccolo tra <math|<wide|v|\<vect\>>> e
  <math|<wide|B|\<vect\>>>

  <section|Induttanza>

  <\equation*>
    \<Phi\>=\<mu\><frac|N<rsup|2>*S|\<ell\>>*I
  </equation*>

  <\equation*>
    L=\<mu\>*N<rsup|2>*S*<frac|1|\<ell\>>
  </equation*>

  <\equation*>
    U=<frac|1|2>*L*i<rsup|2><space|1em><around*|[|J|]>
  </equation*>

  <\equation*>
    v<around*|(|t|)>=L*<frac|d*i<around*|(|t|)>|d*t>
  </equation*>

  <chapter|Circuiti elettrici>

  <section|Conduttore>

  <\equation*>
    I<rsub|corrente>=<frac|d*Q|d*t>
  </equation*>

  \;

  <\equation*>
    J<rsub|<around*|(|densit� di corrente|)>>=<frac|I|A>
  </equation*>

  <\equation*>
    J=\<sigma\>*E=<frac|1|\<rho\>>E
  </equation*>

  <subsection|Potenza>

  <\equation*>
    \<cal-P\>=I*\<Delta\>V=I<rsup|2>*R=<frac|<around*|(|\<Delta\>V|)><rsup|2>|R>
  </equation*>

  <section|Circuiti in corrente continua>

  \;

  <\equation*>
    P<rsub|su una resistenza>=<big|int><rsub|0><rsup|t>R*I<around*|(|t|)><rsup|2>*d*t
  </equation*>

  <subsection|Valore della resistenza>

  <\equation*>
    R=<frac|\<rho\>*L<rsub|<around*|(|lunghezza del
    conduttore|)>>|S<rsub|<around*|(|sezione del conduttore|)>>>
  </equation*>

  Se non si trascurano gli effetti termici si ha che

  <\equation*>
    \<rho\>=\<rho\><rsub|0>*<around*|[|1+\<alpha\><around*|(|T-T<rsub|0>|)>|]>
  </equation*>

  <subsection|F.e.m. autoindotta>

  Quando in un circuito la corrente varia nel tempo in accordo alla legge di
  Faraday, viene indotta una f.e.m.. La f.e.m. autoindotta �

  <\equation*>
    E<rsub|L>=-L*<frac|d*I|d*t>
  </equation*>

  dove <math|L> � l'induttanza del circuito.

  <subsection|Induttanze salienti>

  <\equation*>
    L<rsub|bobina>=<frac|N*\<Phi\><rsub|B>|I><space|1em><around*|[|H=<frac|V\<cdot\>s|A>|]>
  </equation*>

  <\equation*>
    L<rsub|solenoide>=\<mu\><rsub|0>*<frac|N<rsup|2>|\<ell\>>*A
  </equation*>

  <subsection|Mutua induttanza>

  La mutua induttanza di un sistema di due bobine �

  <\equation*>
    M<rsub|1 2>=<frac|N<rsub|2>*\<Phi\><rsub|1 2>|I<rsub|1>>=M<rsub|2
    1>=<frac|N<rsub|1>*\<Phi\><rsub|2 1>|I<rsub|2>>=M
  </equation*>

  La mutua induttanza permette di legare la f.e.m. indotta in una bobina alla
  derivata delal corrente che scorre nella bobina vicina, facendo uso delle
  espressioni

  <\equation*>
    \<varepsilon\><rsub|2>=-M<rsub|1 2>*<frac|d*I<rsub|1>|d*t><space|1em>\<varepsilon\><rsub|1>=-M<rsub|2
    1>*<frac|d*I<rsub|2>|d*t>
  </equation*>

  <subsection|Densit� di energia>

  La densit� di energia in un punto in cui il campo magnetico � <math|B> �

  <\equation*>
    u<rsub|B>=<frac|B<rsup|2>|2*\<mu\><rsub|0>>
  </equation*>

  <section|Circuito RC>

  <subsection|Condensatore (carica)>

  <\equation*>
    v<around*|(|t|)>=v<rsub|0>*<around*|(|1-e<rsup|-<frac|t|\<tau\>>>|)>
  </equation*>

  <\equation*>
    q<around*|(|t|)>=Q<around*|(|1-e<rsup|-<frac|t|RC>>|)><text|>
  </equation*>

  La corrente nel circuito �

  <\equation*>
    I<around*|(|t|)>=<frac|E|R>*e<rsup|-<frac|t|RC>>
  </equation*>

  <subsection|Condensatore (scarica)>

  <\equation*>
    q<around*|(|t|)>=Q*e<rsup|-<frac|t|RC>>
  </equation*>

  <\equation*>
    I<around*|(|t|)>=-I<rsub|i>*e<rsup|-<frac|t|RC>>
  </equation*>

  dove <math|I<rsub|i>=I<rsub|iniziale>=Q/R*C>

  <section|Circuito RL>

  <\equation*>
    I<rsub|circuito>=<frac|\<varepsilon\>|R><around*|(|1-e<rsup|-t/\<tau\>>|)>
  </equation*>

  dove <math|\<tau\>=L/R> . Se la batteria che generava <math|\<varepsilon\>>
  viene sostituita con un filo di resistenza trascurabile, la corrente
  diminuisce esponenzialmente nel tempo con la legge

  <\equation*>
    I<rsub|circuito>=<frac|\<varepsilon\>|R>*e<rsup|-t/\<tau\>>
  </equation*>

  <section|Circuito LC>

  <subsubsection|Frequenza di oscillazione>

  <\equation*>
    \<omega\><rsub|0>=<frac|1|<sqrt|L*C>>
  </equation*>

  L'energia in un circuito <with|font-shape|italic|LC> � continuamente
  convertita tra energia immagazzinata nel condesantore ed energia
  immagazzinata nell'induttore.

  <section|Circuito RLC>

  <\equation*>
    Q<rsub|condensatore>=Q<rsub|max>\<cdot\>*e<rsup|-R\<cdot\>t/2L>\<cdot\>cos<around*|(|\<omega\><rsub|d>*t|)>
  </equation*>

  <\equation*>
    \<omega\><rsub|d>=<around*|[|<frac|1|L*C>-<around*|(|<frac|R|2*L>|)><rsup|2>|]><rsup|<frac*|1|2>>
  </equation*>

  <\equation*>
    I<rsub|eff>=<frac|\<Delta\>V<rsub|eff>|<sqrt|R<rsup|2>+<around*|(|X<rsub|L>-X<rsub|C>|)><rsup|2>>>
  </equation*>

  <\equation*>
    Z<rsub|<around*|(|impedenza|)>>\<equiv\><sqrt|R<rsup|2>+<around*|(|X<rsub|L>-X<rsub|C>|)><rsup|2>>
  </equation*>

  <\equation*>
    \<Phi\><rsub|<around*|(|fase tra corrente e
    tensione|)>>=tan<rsup|-1><around*|(|<frac|X<rsub|L>-X<rsub|C>|R>|)>
  </equation*>

  <section|Circuiti in corrente alternata>

  <subsection|Frequenza di risonanza>

  <\equation*>
    \<omega\><rsub|0>=<frac|1|<sqrt|L*C>>
  </equation*>

  se la frequenza del generatore � uguale a <math|\<omega\><rsub|0>>, la
  corrente raggiunge il suo valore massimo

  \;

  <\equation*>
    X<rsub|L <around*|(|reattanza induttiva|)>>=\<omega\>*L<space|1em><around*|[|\<Omega\>|]>
  </equation*>

  \;

  <\equation*>
    X<rsub|C <around*|(|reattanza capacitiva|)>>=<frac|1|\<omega\>*C><space|1em><around*|[|\<Omega\>|]>
  </equation*>

  \;

  <\equation*>
    I<rsub|eff>=<frac|I<rsub|max>|<sqrt|2>>=0.707\<cdot\>I<rsub|max>
  </equation*>

  <\equation*>
    \<Delta\>V<rsub|eff>=<frac|\<Delta\>V<rsub|max>|<sqrt|2>>=0.707\<cdot\>\<Delta\>V<rsub|max>
  </equation*>

  \;

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

    <\equation*>
      \<mu\><rsub|0>\<cong\>1.25663706144\<times\>10<rsup|-6> H/m
    </equation*>

    si pu� anche esprimere in <math|T\<cdot\>m/A>

    <item>Costante di Coulomb

    <\equation*>
      k<rsub|e>=8.9876\<times\>10<rsup|9> N\<cdot\>m<rsup|2>/C<rsup|2>
    </equation*>

    \ si pu� indicare anche come <math|<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>>

    <item>Massa dell'elettrone

    <\equation*>
      m<rsub|e>\<cong\>9.1093826\<times\>10<rsup|-31> kg
    </equation*>

    <item>Massa della terra

    <\equation*>
      5.98*\<times\>10<rsup|24> kg
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

  <section|Sistema punti materiali>

  <\equation*>
    I<rsub|z>=<big|sum><rsub|i=1><rsup|n>m<rsub|1>r<rsub|1><rsup|2>
  </equation*>

  <section|Corpo rigido>

  <\equation*>
    I<rsub|z>=<big|int><rsub|V>\<rho\>*r<rsup|2>*d*V
  </equation*>

  <section|Teorema degli assi paralleli>

  Il momento di inerzia rispetto ad un asse <math|a>, parallelo ad un altro
  <math|c> passante per il centro di massa, si ottiene sommando al momento di
  inerzia iniziale rispettto a <math|c> il prodotto tra la massa del corpo
  stesso e il quadrato della distanza tra gli assi <math|c> ed <math|a>

  <chapter|Misto>

  <section|Prodotto vettore>

  Il prodotto vettoriale <math|<wide|A|\<vect\>>\<times\><wide|B|\<vect\>>> �
  il vettore <math|<wide|C|\<vect\>>> avente modulo
  <math|C=A*B*sin\<theta\>>. Il vettore ha direzione perpendicolare al piano
  formato da A e B e il suo verso � determinato dalla regola della mano
  destra

  \;

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
    <associate|page-medium|papyrus>
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
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|1.5|5>>
    <associate|auto-100|<tuple|8.1|25>>
    <associate|auto-101|<tuple|8.1|25>>
    <associate|auto-102|<tuple|8.1|26>>
    <associate|auto-103|<tuple|8.1|26>>
    <associate|auto-104|<tuple|8.1|26>>
    <associate|auto-105|<tuple|8.1|26>>
    <associate|auto-106|<tuple|8.1|26>>
    <associate|auto-107|<tuple|8.1|26>>
    <associate|auto-108|<tuple|7.10|27>>
    <associate|auto-109|<tuple|7.11|27>>
    <associate|auto-11|<tuple|1.6|5>>
    <associate|auto-110|<tuple|8|14>>
    <associate|auto-111|<tuple|8.1|14>>
    <associate|auto-112|<tuple|8.1|15>>
    <associate|auto-113|<tuple|8.1|15>>
    <associate|auto-114|<tuple|8.1|15>>
    <associate|auto-115|<tuple|8.1|15>>
    <associate|auto-116|<tuple|8.1|15>>
    <associate|auto-117|<tuple|8.1|15>>
    <associate|auto-118|<tuple|8.1|15>>
    <associate|auto-119|<tuple|8.1|15>>
    <associate|auto-12|<tuple|1.7|5>>
    <associate|auto-120|<tuple|8.1|15>>
    <associate|auto-121|<tuple|8.1|16>>
    <associate|auto-122|<tuple|8.1|16>>
    <associate|auto-123|<tuple|8.1|16>>
    <associate|auto-124|<tuple|8.1|16>>
    <associate|auto-125|<tuple|8.1|16>>
    <associate|auto-126|<tuple|8.1|16>>
    <associate|auto-127|<tuple|8.1|16>>
    <associate|auto-128|<tuple|8.1|16>>
    <associate|auto-129|<tuple|8.1|17>>
    <associate|auto-13|<tuple|1.8|5>>
    <associate|auto-130|<tuple|8|17>>
    <associate|auto-131|<tuple|8.1|17>>
    <associate|auto-132|<tuple|8.1|17>>
    <associate|auto-133|<tuple|8.1|17>>
    <associate|auto-134|<tuple|8.1|18>>
    <associate|auto-135|<tuple|8.1|18>>
    <associate|auto-136|<tuple|8.1|18>>
    <associate|auto-137|<tuple|8|18>>
    <associate|auto-138|<tuple|8.1|?>>
    <associate|auto-139|<tuple|8.1|?>>
    <associate|auto-14|<tuple|1.9|5>>
    <associate|auto-140|<tuple|8.1|?>>
    <associate|auto-141|<tuple|8.1|?>>
    <associate|auto-142|<tuple|8.1|?>>
    <associate|auto-143|<tuple|8.1|?>>
    <associate|auto-144|<tuple|8.1|?>>
    <associate|auto-145|<tuple|8.1|?>>
    <associate|auto-15|<tuple|1.10|5>>
    <associate|auto-16|<tuple|2|5>>
    <associate|auto-17|<tuple|2.1|7>>
    <associate|auto-18|<tuple|2.1.1|7>>
    <associate|auto-19|<tuple|2.1.2|7>>
    <associate|auto-2|<tuple|1.1|3>>
    <associate|auto-20|<tuple|2.1.3|7>>
    <associate|auto-21|<tuple|2.1.4|7>>
    <associate|auto-22|<tuple|2.1.5|7>>
    <associate|auto-23|<tuple|2.1.6|8>>
    <associate|auto-24|<tuple|2.2|8>>
    <associate|auto-25|<tuple|2.3|8>>
    <associate|auto-26|<tuple|2.3.1|8>>
    <associate|auto-27|<tuple|2.3.2|9>>
    <associate|auto-28|<tuple|2.3.3|9>>
    <associate|auto-29|<tuple|2.4|9>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-30|<tuple|2.4.1|9>>
    <associate|auto-31|<tuple|3|9>>
    <associate|auto-32|<tuple|3.1|11>>
    <associate|auto-33|<tuple|3.2|11>>
    <associate|auto-34|<tuple|3.2.1|11>>
    <associate|auto-35|<tuple|3.2.2|11>>
    <associate|auto-36|<tuple|3.2.2.1|11>>
    <associate|auto-37|<tuple|3.2.3|11>>
    <associate|auto-38|<tuple|3.2.3.1|11>>
    <associate|auto-39|<tuple|3.2.4|11>>
    <associate|auto-4|<tuple|1.2.1|4>>
    <associate|auto-40|<tuple|3.2.5|12>>
    <associate|auto-41|<tuple|3.2.6|12>>
    <associate|auto-42|<tuple|3.2.6.1|12>>
    <associate|auto-43|<tuple|3.2.7|12>>
    <associate|auto-44|<tuple|3.3|12>>
    <associate|auto-45|<tuple|3.3.0.1|12>>
    <associate|auto-46|<tuple|3.4|13>>
    <associate|auto-47|<tuple|3.5|13>>
    <associate|auto-48|<tuple|3.5.1|13>>
    <associate|auto-49|<tuple|3.5.2|13>>
    <associate|auto-5|<tuple|1.2.2|4>>
    <associate|auto-50|<tuple|3.5.3|13>>
    <associate|auto-51|<tuple|3.6|13>>
    <associate|auto-52|<tuple|3.7|13>>
    <associate|auto-53|<tuple|3.7.1|14>>
    <associate|auto-54|<tuple|3.7.2|14>>
    <associate|auto-55|<tuple|3.7.3|14>>
    <associate|auto-56|<tuple|3.8|14>>
    <associate|auto-57|<tuple|4|14>>
    <associate|auto-58|<tuple|4.1|15>>
    <associate|auto-59|<tuple|4.1.1|15>>
    <associate|auto-6|<tuple|1.3|4>>
    <associate|auto-60|<tuple|4.2|15>>
    <associate|auto-61|<tuple|4.2.1|15>>
    <associate|auto-62|<tuple|4.2.2|15>>
    <associate|auto-63|<tuple|4.2.3|15>>
    <associate|auto-64|<tuple|4.2.4|15>>
    <associate|auto-65|<tuple|4.2.5|15>>
    <associate|auto-66|<tuple|4.3|16>>
    <associate|auto-67|<tuple|4.3.1|16>>
    <associate|auto-68|<tuple|4.3.2|16>>
    <associate|auto-69|<tuple|4.4|16>>
    <associate|auto-7|<tuple|1.4|4>>
    <associate|auto-70|<tuple|4.5|16>>
    <associate|auto-71|<tuple|4.5.0.1|16>>
    <associate|auto-72|<tuple|4.6|16>>
    <associate|auto-73|<tuple|4.7|16>>
    <associate|auto-74|<tuple|4.7.1|17>>
    <associate|auto-75|<tuple|4.7.2|17>>
    <associate|auto-76|<tuple|5|17>>
    <associate|auto-77|<tuple|6|19>>
    <associate|auto-78|<tuple|6.1|21>>
    <associate|auto-79|<tuple|6.2|21>>
    <associate|auto-8|<tuple|1.4.1|4>>
    <associate|auto-80|<tuple|7|21>>
    <associate|auto-81|<tuple|7.1|23>>
    <associate|auto-82|<tuple|7.2|23>>
    <associate|auto-83|<tuple|7.3|23>>
    <associate|auto-84|<tuple|7.4|23>>
    <associate|auto-85|<tuple|7.5|23>>
    <associate|auto-86|<tuple|7.6|23>>
    <associate|auto-87|<tuple|7.7|24>>
    <associate|auto-88|<tuple|7.8|24>>
    <associate|auto-89|<tuple|7.9|24>>
    <associate|auto-9|<tuple|1.4.2|5>>
    <associate|auto-90|<tuple|7.10|24>>
    <associate|auto-91|<tuple|7.11|24>>
    <associate|auto-92|<tuple|7.12|24>>
    <associate|auto-93|<tuple|7.13|25>>
    <associate|auto-94|<tuple|7.14|25>>
    <associate|auto-95|<tuple|8|23>>
    <associate|auto-96|<tuple|8.1|25>>
    <associate|auto-97|<tuple|8.1|25>>
    <associate|auto-98|<tuple|8.1|25>>
    <associate|auto-99|<tuple|8.1|25>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal||<pageref|auto-16>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Cinematica>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Impulso <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      1.2<space|2spc>Urti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <with|par-left|<quote|1tab>|1.2.1<space|2spc>Urto elastico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.2.2<space|2spc>Urto anaelastico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      1.3<space|2spc>Conservazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      1.4<space|2spc>Moto oscillatorio <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      <with|par-left|<quote|1tab>|1.4.1<space|2spc>Energia cinetica e
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.4.2<space|2spc>Forza frenante
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      1.5<space|2spc>Pendolo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      1.6<space|2spc>Molla <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      1.7<space|2spc>Moto circolare <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      1.8<space|2spc>Accelerazione angolare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      1.9<space|2spc>Momento di una forza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      1.10<space|2spc>Momento angolare <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Campo
      elettrico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      2.1<space|2spc>Forza di Coulomb <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      <with|par-left|<quote|1tab>|2.1.1<space|2spc>Vettore campo elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|2.1.2<space|2spc>Lavoro per spostare una
      carica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|2.1.3<space|2spc>Energia potenziale di un
      elettrone <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|2.1.4<space|2spc>Energia potenziale
      elettrica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|2.1.5<space|2spc>Momento di dipolo
      elettrico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|2.1.6<space|2spc>Flusso elettrico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      2.2<space|2spc>Legge di Gauss <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      2.3<space|2spc>Potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      <with|par-left|<quote|1tab>|2.3.1<space|2spc>Superficie di un coduttore
      carico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|2.3.2<space|2spc>Differenza di potenziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|2.3.3<space|2spc>Variazione di energia
      potenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      2.4<space|2spc>Condensatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      <with|par-left|<quote|1tab>|2.4.1<space|2spc>Capacit� di condensatori
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Campo
      magnetico> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.5fn>

      3.1<space|2spc>Teorema di Ampere <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      3.2<space|2spc>Legge di Biot-Savart
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>

      <with|par-left|<quote|1tab>|3.2.1<space|2spc>Fili paralleli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|3.2.2<space|2spc>Alcuni campi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|2tab>|3.2.2.1<space|2spc>Filo rettilineo uniforme
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|3.2.3<space|2spc>Alcuni flussi magnetici
      salienti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|2tab>|3.2.3.1<space|2spc>Solenoide
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|3.2.4<space|2spc>Teorema di Amp�re-Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|3.2.5<space|2spc>Legge di Gauss per il
      campo magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|3.2.6<space|2spc>Particella in movimento in
      un campo magnetico uniforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|3.2.6.1<space|2spc>Tipologie di sostanze
      magnetiche <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|3.2.7<space|2spc>Energia potenziale
      magnetica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      3.3<space|2spc>Legge di Faraday dell'induzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>

      <with|par-left|<quote|2tab>|3.3.0.1<space|2spc>Forma generale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      3.4<space|2spc>Legge di Lenz <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      3.5<space|2spc>Forza su una carica/forza di Lorentz
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>

      <with|par-left|<quote|1tab>|3.5.1<space|2spc>Forza agente su un
      conduttore rettilineo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|1tab>|3.5.2<space|2spc>Forza agente su un filo di
      forma arbitraria <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|3.5.3<space|2spc>Momento meccanico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      3.6<space|2spc>Equazioni di Maxwell
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>

      3.7<space|2spc>Corrente di spostamento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      <with|par-left|<quote|1tab>|3.7.1<space|2spc>Vettore di Poynting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|3.7.2<space|2spc>Momento di dipolo
      magnetico <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|3.7.3<space|2spc>Forza magnetica su di una
      particella <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      3.8<space|2spc>Induttanza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Circuiti
      elettrici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58><vspace|0.5fn>

      4.1<space|2spc>Conduttore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>

      <with|par-left|<quote|1tab>|4.1.1<space|2spc>Potenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      4.2<space|2spc>Circuiti in corrente continua
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>

      <with|par-left|<quote|1tab>|4.2.1<space|2spc>Valore della resistenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|1tab>|4.2.2<space|2spc>F.e.m. autoindotta
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|4.2.3<space|2spc>Induttanze salienti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|1tab>|4.2.4<space|2spc>Mutua induttanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|1tab>|4.2.5<space|2spc>Densit� di energia
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      4.3<space|2spc>Circuito RC <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>

      <with|par-left|<quote|1tab>|4.3.1<space|2spc>Condensatore (carica)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|1tab>|4.3.2<space|2spc>Condensatore (scarica)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      4.4<space|2spc>Circuito RL <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>

      4.5<space|2spc>Circuito LC <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      <with|par-left|<quote|2tab>|4.5.0.1<space|2spc>Frequenza di
      oscillazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      4.6<space|2spc>Circuito RLC <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>

      4.7<space|2spc>Circuiti in corrente alternata
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>

      <with|par-left|<quote|1tab>|4.7.1<space|2spc>Frequenza di risonanza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <with|par-left|<quote|1tab>|4.7.2<space|2spc>Trasformatore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Costanti>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Formule
      geometriche> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-78><vspace|0.5fn>

      6.1<space|2spc>Sfera <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79>

      6.2<space|2spc>Piramide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Momenti
      d'inerzia> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81><vspace|0.5fn>

      7.1<space|2spc>Massa puntiforme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>

      7.2<space|2spc>Asta <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>

      7.3<space|2spc>Circonferenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>

      7.4<space|2spc>Disco <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85>

      7.5<space|2spc>Cilindro <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>

      7.6<space|2spc>Sfera <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87>

      7.7<space|2spc>Cono <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88>

      7.8<space|2spc>Toro <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89>

      7.9<space|2spc>Ellissoide <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90>

      7.10<space|2spc>Piastra <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>

      7.11<space|2spc>Parallelepipedo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92>

      7.12<space|2spc>Sistema punti materiali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93>

      7.13<space|2spc>Corpo rigido <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>

      7.14<space|2spc>Teorema degli assi paralleli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Misto>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96><vspace|0.5fn>

      8.1<space|2spc>Prodotto vettore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>
    </associate>
  </collection>
</auxiliary>
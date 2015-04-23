<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Risoluzione degli esercizi di Analisi
  II>|<doc-author|<author-data|<author-name|Mondini Gianluca e di chiunque
  altro mi aiuti>>>>

  <subsection|Piano tangente>

  <subsubsection|Piano tangente a superficie cartesiana>

  <\equation*>
    z=f<around*|(|x<rsub|0>,y<rsub|0>|)>+f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x-x<rsub|0>|)>+f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y-y<rsub|0>|)>
  </equation*>

  <subsection|Gradiente>

  Il gradiente di una funzione � il vettore che ha come componenti le
  derivate parziali della funzione stessa.

  <subsection|Derivata parziale>

  � una derivata direzionale lungo gli assi.

  Una funzione � derivabile parzialmente rispetto alla variabile <math|x> nel
  punto <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> se esiste finito il limite
  in una variabile:

  <\equation*>
    <frac|\<partial\>f|\<partial\>x><around*|(|x<rsub|0>,y<rsub|0>|)>=lim<rsub|h\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+h,y<rsub|0>|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|h>
  </equation*>

  Nel caso della variabile <math|y>:

  <\equation*>
    <frac|\<partial\>f|\<partial\>y><around*|(|x<rsub|0>,y<rsub|0>|)>=lim<rsub|k\<rightarrow\>0><frac|f<around*|(|x<rsub|0>,y<rsub|0>+k|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|k>
  </equation*>

  In pratica, � necessario derivare ``normalmente'' una funzione rispetto ad
  una variabile ponendo l'altra come una costante

  <subsubsection|Derivate di ordine <math|\<geqslant\>2>>

  Necessita di revisione!

  Se la funzione � di classe <math|C<rsup|?>\<nosymbol\>\<nocomma\>>, non �
  importante l'ordine con cui vengono calcolate le derivate parziali.

  Esempio:

  <\equation*>
    f<rsub|x*x<rsub|>*y>=f<rsub|x*y*x>
  </equation*>

  <subsection|Derivata direzionale>

  Consideriamo una funzione <math|f<around*|(|x,y|)>> definita su un
  intervallo aperto <math|A\<subset\>R<rsup|2>> a valori in R, siano inoltre
  <math|<around*|(|x,y|)>\<in\>A> e <math|v=<around*|(|v<rsub|1>,v<rsub|2>|)>>
  un vettore di norma unitaria.

  Si definisce derivata direzionale di <math|f<around*|(|x,y|)>> lungo la
  direzione <math|v> il limite, se esiste finito:

  <\equation*>
    <frac|\<partial\>f|\<partial\>v><around*|(|x,y|)>=lim<rsub|t\<rightarrow\>0><frac|f<around*|(|x+t*v<rsub|1>,y+t*v<rsub|2>|)>-f<around*|(|x,y|)>|t>
  </equation*>

  Attenzione! Se il vettore <math|v> non ha norma unitaria, � necessario
  procedere alla normalizzazione!

  <subsubsection|Formula del gradiente>

  <\equation*>
    <frac|\<partial\>f|\<partial\>v><around*|(|x<rsub|0>,y<rsub|0>|)>=\<nabla\>*f<around*|(|x<rsub|0>,y<rsub|0>|)>\<cdot\>v
  </equation*>

  <subsection|Polinomio di Taylor>

  Necessita di revisione!

  <subsubsection|Formula ordine 1>

  <\equation*>
    f<around*|(|x<rsub|0>,y<rsub|0>|)>+f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x-x<rsub|0>|)>+f<rsub|y><around*|(|x<rsub|0,>y<rsub|0>|)><around*|(|y<rsub|>-y<rsub|0>|)>
  </equation*>

  <subsubsection|Formula di ordine 2>

  <\equation*>
    f<around*|(|x<rsub|0>,y<rsub|0>|)>+f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x-x<rsub|0>|)>+f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y-y<rsub|0>|)>+
  </equation*>

  <\equation*>
    +<frac|1|2>f<rsub|x*x><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x<rsub|>-x<rsub|0>|)><rsup|2>+f<rsub|x*y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x-x<rsub|0>|)><around*|(|y-y<rsub|0>|)>+<frac|1|2>f<rsub|y*y><around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y-y<rsub|0>|)><rsup|2>
  </equation*>

  <subsection|Studio della continuit� in un punto>

  Necessita revisione!

  Per verificare la continuit� di una funzione in due variabili nel punto
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> � necessario studiare tre punti:

  <\itemize>
    <item>La funzione deve essere definita in
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>>

    <item>Deve esistere il limite in due variabili

    <\equation*>
      lim<rsub|<around*|(|x,y|)>\<rightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>>f<around*|(|x,y|)>
    </equation*>

    <item>Il limite precedente deve valere esattamente quanto la funzione nel
    punto

    <\equation*>
      lim<rsub|<around*|(|x,y|)>\<rightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>>f<around*|(|x,y|)>=f<around*|(|x<rsub|0>,y<rsub|0>|)>
    </equation*>
  </itemize>

  <subsection|Stabilire se una funzione � differenziabile>

  <subsection|Stabilire se � possibile effettuare un cambio di variabile
  nell'intorno di un punto>

  Bozza, necessita revisione

  Si studia il gradiente della funzione nel punto: se esso si annulla allora
  la funzione non � invertibile rispetto alla variabile per la quale si
  annulla.

  <subsection|Punti critici>

  Si definisce punto critico il punto <math|x> nel quale la derivata
  <math|f<rprime|'><around*|(|x|)>> si annulla (in questo caso si chiama
  anche punto stazionario) oppure non esiste.

  <subsubsection|Casi>

  <\itemize>
    <item><math|>Se <math|f:R<rsup|2>\<rightarrow\>R> un punto sar� critico
    se e solo se il gradiente <math|\<nabla\>f> si annulla. Il piano tangente
    alla superficie individuata dal grafico di <math|f> in punto critico � il
    piano orizzontale. Se una curva di livello di <math|f> contiene un punto
    critico in tale punto la curva pu� non avere una tangente ben definita.

    <item>Se abbiamo una curva <math|\<varphi\>:R\<rightarrow\>R<rsup|m>> un
    punto critico � un valore di <math|t> tale che
    <math|\<varphi\><rprime|'><around*|(|t|)>=0>. In tal caso nel punto
    <math|\<varphi\><around*|(|t|)> > pu� esserci una cuspide in cui non �
    ben definita una tangente alla curva.

    <item>Se abbiamo una superficie differenziabile nello spazio
    parametrizzada da una funzione differenziabile
    <math|\<phi\>:R<rsup|2>\<rightarrow\>R<rsup|3>> un punto critico � un
    punto in cui la matrice jacobiana ha rango minore di 2. In un punto
    critico la superficie non ha un piano tangente ben definito.
  </itemize>

  <subsection|Punti di massimo e di minimo>

  Devo considerare i punti critici della funzione pondendo tutte le derivate
  parziali = 0. L'annullamento di tutte le derivate in
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> � condizione necessaria (ma non
  sufficiente) affinch� <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> sia un punto
  di minimo o di massimo.

  <\equation*>
    <choice|<tformat|<table|<row|<cell|f<rsub|x><around*|(|x<rsub|0>,y<rsub|0>|)>=0>>|<row|<cell|f<rsub|y><around*|(|x<rsub|0>,y<rsub|0>|)>=0>>>>>
  </equation*>

  A questo punto calcolo l'Hessiana nei punti trovati

  <\equation*>
    H=<matrix|<tformat|<table|<row|<cell|f<rsub|xx><around*|(|x<rsub|0>,y<rsub|0>|)>\<space\>>|<cell|f<rsub|xy><around*|(|x<rsub|0>,y<rsub|0>|)>>>|<row|<cell|f<rsub|yx><around*|(|x<rsub|0>,y<rsub|0>|)>>|<cell|f<rsub|yy><around*|(|x<rsub|0>,y<rsub|0>|)>>>>>>
  </equation*>

  Adesso posso

  <\enumerate>
    <item>Calcolare il determinante di <math|H> e verificare:

    <\itemize>
      <item><math|det\<gtr\>0> e 1<degreesign> elemento \<gtr\> 0 allora
      <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> � un punto di minimo

      <item><math|det \<gtr\>0> e 1<degreesign> elemento \<less\> 0 allora
      <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> � un punto di massimo

      <item><math|det\<less\>0> allora <math|<around*|(|x<rsub|0>,y<rsub|0>|)>>
      � un punto di sella
    </itemize>

    <item>Calcolare <math|det<around*|(|H-\<lambda\>*I|)>> e trovare gli
    autovalori:

    <\itemize>
      <item>Se sono concordi \<less\> 0 allora ho un punto di massimo

      <item>Se sono concordi \<gtr\> 0 allora ho un punto di minimo

      <item>Se sono discordi ho una sella

      <item>Se uno di essi = 0 allora ``degenere'' (?)
    </itemize>
  </enumerate>

  <subsubsection|Insiemi chiusi e limitati>

  � necessario studiare la frontiera usando la parametrizzazione: ricavo
  <math|y> in funzione di <math|x> dalla curva che definisce la frontiera e
  sostituisco nella funzione, ottenendo una funzione in una sola variabile
  incognita di cui trovare max e min studiando la derivata.

  <paragraph|Metodo di Lagrange>

  Ho la funzione <math|f<around*|(|x,y|)>> e la restrinzione
  <math|g<around*|(|x,y|)>>

  <\equation*>
    \<alpha\><around*|(|x,y,\<lambda\>|)>=f<around*|(|x,y|)>+\<lambda\>*<around*|(|g<around*|(|x,y|)>|)>
  </equation*>

  <\equation*>
    \<nabla\>\<lambda\>=<choice|<tformat|<table|<row|<cell|<frac|\<partial\>\<alpha\>|\<partial\>x>=0>>|<row|<cell|<frac|\<partial\>\<alpha\>|\<partial\>y>=0>>|<row|<cell|<frac|\<mathd\>\<alpha\>|\<partial\>\<lambda\>>=0>>>>>
  </equation*>

  e calcolo <math|f<around*|(|<wide|x|\<bar\>>,<wide|y|\<bar\>>|)>> nei punti
  <math|<around*|(|<wide|x|\<bar\>>,<wide|y|\<bar\>>|)>> trovati.

  Dato che il valore di <math|\<lambda\>> non serve, in genere � un buon
  metodo risolutivo quello di eguagliare le prime due equazione in modo da
  semplificarla, ricavare un'incognita dall'altra e sostituire nell'ultima
  equazione, cos� da poter ricavare le incognite.

  <subsection|Formule trigonometriche utili>

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

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|5.2|?>>
    <associate|auto-11|<tuple|6|?>>
    <associate|auto-12|<tuple|7|?>>
    <associate|auto-13|<tuple|8|?>>
    <associate|auto-14|<tuple|9|?>>
    <associate|auto-15|<tuple|9.1|?>>
    <associate|auto-16|<tuple|10|?>>
    <associate|auto-17|<tuple|10.1|?>>
    <associate|auto-18|<tuple|10.1.1|?>>
    <associate|auto-19|<tuple|11|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-20|<tuple|11.1|?>>
    <associate|auto-21|<tuple|11.2|?>>
    <associate|auto-22|<tuple|11.3|?>>
    <associate|auto-23|<tuple|11.4|?>>
    <associate|auto-3|<tuple|2|?>>
    <associate|auto-4|<tuple|3|?>>
    <associate|auto-5|<tuple|3.1|?>>
    <associate|auto-6|<tuple|4|?>>
    <associate|auto-7|<tuple|4.1|?>>
    <associate|auto-8|<tuple|5|?>>
    <associate|auto-9|<tuple|5.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Piano tangente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|2tab>|1.1<space|2spc>Piano tangente a superficie
      cartesiana <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|2<space|2spc>Gradiente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|3<space|2spc>Derivata parziale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|3.1<space|2spc>Derivate di ordine
      <with|mode|<quote|math>|\<geqslant\>2>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4<space|2spc>Derivata direzionale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|4.1<space|2spc>Formula del gradiente
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|5<space|2spc>Polinomio di Taylor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|5.1<space|2spc>Formula ordine 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|5.2<space|2spc>Formula di ordine 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|6<space|2spc>Studio della continuit� in un
      punto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|7<space|2spc>Stabilire se una funzione �
      differenziabile <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|8<space|2spc>Stabilire se � possibile
      effettuare un cambio di variabile nell'intorno di un punto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|9<space|2spc>Punti critici
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|9.1<space|2spc>Casi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|10<space|2spc>Punti di massimo e di minimo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|11<space|2spc>Formule trigonometriche utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|2tab>|11.1<space|2spc>Formule di addizione e
      sottrazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|2tab>|11.2<space|2spc>Formule di duplicazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|11.3<space|2spc>Formule di bisezione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|2tab>|11.4<space|2spc>Formule parametriche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>
    </associate>
  </collection>
</auxiliary>
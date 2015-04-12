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

  Il gradiente di una funzione è il vettore che ha come componenti le
  derivate parziali della funzione stessa.

  <subsection|Derivata parziale>

  È una derivata direzionale lungo gli assi.

  Una funzione è derivabile parzialmente rispetto alla variabile <math|x> nel
  punto <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> se esiste finito il limite
  in una variabile:

  <\equation*>
    <frac|\<partial\>f|\<partial\>x><around*|(|x<rsub|0>,y<rsub|0>|)>=lim<rsub|h\<rightarrow\>0><frac|f<around*|(|x<rsub|0>+h,y<rsub|0>|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|h>
  </equation*>

  Nel caso della variabile <math|y>:

  <\equation*>
    <frac|\<partial\>f|\<partial\>y><around*|(|x<rsub|0>,y<rsub|0>|)>=lim<rsub|k\<rightarrow\>0><frac|f<around*|(|x<rsub|0>,y<rsub|0>+k|)>-f<around*|(|x<rsub|0>,y<rsub|0>|)>|k>
  </equation*>

  In pratica, è necessario derivare ``normalmente'' una funzione rispetto ad
  una variabile ponendo l'altra come una costante

  <subsubsection|Derivate di ordine <math|\<geqslant\>2>>

  Necessita di revisione!

  Se la funzione è di classe <math|C<rsup|?>\<nosymbol\>\<nocomma\>>, non è
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

  Attenzione! Se il vettore <math|v> non ha norma unitaria, è necessario
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

  <subsection|Studio della continuità in un punto>

  Necessita revisione!

  Per verificare la continuità di una funzione in due variabili nel punto
  <math|<around*|(|x<rsub|0>,y<rsub|0>|)>> è necessario studiare tre punti:

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

  <subsection|Stabilire se una funzione è differenziabile>

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
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|5.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|6|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-12|<tuple|7|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|3.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|4|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|4.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|5.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
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

      <with|par-left|<quote|1tab>|6<space|2spc>Studio della continuità in un
      punto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>
    </associate>
  </collection>
</auxiliary>
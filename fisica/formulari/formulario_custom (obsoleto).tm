<TeXmacs|1.99.2>

<style|book>

<\body>
  Attenzione: per editare il file utilizzare il testo preformattato
  <with|font-series|bold|Descrizione>, (su Linux
  <with|font-series|bold|ALT-d>)

  <section|Formule>

  <\description>
    <item*|Energia potenziale elastica>

    <\equation*>
      U<rsub|m>=<frac|1|2>*k*x<rsup|2>
    </equation*>

    <item*|Energia meccanica totale di un sistema>

    <\equation*>
      E<rsub|mecc>=K+U
    </equation*>

    <item*|Lavoro>

    <\equation*>
      W=F*\<Delta\>r*cos<around*|(|\<theta\>|)>
    </equation*>

    Il lavoro può anche essere negativo!

    <\item*>
      Lavoro di una forza variabile
    </item*>

    <\equation*>
      W=<big|int><rsub|x<rsub|i>><rsup|x<rsub|f>>F<rsub|x>*dx
    </equation*>

    <item*|Prodotto scalare>

    <\equation*>
      A\<cdot\>B=<around*|\||A|\|>*<around*|\||B|\|>*cos<around*|(|\<theta\>|)>
    </equation*>

    <item*|Potenza istantanea>

    <\equation*>
      \<cal-P\>=<frac|d*E|dt>
    </equation*>

    <item*|Energia meccanica totale>

    <\equation*>
      K<rsub|f>+U<rsub|f>=K<rsub|i>+U<rsub|i>
    </equation*>

    <item*|Impulso>

    <\equation*>
      <wide|I|\<vect\>>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><big|sum><wide|F|\<vect\>>*dt
    </equation*>

    <item*|Vettore posizione del centro di massa>

    <\equation*>
      <wide|r<rsub|CM>|\<vect\>>=<frac|1|M>*<big|sum><rsub|i>m<rsub|i>*<wide|r<rsub|i>|\<vect\>>
    </equation*>

    <item*|Legge di Coulomb nel vuoto>

    <\equation*>
      <wide|F<rsub|12>|\<vect\>>=<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>*<frac|q<rsub|1>*q<rsub|2>|r<rsup|2>>*<wide|r|^>
    </equation*>

    <item*|Differenza di potenziale>

    <\equation*>
      V<rsub|B>-V<rsub|A>=-<big|int><rsub|A><rsup|B><wide|E|\<vect\>>\<cdot\><wide|d*l|\<vect\>>
    </equation*>

    <item*|Potenziale in un punto>

    <\equation*>
      V=<frac|1|4*\<pi\>*\<varepsilon\><rsub|0>>*<big|sum><rsub|i><frac|q<rsub|i>|<around*|\||r-r<rsub|i>|\|>>
    </equation*>

    <item*|Energia elettrostatica in un campo elettrostatico>

    <\equation*>
      \<Delta\>U<rsub|c>=\<Delta\>V=W=<frac|1|2>*m*v<rsup|2>
    </equation*>

    <item*|Dipolo elettrico>

    <\equation*>
      <wide|p|\<vect\>>=q*<wide|a|\<vect\>>
    </equation*>

    <item*|Momento agente su un dipolo elettrico>

    <\equation*>
      <wide|M|\<vect\>>=<wide|p|\<vect\>>\<wedge\><wide|E|\<vect\>>
    </equation*>

    <item*|Teorema di Gauss in forma integrale>

    <\equation*>
      \<Phi\><rsub|S><around*|(|<wide|E|\<vect\>>|)><big|int><rsub|S><wide|E|\<vect\>>*\<cdot\>d<wide|s|\<vect\>>=<frac|Q<rsub|int>|\<varepsilon\><rsub|0>>
    </equation*>

    <item*|Campo elettrostatico>

    <\equation*>
      <wide|E|\<vect\>>=<frac|<wide|F|\<vect\>>|q>
    </equation*>

    oppure

    <\equation*>
      <wide|E|\<vect\>>=<frac|d<wide|F|\<vect\>>|dq>
    </equation*>

    <\item*>
      Capacità di un condensatore
    </item*>

    <\equation*>
      C=<frac|Q|\<Delta\>V>
    </equation*>

    <item*|Capacità di un condensatore piano>

    <\equation*>
      C=\<varepsilon\><frac|S|d>
    </equation*>

    <item*|Capacità di un condensatore sferico>

    <\equation*>
      C=4*\<pi\>*\<varepsilon\><frac|r<rsub|int>*r<rsub|est>|r<rsub|est>-r<rsub|int>>
    </equation*>

    <item*|Forza tra le armature di un condensatore piano>

    <\equation*>
      F=<frac|Q<rsup|2>|2*\<varepsilon\>*S>
    </equation*>

    \;

    <\item*>
      Campo magnetico generato da una carica in moto
    </item*>

    (nel vuoto)

    <\equation*>
      <wide|B|\<vect\>>=<frac|\<mu\><rsub|0>|4*\<pi\>>*q*<frac|<wide|v|\<vect\>>\<times\><wide|r|\<vect\>>|r<rsup|3>>
    </equation*>

    <item*|Legge di Ampère>

    <\equation*>
      <big|oint><rsub|\<partial\>S>B\<cdot\>d*r=\<mu\><rsub|0>*<big|sum><rsub|i>I<rsub|i>=\<mu\><rsub|0>*I
    </equation*>

    <item*|Circuito RC>

    <\equation*>
      R*<frac|d*q|dt>+<frac|q|C>=V
    </equation*>

    <item*|Circuito RC - Carica C>

    <\equation*>
      q=C*V*<around*|(|1-e<rsup|-<frac|t|\<tau\>>>|)><text| \ con
      \ >\<tau\>=R*C
    </equation*>

    <item*|Circuito RC - Scarica C>

    <\equation*>
      q=q<rsub|0>*e<rsup|-<frac|t|\<tau\>>>
    </equation*>

    <item*|Ciruito RL - Extracorrente apertura>

    <\equation*>
      i=<frac|V|R>*e<rsup|-<frac|t|\<tau\>>><text| \ con
      \ >\<tau\>=<frac|L|R>
    </equation*>

    <item*|Circuito RL - Extracorrente chiusura>

    <\equation*>
      i=<frac|V|R><around*|(|1-e<rsup|-<frac|t|\<tau\>>>|)>
    </equation*>

    <item*|Circuito RLC - Frequenza di risonanza>

    <\equation*>
      \<omega\><rsub|r>=2*\<pi\>\<nu\><rsub|r>=<frac|1|<sqrt|LC>>
    </equation*>

    <item*|Densità (di carica) lineare>

    <\equation*>
      \<lambda\>=<frac|d*q|d*l>
    </equation*>

    <item*|Densità (di carica) superficiale>

    <\equation*>
      \<sigma\>=<frac|d*q|d*S>
    </equation*>

    <item*|Densità (di carica) volumica>

    <\equation*>
      \<rho\>=<frac|d*q|d*\<tau\>>
    </equation*>
  </description>

  <section|Costanti di uso comune>

  \;

  <\description>
    <\item*>
      Costante dielettrica del vuoto
    </item*>

    <\equation*>
      \<varepsilon\><rsub|0>=8.85\<times\>10<rsup|-12>*<frac|F|m>
    </equation*>

    <item*|Permeabilità magnetica del vuoto>

    <\equation*>
      \<mu\><rsub|0>=4*\<pi\>\<times\>10<rsup|-7>*<frac|H|m>
    </equation*>

    <item*|Carica dell'elettrone>

    <\equation*>
      e=1.60\<times\>10<rsup|-19>*C
    </equation*>

    <item*|Massa dell'elettrone>

    <\equation*>
      m<rsub|e>=9.1\<times\>10<rsup|-31>*kg
    </equation*>

    <item*|Rapporto <math|<frac|e|m>> dell'elettrone>

    <\equation*>
      <frac|e|m>=1.76\<times\>10<rsup|11>*<frac|C|kg>
    </equation*>

    <item*|Massa del protone>

    <\equation*>
      m<rsub|p>=1.67\<times\>10<rsup|-27>*kg
    </equation*>

    <item*|Impedenza del vuoto>

    <\equation*>
      Z<rsub|0>=376.7*\<Omega\>
    </equation*>
  </description>

  <\description>
    <item*|Costante gravitazionale>

    <\equation*>
      G=6.672\<times\>10<rsup|-11>*m<rsup|3>*kg<rsup|-1>*s<rsup|-2>
    </equation*>

    <item*|Massa della terra>

    <\equation*>
      M<rsub|T>=5.973\<times\>10<rsup|24>*kg
    </equation*>

    <item*|Massa del sole>

    <\equation*>
      M<rsub|S>=1.989\<times\>10<rsup|30>*kg
    </equation*>

    \;
  </description>

  <section|Momenti d'inerzia>
</body>

<\initial>
  <\collection>
    <associate|page-even-footer|>
    <associate|page-even-header|>
    <associate|page-height|auto>
    <associate|page-odd-footer|>
    <associate|page-odd-header|>
    <associate|page-orientation|portrait>
    <associate|page-type|a4>
    <associate|page-width|auto>
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|6|1>>
    <associate|auto-11|<tuple|7|1>>
    <associate|auto-12|<tuple|8|1>>
    <associate|auto-13|<tuple|9|1>>
    <associate|auto-14|<tuple|10|1>>
    <associate|auto-15|<tuple|4|?>>
    <associate|auto-16|<tuple|11|?>>
    <associate|auto-17|<tuple|12|?>>
    <associate|auto-18|<tuple|13|?>>
    <associate|auto-19|<tuple|5|?>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-20|<tuple|14|?>>
    <associate|auto-21|<tuple|15|?>>
    <associate|auto-22|<tuple|16|?>>
    <associate|auto-23|<tuple|17|?>>
    <associate|auto-24|<tuple|18|?>>
    <associate|auto-25|<tuple|19|?>>
    <associate|auto-26|<tuple|20|?>>
    <associate|auto-27|<tuple|21|?>>
    <associate|auto-28|<tuple|22|?>>
    <associate|auto-29|<tuple|23|?>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-30|<tuple|24|?>>
    <associate|auto-31|<tuple|6|?>>
    <associate|auto-32|<tuple|25|?>>
    <associate|auto-33|<tuple|26|?>>
    <associate|auto-34|<tuple|27|?>>
    <associate|auto-35|<tuple|28|?>>
    <associate|auto-36|<tuple|29|?>>
    <associate|auto-37|<tuple|7|?>>
    <associate|auto-38|<tuple|30|?>>
    <associate|auto-39|<tuple|31|?>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-40|<tuple|32|?>>
    <associate|auto-41|<tuple|33|?>>
    <associate|auto-42|<tuple|34|?>>
    <associate|auto-5|<tuple|2|1>>
    <associate|auto-6|<tuple|3|1>>
    <associate|auto-7|<tuple|4|1>>
    <associate|auto-8|<tuple|3|1>>
    <associate|auto-9|<tuple|5|1>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-1.1|<tuple|1.1|3>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-1.1|<tuple|1.1|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Formule <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      2<space|2spc>Costanti di uso comune
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      3<space|2spc>Momenti d'inerzia <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>
    </associate>
  </collection>
</auxiliary>
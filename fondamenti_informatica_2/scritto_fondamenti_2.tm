<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <chapter|Algoritmi e strutture dati>

  \;

  <chapter|Basi di dati>

  <section|Definizioni>

  <subsection|Differenze tra database <with|font-shape|italic|SQL> e database
  <with|font-shape|italic|NOSQL>>

  <section|Schedule>

  <subsection|VSR >

  Uno schedule viene detto <with|font-shape|italic|view-serializzabile (VSR)>
  se � view-equivalente ad uno seriale.

  Per stabilire se due schedule sono view-equivalenti bisogna verificare che
  abbiano le stesse relazioni legge-da e le stesse scritture finali.

  <subsection|CSR>

  Uno schedule <with|font-shape|italic|conflict-serializzabile> � anche
  <with|font-shape|italic|view-serializzabile>.

  Per capire se uno schedule � conflict-serializzabile � necessario che il
  grafo orientato i cui nodi rappresentazon le transazioni non contenga
  ``cicli''.

  <subsection|Locking a due fasi>

  Le due strategie viste finora non garantiscono la serializzabilit�, ma la
  verificano a posteriori. Nei sistemi utilizzati in pratica si preferisce
  invece fare in modo che essa sia in qualche modo assicurata, adottando
  particolari accorgimenti e spesso strutture dati d'appoggio. Una delle
  tecniche pi� utilizzate si basa sul <em|locking>, che fa uso di una
  variabile di <em|lock> per descrivere lo stato di una risorsa rispetto alle
  operazioni che lo riguardano. Quando una transazione vuole utilizzare una
  risorsa deve <em|prima> richiederne il lock, attendere finch� non gli viene
  concesso e rilasciarlo dopo il suo utilizzo. In particolare, nel
  <em|locking a due fasi> (2PL) una volta che una transazione ha rilasciato
  un lock qualsiasi, non pu� pi� acquisirne altri. Quindi, se una transazione
  t<rsub|i> ha bisogno del lock su una risorsa gi� occupata da t<rsub|j>,
  quest'ultima prima di rilasciarla dovr� acquisire il lock di tutte le
  risorse a cui deve ancora accedere, perch� una volta unlockata una risorsa
  non potr� pi� lockarne nessuna.

  Perch� ci interessano tanto gli schedule generati con questa tecnica?
  <em|Perch� sono serializzabili>.

  Esistono due tipi di 2PL, a seconda della variabile di lock che viene
  utilizzata:

  <\itemize>
    <item>a <em|2 stati>: il lock pu� essere <em|locked> (risorsa bloccata) o
    <em|unlocked> (risorsa rilasciata o comunque disponibile)

    <item>a <em|3 stati>: il lock pu� essere <em|read locked>, <em|write
    locked> o <em|unlocked>. L'introduzione del read locked consente a due o
    pi� transazioni di condividere la stessa risorsa in lettura.
  </itemize>

  Ultima considerazione: gli schedule 2PL sono un sottoinsieme della classe
  di schedule CSR, che sono a loro volta sottoinsieme dei VSR. Ne consegue
  che se uno schedule � non view-serializzabile non � nemmeno
  conflict-serializzabile n� tantomeno basato su 2PL!

  <subsubsection|Come determinare se uno schedule � generato da uno scheduer
  basato su 2PL> (esempio)

  Prendiamo lo schedule

  <\equation*>
    R<rsub|1><around*|(|x|)>,R<rsub|1><around*|(|t|)>,R<rsub|2><around*|(|z|)>,W<rsub|3><around*|(|x|)>,W<rsub|1><around*|(|x|)>,R<rsub|1><around*|(|y|)>,W<rsub|3><around*|(|t|)>,W<rsub|2><around*|(|x|)>,W<rsub|1><around*|(|y|)>
  </equation*>

  <\enumerate>
    <item>� molto utile raggruppare le operazioni per transazioni per
    facilitare le azioni di lock e unlock.

    <\itemize>
      <item><math|t<rsub|1>=r<rsub|1><around*|(|x|)>,r<rsub|1><around*|(|t|)>,w<rsub|1><around*|(|x|)>,r<rsub|1><around*|(|y|)>,w<rsub|1><around*|(|y|)>>

      <item><math|t<rsub|2>=r<rsub|2><around*|(|z|)>,w<rsub|2><around*|(|x|)>>

      <item><math|t<rsub|3>=w<rsub|3><around*|(|x|)>,w<rsub|3><around*|(|t|)>>
    </itemize>

    <item>Ora dobbiamo stabilire operazione per operazione, mantenendo
    l'ordine dello schedule dato, a quale transazione dare il lock su quale
    risorsa. Conviene mantere queste informazioni in una tabella con una
    colonna per le operazioni, una per il lock/unlock e infine tante colonne
    quante sono le risorse, in cui indicare quale transazione ne detiene
    attualmente l'accesso. L'istruzione da scrivere nella colonna dei lock
    avr� la seguente forma:

    <\equation*>
      lock <around*|(|transazione\<nocomma\>\<nocomma\>,risorsa|)>\<Longrightarrow\>OK/NO
    </equation*>

    oppure il complementare

    <\equation*>
      unlock<around*|(|transazione,risorsa|)>\<Longrightarrow\>OK/NO
    </equation*>

    <item>Riempiamo la tabella con il nostro schedule

    <tabular*|<tformat|<table|<row|<cell|<with|font-series|bold|Operazione>>|<cell|<with|font-series|bold|Lock>>|<cell|<with|font-series|bold|X>>|<cell|<with|font-series|bold|Y>>|<cell|<with|font-series|bold|Z>>|<cell|<with|font-series|bold|T>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|R<rsub|1><around*|(|x|)>>>|<cell|<math|lock<around*|(|t<rsub|1>,x|)>:
    OK>>|<cell|<math|t<rsub|1>>>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|R<rsub|2><around*|(|t|)>>>|<cell|lock(<math|t<rsub|1>,t>):OK>|<cell|<math|t<rsub|1>>>|<cell|>|<cell|>|<cell|<math|t<rsub|1>>>>|<row|<cell|<math|R<rsub|2><around*|(|z|)>>>|<cell|<math|lock<around*|(|t<rsub|2>,z|)>:OK>>|<cell|<math|t<rsub|1>>>|<cell|>|<cell|<math|t<rsub|2>>>|<cell|<math|t<rsub|1>>>>|<row|<cell|<math|W<rsub|3><around*|(|x|)>>>|<cell|<math|lock<around*|(|t<rsub|1>,y|)>:OK>>|<cell|<math|t<rsub|1>>>|<cell|<math|t<rsub|1>>>|<cell|<math|t<rsub|2>>>|<cell|<math|t<rsub|1>>>>|<row|<cell|>|<cell|<math|unlock<around*|(|t<rsub|1>,x|)>:NO>>|<cell|<math|t<rsub|1>>>|<cell|<math|t<rsub|1>>>|<cell|<math|t<rsub|2>>>|<cell|<math|t<rsub|1>>>>>>>

    <item>Osserviamo i passaggi effettuari a partire dall'operazione
    <math|W<rsub|3><around*|(|x|)>>

    <\itemize>
      <item>La transazione 3 vuole effettuare una scrittura su <math|x>,
      quindi deve prima togliere il lock alla transazione che ne ha possesso,
      ovvero la <math|t<rsub|1>>

      <item>Prima di unlockare una risorsa a <math|t<rsub|1>> devo prima
      bloccare tutte quelle risorse di cui in futuro avr� bisogno, quindi la
      <math|y>

      <item>A questo punto unlocko <math|x> dalla transazione 1, e qui sta il
      problema: l'operazione successiva dello schedule �
      <math|W<rsub|1><around*|(|x|)>\<nocomma\>>, ma avendo appena unlockato
      non potr� pi� rilockoralo.
    </itemize>
  </enumerate>

  Quindi lo schedule in esame non � 2PL. Notare che in realt� noi gi�
  sapevamo l'esito della verifica: dato che lo schedule non era CSR, non
  poteva in nessun modo essere nemmeno 2PL.

  \;

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|2.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|2.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|2.3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|2.3.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Algoritmi
      e strutture dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Basi
      di dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Definizioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Differenze tra database
      <with|font-shape|<quote|italic>|SQL> e database
      <with|font-shape|<quote|italic>|NOSQL>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Schedule>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>VSR
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>CSR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Locking a due fasi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Come determinare se uno
      schedule � generato da uno scheduer basato su 2PL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>
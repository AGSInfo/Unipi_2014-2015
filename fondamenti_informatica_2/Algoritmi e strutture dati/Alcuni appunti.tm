<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Appunti di Algoritmi e strutture
  dati>|<doc-author|<author-data|<author-name|Gianluca Mondini>>>>

  <section|Complessità di un algoritmo>

  <subsection|Definizione>

  È una funzione (sempre positiva) che associa alla dimensione del problema
  il costo della sua risoluzione in base alla misura scelta

  <math|T<rsub|P><around*|(|n|)>> = Complessità con costo = tempo del
  programma <math|P> al variare di <math|n>

  <subsection|Ordine>

  <math|g<around*|(|n|)>> è di ordine <math|O<around*|(|f<around*|(|n|)>|)>>
  se esistono un intero <math|n<rsub|0>> ed una costante <math|c\<gtr\>0>
  tali che per ogni <math|n\<gtr\>n<rsub|0>> si ha
  <math|g<around*|(|n|)>\<leqslant\>c*f<around*|(|n|)>>

  <subsection|Regole>

  <subsubsection|Regola dei fattori costanti>

  Per ogni costante positiva <math|k>, <math|O<around*|(|f<around*|(|n|)>|)>=O<around*|(|k*f<around*|(|n|)>|)>>

  <subsubsection|Regola della somma>

  Se <math|f<around*|(|n|)>> è <math|O<around*|(|g<around*|(|n|)>|)>>, allora
  <math|f<around*|(|n|)>+g<around*|(|n|)>> è
  <math|O<around*|(|g<around*|(|n|)>|)>>

  <subsubsection|Regola del prodotto>

  Se <math|f<around*|(|n|)>> è <math|O<around*|(|f1<around*|(|n|)>|)>> e
  <math|g<around*|(|n|)>> è <math|O<around*|(|g1<around*|(|n|)>|)>>, allora
  <math|f<around*|(|n|)>g<around*|(|n|)>> è
  <math|O<around*|(|f1<around*|(|n|)>*g1<around*|(|n|)>|)>>

  <subsubsection|Altre regole>

  Se <math|f<around*|(|n|)>> è <math|O<around*|(|g<around*|(|n|)>|)>> e
  <math|g<around*|(|n|)>> è <math|O<around*|(|h<around*|(|n|)>|)>>, allora
  <math|f<around*|(|n|)>> è <math|O<around*|(|h<around*|(|n|)>|)>>

  Per ogni costante <math|k>, <math|k> è <math|O<around*|(|1|)>>

  Per <math|m\<leqslant\>p>, <math|n<rsup|m>> è
  <math|O<around*|(|n<rsup|p>|)>>

  Un polinomio di grado <math|m> è <math|O<around*|(|n<rsup|m>|)>>

  <subsection|Teorema>

  Per ogni <math|k>, <math|n<rsup|k>\<in\>O<around*|(|a<rsup|n>|)>>, per ogni
  <math|a\<gtr\>1>

  Una qualsiasi funzione polinomiale ha minore complessità di una qualsiasi
  funzione esponenziale

  <section|Alberi binari>

  <\itemize>
    <item>NULL è un albero binario

    <item>Un nodo <math|p> più due alberi binari Bs e Bd forma un albero
    binario
  </itemize>

  <subsection|Numero di foglie e di nodi>

  Un albero binario bilanciato con livello <math|k> ha

  <\itemize>
    <item><math|2<rsup|k+1>-1> nodi

    <item><math|2<rsup|k>> foglie
  </itemize>

  <subsection|Alcuni algoritmi>

  <subsubsection|Contare il numero dei nodi>

  <\cpp-code>
    int nodes(Node* tree) {

    \ \ if (!tree) return 0;

    \ \ return 1 + nodes(tree -\<gtr\> left) + nodes(tree -\<gtr\> right);

    }
  </cpp-code>

  <subsubsection|Contare il numero delle foglie>

  <\cpp-code>
    int leaves(Node* tree) {

    \ \ if (!tree) return 0;

    \ \ if (!tree -\<gtr\> left && !tree -\<gtr\> right) return 1;

    \ \ return leaves(tree -\<gtr\> left) + leaves(tree -\<gtr\> right);

    } \ 
  </cpp-code>

  <subsubsection|Cercare un etichetta e resistuire un puntatore>

  Se il nodo non compare nell'albero, viene restituito NULL. Se l'albero
  contiene più di un'etichetta, viene restituito un puntatore al primo

  <\cpp-code>
    Node* findNode(Infotype n, Node* tree) {

    \ \ // L'albero è vuoto, l'etichetta non può esserci

    \ \ if (!tree) return NULL;

    \ \ // Trovata l'etichetta, restituisco il puntatore

    \ \ if (tree -\<gtr\> label == n) return tree;

    \ \ // Cerco a sinistra

    \ \ Node* a = findNode(n, tree -\<gtr\> left);

    \ \ // Controllo se il puntatore della ricerca "a sinistra"

    \ \ // a resistuito qualcosa di interessante, altrimenti cerco a destra

    \ \ if (a) return a;

    \ \ else return findNode(n, tree -\<gtr\> right);

    }
  </cpp-code>

  <subsubsection|Eliminare tutto l'abero>

  Alla fine il puntatore deve essere NULL

  <\cpp-code>
    void delTree(Node* &tree) {

    \ \ if (tree) {

    \ \ \ \ delTree(tree -\<gtr\> left);

    \ \ \ \ delTree(tree -\<gtr\> right);

    \ \ \ \ delete tree;

    \ \ \ \ tree = NULL;

    \ \ }

    }
  </cpp-code>

  <subsubsection|Inserire un nodo>

  Inserisce un nodo (son) come figlio di father, sinistro se
  <math|c=<rprime|'>l<rprime|'>> oppure destro se
  <math|c=<rprime|'>r<rprime|'>>.

  Ritorna 1 se l'operazione ha successo, 0 altrimenti. Se l'albero è vuoto,
  inserisce il nodo come radice

  <\cpp-code>
    int insertNode(Node* &tree, InfoType son, InfoType father, char c) {

    \ \ // Caso in cui l'albero sia vuoto

    \ \ if (!tree) {

    \ \ \ \ tree = new Node;

    \ \ \ \ tree -\<gtr\> label = son;

    \ \ \ \ tree -\<gtr\> left = tree -\<gtr\> right = NULL;

    \ \ \ \ return 1;

    \ \ }

    \ \ // Caso normale

    \ \ // Effettuo la ricerca di father con la funzione

    \ \ // di ricerca nodo (vedi sopra)

    \ \ Node * a = findNode(father, tree);

    \ \ // Se il nodo non è stato trovato, restituisco 0 e mi fermo

    \ \ if (!a) return 0;

    \ \ // Inserimento come figlio sinistro

    \ \ if (c == 'l' && !a -\<gtr\> left) {

    \ \ \ \ a -\<gtr\> left = new Node;

    \ \ \ \ a -\<gtr\> left -\<gtr\> label = son;

    \ \ \ \ a -\<gtr\> left -\<gtr\> left = a -\<gtr\> left -\<gtr\> right =
    NULL;

    \ \ \ \ return 1;

    \ \ }

    \ \ if (c == 'r' && !a -\<gtr\> right) {

    \ \ \ \ a -\<gtr\> right = new Node;

    \ \ \ \ a -\<gtr\> right -\<gtr\> label = son;

    \ \ \ \ a -\<gtr\> right -\<gtr\> left = a -\<gtr\> right -\<gtr\> right
    = NULL;

    \ \ \ \ return 1;

    \ \ }

    }\ 
  </cpp-code>

  <section|Alberi generici>

  <\itemize>
    <item>Un nodo <math|p> è un albero
  </itemize>

  <\itemize>
    <item>Un nodo più una sequenza di alberi
    <math|A<rsub|1>\<ldots\>A<rsub|n>> è un albero
  </itemize>

  <subsection|Alcuni algoritmi>

  <subsubsection|Contare il numero di nodi>

  Vedi l'algoritmo per gli alberi binari

  <subsubsection|Contare il numero di foglie>

  <\cpp-code>
    int leaves(Node* tree) {

    \ \ if (!tree) return 0;

    \ \ // Caso della foglia

    \ \ if (!tree -\<gtr\> left) return 1 + leaves(tree -\<gtr\> right);

    \ \ // "Non caso" della foglia

    \ \ return leaves(tree -\<gtr\> left) + leaves(tree -\<gtr\> right);
  </cpp-code>

  <subsubsection|Inserire un nodo in fondo ad una lista di fratelli>

  <\cpp-code>
    void addSon(InfoType x, Node* &tree) {

    \ \ // Caso in cui la lista sia vuota

    \ \ if (!tree) {

    \ \ \ \ tree = new Node;

    \ \ \ \ tree -\<gtr\> label = x;

    \ \ \ \ tree -\<gtr\> left = tree -\<gtr\> right = NULL;

    \ \ }

    \ \ else {

    \ \ \ \ addSon(x, tree -\<gtr\> right);

    \ \ }

    }
  </cpp-code>

  <subsubsection|Inserire un nodo son come ultimo figlio di father>

  Se l'albero è vuoto, lo inserisce come radice

  <\cpp-code>
    int insert(InfoType son, InfoType father, Node* &tree) {

    \ \ if (!tree) {

    \ \ \ \ tree = new Node;

    \ \ \ \ tree -\<gtr\> label = son;

    \ \ \ \ tree -\<gtr\> left = tree -\<gtr\> right = NULL;

    \ \ \ \ return 1;

    \ \ }

    \ \ Node* a = findNode(father, tree);

    \ \ if (!a) return 0;

    \ \ addSon(son, a -\<gtr\> left);

    \ \ return 1;

    }
  </cpp-code>

  <section|Alberi binari di ricerca>

  Un albero binario di ricerca è un albero binario tale che per ogni nodo
  <math|p>

  <\itemize>
    <item>I nodi del sottoalbero sinistro di <math|p> hanno etichetta minore
    dell'etichetta di <math|p>

    <item>I nodi del sottoalbero destro di <math|p> hanno etichetta maggiore
    dell'etichetta <math|p>
  </itemize>

  <subsection|Proprietà>

  <\itemize>
    <item>Non ci sono doppioni

    <item>La visita simmetrica elenca le etichette in ordine crescente
  </itemize>

  \;

  <subsection|Alcuni algoritmi>

  <subsubsection|Cercare un nodo>

  <\cpp-code>
    Node* findNode(InfoType n, Node* tree) {

    \ \ \ if (!tree) return 0;

    \ \ \ if (n == tree -\<gtr\> label) return tree;

    \ \ \ if (n \<less\> tree -\<gtr\> label) {

    \ \ \ \ \ return findNode(n, tree -\<gtr\> left);

    \ \ \ }

    \ \ \ return findNode(n, tree -\<gtr\> right);

    }
  </cpp-code>

  <subsubsection|Inserire un nodo>

  <\cpp-code>
    void insertNode(InfoType n, Node* &tree) {

    \ \ // Albero vuoto

    \ \ if (!tree) {

    \ \ \ \ tree = new Node;

    \ \ \ \ tree -\<gtr\> label = n;

    \ \ \ \ tree -\<gtr\> left = tree -\<gtr\> right = NULL;

    \ \ \ \ return;

    \ \ }

    \ \ // Caso n \<less\> radice

    \ \ if (n \<less\> tree -\<gtr\> label) {

    \ \ \ \ insertNode(n, tree -\<gtr\> left);

    \ \ }

    \ \ if (n \<gtr\> tree -\<gtr\> label) {

    \ \ \ \ insertNode(n, tree -\<gtr\> right);

    \ \ }

    }\ 
  </cpp-code>

  L'algoritmo ha complessità <math|O<around*|(|log<around*|(|n|)>|)>>

  [proseguire da pagina 129]
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|2|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|2.1|2|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-12|<tuple|2.2|2|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-13|<tuple|2.2.1|2|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-14|<tuple|2.2.2|2|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-15|<tuple|2.2.3|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-16|<tuple|2.2.4|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-17|<tuple|2.2.5|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-18|<tuple|3|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-19|<tuple|3.1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-20|<tuple|3.1.1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-21|<tuple|3.1.2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-22|<tuple|3.1.3|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-23|<tuple|3.1.4|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-24|<tuple|4|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-25|<tuple|4.1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-26|<tuple|4.2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-27|<tuple|4.2.1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-28|<tuple|4.2.2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1.2|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|1.3|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|1.3.1|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|1.3.2|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|1.3.3|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|1.3.4|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|1.4|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Complessità
      di un algoritmo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Definizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Ordine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Regole
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.3.1<space|2spc>Regola dei fattori
      costanti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|1.3.2<space|2spc>Regola della somma
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|1.3.3<space|2spc>Regola del prodotto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|1.3.4<space|2spc>Altre regole
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Teorema
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Alberi
      binari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Numero di foglie e di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|2tab>|2.2.1<space|2spc>Contare il numero dei nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|2.2.2<space|2spc>Contare il numero delle
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|2.2.3<space|2spc>Cercare un etichetta e
      resistuire un puntatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|2.2.4<space|2spc>Eliminare tutto l'abero
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|2.2.5<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>
    </associate>
  </collection>
</auxiliary>
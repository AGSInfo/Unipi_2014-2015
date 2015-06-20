<TeXmacs|1.99.2>

<style|<tuple|exam|italian>>

<\body>
  <doc-data|<doc-title|Algoritmi e Basi di
  dati>|<doc-author|<author-data|<author-name|>>>|<doc-author|<author-data|<author-name|Di
  Gianluca Mondini>>>>

  <chapter|Algoritmi e strutture dati>

  <section|Algoritmo ricorsivo>

  Una metodologia per programmare le funzioni ricorsive è la seguente:

  <\enumerate>
    <item>Individuare i casi base in cui la funzione è definita
    immediatamente;

    <item>Effettuare le chiamate ricorsive su un insieme più piccolo di dati,
    cioè un insieme più vicino ai casi base;

    <item>Fare in modo che alla fine di ogni sequenza di chiamate ricorsive,
    si ricada nei casi base;
  </enumerate>

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

  <math|O<around*|(|f<around*|(|n|)>|)>> = insieme delle funzioni di ordine
  <math|O<around*|(|f<around*|(|n|)>|)>>

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

  <\itemize>
    <item>Se <math|f<around*|(|n|)>> è <math|O<around*|(|g<around*|(|n|)>|)>>
    e <math|g<around*|(|n|)>> è <math|O<around*|(|h<around*|(|n|)>|)>>,
    allora <math|f<around*|(|n|)>> è <math|O<around*|(|h<around*|(|n|)>|)>>

    <item>Per ogni costante <math|k>, <math|k> è <math|O<around*|(|1|)>>

    <item>Per <math|m\<leqslant\>p>, <math|n<rsup|m>> è
    <math|O<around*|(|n<rsup|p>|)>>

    <item>Un polinomio di grado <math|m> è <math|O<around*|(|n<rsup|m>|)>>
  </itemize>

  <with|font-series|bold|Esempi>

  <\itemize>
    <item><math|2*n+3*n+2> è <math|O<around*|(|n|)>>

    <item><math|<around*|(|n+1|)><rsup|2>> è <math|O<around*|(|n<rsup|2>|)>>

    <item><math|2*n+10*n<rsup|2>> è <math|O<around*|(|n<rsup|2>|)>>
  </itemize>

  <subsection|Teorema>

  Per ogni <math|k>, <math|n<rsup|k>\<in\>O<around*|(|a<rsup|n>|)>>, per ogni
  <math|a\<gtr\>1>

  Una qualsiasi funzione polinomiale ha minore complessità di una qualsiasi
  funzione esponenziale

  <section|Complessità di un algoritmo ricorsivo>

  <subsection|Esempio: fattoriale di un numero>

  La funzione è definita come

  <\cpp-code>
    int fact (int n) {

    \ \ if (n == 0) return 1;

    \ \ else return n * fact(n-1);

    }
  </cpp-code>

  Consideriamo come base il valore 0:

  <\equation*>
    T<around*|(|0|)>\<in\>C<around*|[|<around*|[|n\<longequal\>0|]>|]>+C<around*|[|<around*|[|return
    1|]>|]>=O<around*|(|1|)>+O<around*|(|1|)>=O<around*|(|1|)>
  </equation*>

  Per <math|T<around*|(|n|)>>, se <math|n\<gtr\>0>, abbiamo un tempo
  <math|O<around*|(|1|)>> complessivo per il test, la chiamata ricorsiva e la
  moltiplicazione più il tempo per l'esecuzione applicata a <math|n-1>.
  Quindi

  <\equation*>
    T<around*|(|n|)>=O<around*|(|1|)>+T<around*|(|n-1|)>
  </equation*>

  A questo punto rimpiazziamo gli <math|O<around*|(|1|)>> di
  <math|T<around*|(|1|)>> e <math|T<around*|(|n|)>> con simboli generici di
  costante, diversi fra loro perchè corrispondono a pezzi di programma
  diversi, e abbiamo la seguente relazione di ricorrenza:

  <\equation*>
    T<around*|(|0|)>=a
  </equation*>

  <\equation*>
    T<around*|(|n|)>=b+T<around*|(|n-1|)><text| \ >per n\<gtr\>0
  </equation*>

  Proviamo a calcolare i valori di <math|T<around*|(|n|)>>:

  <\equation*>
    T<around*|(|1|)>=b+T<around*|(|0|)>=b+a
  </equation*>

  <\equation*>
    T<around*|(|2|)>=b+T<around*|(|1|)>=2*b+a
  </equation*>

  In generale, per <math|i\<geqslant\>0>, avremo
  <math|T<around*|(|i|)>=i*b+a>. Dimostriamo questo risultato con l'induzione
  naturale

  <\itemize>
    <item>Base. <math|i=0>. Abbiamo <math|T<around*|(|0|)>=0*b+a=a>

    <item>Induzione.

    Ipotesi. <math|T<around*|(|i|)>=i*b+a>

    Tesi. <math|T<around*|(|i+1|)>=<around*|(|i+1|)>*b+a>

    Dim.

    <\equation*>
      T<around*|(|i+1|)>=b+T<around*|(|i|)><text| per definizione di T>
    </equation*>

    <\equation*>
      =b+i*b+a<text| \ per ipotesi induttiva>
    </equation*>

    <\equation*>
      =<around*|(|i+1|)>*b+a
    </equation*>
  </itemize>

  Quindi, poiché <math|T<around*|(|n|)>=n*b+a>, abbiamo
  <math|T<around*|(|n|)>\<in\>O<around*|(|n|)>>

  <subsection|Dalla relazione di ricorrenza alla complessità>

  <\itemize>
    <item><math|T<around*|(|0|)>=a>

    <item><math|T<around*|(|n|)>=b+T<around*|(|n-1|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)> \<in\>O<around*|(|n|)>
  </equation*>

  <\itemize>
    <item><math|T<around*|(|1|)>=a>

    <item><math|T<around*|(|n|)>=b*n+T<around*|(|n-1|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)> \<in\> O<around*|(|n<rsup|2>|)>
  </equation*>

  <\itemize>
    <item><math|T<around*|(|1|)>=a>

    <item><math|T<around*|(|n|)>=b*n+2*T<around*|(|n/2|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)> \<in\> O<around*|(|n*log<around*|(|n|)>|)>
  </equation*>

  <\itemize>
    <item><math|T<around*|(|0|)>=a>

    <item><math|T<around*|(|n|)>=b+T<around*|(|n-1|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)> \<in\> O<around*|(|n|)>
  </equation*>

  <\itemize>
    <item><math|T<around*|(|0|)>=a>

    <item><math|T<around*|(|n|)>=b+T<around*|(|n/2|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)>\<in\>O<around*|(|log<around*|(|n|)>|)>
  </equation*>

  <\itemize>
    <item><math|T<around*|(|0|)>=a>

    <item><math|T<around*|(|n|)>=b+2*T<around*|(|n/2|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)> \<in\> O<around*|(|n|)>
  </equation*>

  <\itemize>
    <item><math|T<around*|(|1|)>=a>

    <item><math|T<around*|(|n|)>=b+2*T<around*|(|n-1|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)> \<noplus\>\<in\> O<around*|(|2<rsup|n>|)>
  </equation*>

  <\itemize>
    <item><math|T<around*|(|0|)>=d>

    <item><math|T<around*|(|n|)>=b*n<rsup|k>+T<around*|(|n-1|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)> \<in\> O<around*|(|n<rsup|k+1>|)>
  </equation*>

  <subparagraph|Esempio: fibonacci() ricorsivo>

  <\itemize>
    <item><math|T<around*|(|0|)>=T<around*|(|1|)>=d>

    <item><math|T<around*|(|n|)>=b+T<around*|(|n-1|)>+T<around*|(|n-2|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)>\<in\>O<around*|(|2<rsup|n>|)>
  </equation*>

  <with|font-series|bold|Esempio: fibonacci() non ricorsivo>

  <\itemize>
    <item><math|T<around*|(|0|)>=d>

    <item><math|T<around*|(|n|)>=b+T<around*|(|n-1|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)>\<in\>O<around*|(|n|)>
  </equation*>

  <subparagraph|Esempio: mergeSort()>

  <\itemize>
    <item><math|T<around*|(|0|)>=T<around*|(|1|)>=d>

    <item><math|T<around*|(|n|)>=b*n+2*T<around*|(|n/2|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)>\<in\>O<around*|(|n*log<around*|(|n|)>|)>
  </equation*>

  <subparagraph|Esempio: split()>

  <\itemize>
    <item><math|T<around*|(|0|)>=T<around*|(|1|)>=d>

    <item><math|T<around*|(|n|)>=b+T<around*|(|n-2|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)>\<in\>O<around*|(|n|)>
  </equation*>

  <with|font-series|bold|Esempio: merge()>

  <\itemize>
    <item><math|T<around*|(|0|)>=d>

    <item><math|T<around*|(|n|)>=b+T<around*|(|n-1|)>>
  </itemize>

  <\equation*>
    T<around*|(|n|)>\<in\>O<around*|(|n|)>
  </equation*>

  <subsection|Limiti inferiori delle funzioni>

  <\definition>
    <math|g<around*|(|n|)>> è di ordine <math|\<Omega\><around*|(|f<around*|(|n|)>|)>>
    se esistono un intero <math|n<rsub|0>> ed una costante <math|c\<gtr\>0>
    tali che per ogni <math|n\<geqslant\>n<rsub|0>> :
    <math|g<around*|(|n|)>\<geqslant\>c*f<around*|(|n|)>>
  </definition>

  <\definition>
    Un problema è di ordine <math|\<Omega\><around*|(|f<around*|(|n|)>|)>> se
    non è possibile trovare un algoritmo che lo risolva con complessità
    minore di <math|f<around*|(|n|)>> (tutti gli algoritmi che lo risolvono
    hanno complessità <math|\<Omega\><around*|(|f<around*|(|n|)>|)>>)
  </definition>

  Si applica soltanto agli algoritmi

  <\itemize>
    <item>Basati su confronti

    <item>Che hanno complessità proporzionale al numero di confronti che
    vengono effettuati durante l'esecuzione dell'algoritmo
  </itemize>

  <subsubsection|Alberi di decisione>

  <\definition>
    L'albero di deciione è un albero binario che corrisponde all'algoritmo
  </definition>

  <\itemize>
    <item>Ogni foglia rappresenta una soluzione per un particolare assetto
    dei dati iniziali

    <item>Oni cammino dalla radice ad una foglia rappresenta una esecuzione
    dell'algoritmo (sequenza di confronti) per giungere alla soluzione
    relativa alla foglia
  </itemize>

  <\corollary>
    Ogni algoritmo che risolve un problema che ha <math|s<around*|(|n|)>>
    soluzioni ha un albero di decisione con almeno <math|s<around*|(|n|)>>
    foglie
  </corollary>

  <\corollary>
    Un algoritmo ottimo nel caso peggiore (medio) ha il più corto cammino
    max(medio) dalla radice alle foglie
  </corollary>

  <\corollary>
    Un albero binario con <math|k> livelli ha al massimo <math|2<rsup|k>>
    foglie (ce l'ha quando è bilanciato)
  </corollary>

  <\corollary>
    Gli alberi binari bilanciati minimizzano sia il caso peggiore che quello
    medio: hanno <math|log<around*|(|s<around*|(|n|)>|)>> livelli.
  </corollary>

  \;

  \;

  <section|Algoritmi di ordinamento>

  <subsection|Merge sort>

  (necessita di revisione, probabilmente è sbagliato)

  <\cpp-code>
    void mergeSort(int * arr, int start, int end) {

    \ \ int mid;

    \ \ if (start \<less\> end) {

    \ \ \ \ mid = (start + end) / 2;

    \ \ \ \ mergeSort(arr, start, mid);

    \ \ \ \ mergeSort(arr, mid + 1, end);

    \ \ \ \ combina(arr, start, mid+1, end);

    \ \ }

    }
  </cpp-code>

  <\cpp-code>
    void combina(int arr[], int start, int mid, int end) {

    \ \ int iSx = start, iDx = mid;

    \ \ std::vector\<less\>int\<gtr\> tempResult;

    \ \ while (1) {

    \ \ \ \ if (arr[iSx] \<less\> arr[iDx]) {

    \ \ \ \ \ \ tempResult.push_back(arr[iSx++]);

    \ \ \ \ }

    \ \ \ \ else {

    \ \ \ \ \ \ tempResult.pushBack(arr[iDx++]);

    \ \ \ \ }

    \ \ }

    }
  </cpp-code>

  <subsection|Insertion sort>

  [necessita di revisione]

  <\cpp-code>
    void insertSort(int x[], int n) {

    \ \ int i;

    \ \ int j;

    \ \ int app;

    \ \ for (i = 1; i \<less\> n; i++) {

    \ \ \ \ app = x[j];

    \ \ \ \ j = i - 1;

    \ \ \ \ while (j \<gtr\>= 0 && x[j] \<gtr\> app) {

    \ \ \ \ \ \ x[j+1] = x[j];

    \ \ \ \ \ \ j--;

    \ \ \ \ }

    \ \ \ \ x[j+1] = app;

    \ \ }

    \ \ return;

    }
  </cpp-code>

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

  <subsubsection|Compito 2 - Esercizio 4>

  Scrivere una funzione che, dato un albero binario ad etichette di tipo
  string, con puntatore alla radice t, restituisca come risultato il numero
  di nodi che hanno numero dispari di discendenti. Si calcoli la complessità
  della soluzione proposta in funzione del numero di nodi dell'albero.

  <\cpp-code>
    int dispari(Node* t, int & nodi) {

    \ \ if (!t) {

    \ \ \ \ nodi = 0;

    \ \ \ \ return 0;

    \ \ }

    \ \ int cs, cd, nodis, nodid;

    \ \ cs = dispari(t -\<gtr\> left, nodis);

    \ \ cd = dispari(t -\<gtr\> left, nodid);

    \ \ nodi = nodis + nodid + 1;

    \ \ return cs + cd + ((nodis + nodid) % 2);

    }
  </cpp-code>

  La funzione è <math|O<around*|(|n|)>>

  <subsubsection|Compito 1 - Esercizio 4>

  Scrivere una funzione ricorsiva che, dato un albero binario a etichette
  intere, conta il numero di nodi che hanno più foglie maggiori o uguali a
  zero che minori di zero tra i propri discendenti.

  <\cpp-code>
    int conta(const Node * t, int & pos, int & neg) {

    \ \ if (!t) {

    \ \ \ \ pos = 0;

    \ \ \ \ neg = 0;

    \ \ \ \ return 0;

    \ \ }

    \ \ if (!t -\<gtr\> left && !t -\<gtr\> right) {

    \ \ \ \ pos = (t -\<gtr\> info \<gtr\>= 0) ? 1 : 0;

    \ \ \ \ neg = (t -\<gtr\> info \<less\> 0) \ ? 1 : 0;

    \ \ \ \ return 0;

    \ \ }

    \ \ int pos_left, pos_right;

    \ \ int neg_left, neg_right;

    \ \ int conta_left = conta(t -\<gtr\> left, pos_left, neg_left);

    \ \ int conta_right = conta(t -\<gtr\> right, pos_right, neg_right);

    \ \ pos = pos_left + pos_right;

    \ \ neg = neg_left + neg_right;

    \ \ return (pos \<gtr\> neg) ? 1 : 0 + conta_left + conta_right;

    }
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

  <subsubsection|Compito 1 - Esercizio 5>

  Scrivere una funzione che, dato un albero generico a etichette intere e
  memorizzazione figlio-fratello, conta il numero di nodi che hanno più figli
  maggiori o uguali a zero che minori di zero.

  <\cpp-code>
    int conta(const Node* t) {

    \ \ if (!t) return 0;

    \ \ const Node * n;

    \ \ int pos = 0, neg = 0;

    \ \ for (n = t -\<gtr\> left; n != NULL; n = n -\<gtr\> right) {

    \ \ \ \ if (n -\<gtr\> info \<gtr\>= 0) pos++;

    \ \ \ \ else neg++;

    \ \ return (pos \<gtr\> neg) ? 1 : 0 + conta(t -\<gtr\> left) + conta(t
    -\<gtr\> right);

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

  <subsubsection|Restituire l'etichetta del nodo più piccolo di un albero ed
  eliminare il nodo che la contiene>

  <\cpp-code>
    void deleteMin(Node *& tree, InfoType &m) {

    \ \ if (tree -\<gtr\> left) // C'è un nodo più piccolo

    \ \ \ \ deleteMin(tree -\<gtr\> left, m);

    \ \ else {

    \ \ \ \ m = tree -\<gtr\> label; // restituisco l'etichetta

    \ \ \ \ Node * a = tree;

    \ \ \ \ // connetto il sottoalbero destro di

    \ \ \ \ // m al padre di m

    \ \ \ \ tree = tree -\<gtr\> right;

    \ \ \ \ // elimino il nodo

    \ \ \ \ delete a;

    \ \ }

    }
  </cpp-code>

  <subsubsection|Cancellare un nodo ?>

  <\cpp-code>
    void deleteNode(InfoType n, Node *& tree) {

    \ \ if (tree) {

    \ \ \ \ // n è minore della radice

    \ \ \ \ if (n \<less\> tree -\<gtr\> label) {

    \ \ \ \ \ \ deleteNode(n, tree -\<gtr\> left);

    \ \ \ \ \ \ return;

    \ \ \ \ }

    \ \ \ \ // n è maggiore della radice

    \ \ \ \ if (n \<gtr\> tree -\<gtr\> label) {

    \ \ \ \ \ \ deleteNode(n, tree -\<gtr\> right);

    \ \ \ \ \ \ return;

    \ \ \ \ }

    \ \ \ \ // n non ha figlio sinistro

    \ \ \ \ if (!tree -\<gtr\> left) {

    \ \ \ \ \ \ Node * a = tree;

    \ \ \ \ \ \ tree = tree -\<gtr\> right;

    \ \ \ \ \ \ delete a;

    \ \ \ \ \ \ return;

    \ \ \ \ }

    \ \ \ \ // n non ha figlio destro

    \ \ \ \ if (!tree -\<gtr\> right) {

    \ \ \ \ \ \ Node * a = tree;

    \ \ \ \ \ \ tree = tree -\<gtr\> left;

    \ \ \ \ \ \ delete a;

    \ \ \ \ \ \ return;

    \ \ \ \ }

    \ \ \ \ // n ha entrambi i figli

    \ \ \ \ deleteMin(tree -\<gtr\> right, tree -\<gtr\> label);

    }
  </cpp-code>

  Questo algoritmo ha complessità <math|O<around*|(|log<around*|(|n|)>|)>>

  <section|Heap>

  <\definition>
    Un heap è un albero binario quasi bilanciato con le seguenti proprietà:

    <\itemize>
      <item>i nodi dell'ultimo livello sono addossati a sinistra

      <item>in ogni sottoalbero l'etichetta della radice è maggiore o uguale
      a quella di tutti i discendenti
    </itemize>
  </definition>

  L'heap viene memorizzato in un array

  <subsection|Calcolare le parentele>

  <\itemize>
    <item>Figlio sinistro di <math|i> = <math|2*i+1>

    <item>Figlio destro di <math|i=2*i+2>

    <item>Padre di <math|i=<frac|i-1|2>>
  </itemize>

  <subsection|Classe Heap>

  <\cpp-code>
    class Heap {

    \ \ private:

    \ \ \ \ int * h;

    \ \ \ \ int last;

    \ \ \ \ void up(int);

    \ \ \ \ void down(int);

    \ \ \ \ void exchange(int i, int j);

    \ \ public:

    \ \ \ \ Heap(int);

    \ \ \ \ ~Heap();

    \ \ \ \ void insert(int);

    \ \ \ \ int extract();

    };
  </cpp-code>

  <subsubsection|Costruttore>

  <\cpp-code>
    Heap::Heap(int n) {

    \ \ h = new int[n];

    \ \ last = -1;

    }
  </cpp-code>

  <subsubsection|Distruttore>

  <\cpp-code>
    Heap::~Heap() {

    \ \ delete h [n];

    }
  </cpp-code>

  <subsubsection|Inserimento>

  <\itemize>
    <item>Memorizza l'elemento nella prima posizione libera dell'array

    <item>Fa risalire l'elemento tramite scambi figlio-padre per mantenere la
    proprietà dello heap
  </itemize>

  <\cpp-code>
    void Heap::insert(int x) {

    \ \ h[++last] = x;

    \ \ up(last);

    }
  </cpp-code>

  <\cpp-code>
    // i è l'indice dell'elemento da far risalire

    void Heap::up(int i) {

    \ \ // Se non sono sulla radice

    \ \ if (i \<gtr\> 0) {

    \ \ \ \ // Se l'elemento è maggiore del padre

    \ \ \ \ if (h[i] \<gtr\> h[(i-1)/2]) {

    \ \ \ \ \ \ // Scambia il figlio con il padre

    \ \ \ \ \ \ exchange(i, (i-1)/2);

    \ \ \ \ \ \ // chiama up sulla nuova posizione

    \ \ \ \ \ \ up((i-1)/2);

    \ \ \ \ }

    \ \ }

    }
  </cpp-code>

  La funzione termina in due casi:

  <\itemize>
    <item>viene chiamata con l'indice 0 (radice)

    <item>L'elemento è inferiore al padre
  </itemize>

  La complessità è <math|O<around*|(|log<around*|(|n|)>|)>> perché ogni
  chiamata risale di un livello

  <subsubsection|Estrazione>

  <\itemize>
    <item>Restituisce il primo elemento dell'array

    <item>Mette l'ultimo elemento al posto della radice e decrementa last

    <item>Fa scendere l'elemento tramite scambi padre-figlio per mantenere la
    proprietà dello heap
  </itemize>

  <\cpp-code>
    int Heap::extract() {

    \ \ int r = h[0];

    \ \ h[0] = h[last--];

    \ \ down(0);

    \ \ return r;

    }
  </cpp-code>

  <\cpp-code>
    // i è l'indice dell'elemento da far scendere

    void Heap::down(int i) {

    \ \ // son = indice del figlio sinistro (se esiste)

    \ \ int son = 2*i+1;

    \ \ // se i ha un solo figlio (è l'ultimo dell'array)

    \ \ if (son == last) {

    \ \ \ \ // se il figlio è maggiore del padre

    \ \ \ \ if (h[son] \<gtr\> h[i]) {

    \ \ \ \ \ \ // fai lo scambio, altrimenti termina

    \ \ \ \ \ \ exchange(i, last);

    \ \ \ \ }

    \ \ }

    \ \ // se i ha entrambi i figli

    \ \ else if (son \<less\> last) {

    \ \ \ \ // son = indice del figlio maggiore tra i due

    \ \ \ \ if (h[son] \<less\> h[son+1]) son++;

    \ \ \ \ // se il figlio è maggiore del padre

    \ \ \ \ if (h[son] \<gtr\> h[i]) {

    \ \ \ \ \ \ // fai lo scambio

    \ \ \ \ \ \ exchange(i, son);

    \ \ \ \ \ \ // chiama down sulla nuova posizione

    \ \ \ \ \ \ down(son);

    \ \ \ \ \ \ // altrimenti termina (termina anche se i non ha figli)

    \ \ \ \ }

    \ \ }

    }
  </cpp-code>

  L'algoritmo ha complessità <math|O<around*|(|log<around*|(|n|)>|)>>

  <section|Ricerca hash>

  <subsection|Alcuni algoritmi>

  <subsubsection|Ricerca tramite hash>

  <\cpp-code>
    bool hashSearch (int* A, int k, int x) {

    \ \ int i = h(x);

    \ \ if (A[i] == 1) return true;

    \ \ else return false;

    }
  </cpp-code>

  <subsection|Metodo hash ad accesso non diretto>

  È possibile rilasciare l'iniettività e permettere che due elementi diversi
  abbiano lo stesso indirizzo hash. Si ha una collisione quando

  <\equation*>
    h<around*|(|x<rsub|1>|)>=h<around*|(|x<rsub|2>|)>
  </equation*>

  Bisogno gestire le seguenti situazioni:

  <\itemize>
    <item>Come cercare un elemento se il suo posto è occupato da un altro

    <item>Come inserire gli elementi
  </itemize>

  <subsubsection|Soluzione: hash modulare>

  Si scrive una funzione <math|h<around*|(||)>>\ 

  <\equation*>
    h<around*|(|x|)>=<around*|(|x<text| % >k|)>
  </equation*>

  In modo tale da essere sicuri di generare tutti e soli gli indici
  dell'array

  <paragraph|Legge di scansione lineare>Se non si trova l'elemento al suo
  posto, lo si cerca nelle posizioni successive fino a trovarlo o ad
  incontrare una posizione vuota.

  L'inserimento è fatto con lo stesso criterio

  <subparagraph|Agglomerato>Gruppo di elementi con indirizzi hash diversi (?)

  La presenza di collisioni ed agglomerati aumenta il tempo di ricerca

  <paragraph|Funzione di ricerca con scansione lineare>

  <\cpp-code>
    bool hashSearch(int *A, int k, int x) {

    \ \ int i = h(x);

    \ \ for (int j=0; j\<less\>k; j++) {

    \ \ \ \ int pos = (i+j) % k;

    \ \ \ \ if (A[pos] == -1) return false;

    \ \ \ \ if (A[pos] == x) return true;

    \ \ }

    \ \ return false;

    }
  </cpp-code>

  <paragraph|Funzione di inserimento in presenza di cancellazioni>

  <\cpp-code>
    int hashInsert(int *A, int k, int x) {

    \ \ int i = h(x);

    \ \ for (int j=0; j \<less\> k; j++) {

    \ \ \ \ int pos = (i+j) % k;

    \ \ \ \ // -1: posizione vuota

    \ \ \ \ // -2: posizione disponibile

    \ \ \ \ if ((A[pos] == -1) \|\| (A[pos] == -2)) {

    \ \ \ \ \ \ A[pos] = x;

    \ \ \ \ \ \ return 1;

    \ \ \ \ }

    \ \ }

    \ \ return 0;

    }
  </cpp-code>

  <section|Grafi>

  <\equation*>
    <text|Grafo orientato>=<around*|(|N,A|)>
  </equation*>

  dove

  <\enumerate>
    <\itemize>
      <item><math|N=>insieme di nodi

      <item><math|A\<subseteq\>N*\<times\>N> = insieme di archi (coppie
      ordinate di nodi)
    </itemize>
  </enumerate>

  Un grafo orientato con <math|n> nodi ha al massimo <math|n<rsup|2>> archi

  <subsection|Rappresentazioni in memoria di grafi>

  <subsubsection|Tramite liste di adiacenza>

  <\cpp-code>
    struct Node {

    \ \ int NodeNumber;

    \ \ Node * next;

    };

    \;

    Node* graph[N];
  </cpp-code>

  <subsubsection|Tramite matrici di adiacenza>

  <\cpp-code>
    int graph[N][N];
  </cpp-code>

  <subsection|Rappresentazioni in memoria di grafi con nodi ed archi
  etichettati>

  <subsubsection|Tramite liste di adiacenza>

  <\cpp-code>
    struct Node {

    \ \ int NodeNumber;

    \ \ ArcType archLabel;

    \ \ Node * next;

    };

    \;

    Node * graph[N];

    \;

    NodeType nodeLabels[N];
  </cpp-code>

  NodeType = char

  ArcType = int

  <subsubsection|Tramite matrici di adiacenza>

  <\cpp-code>
    ArcType graph[N][N];

    NodeType nodeLabels[N];
  </cpp-code>

  <subsection|Cammino più breve>

  <subsubsection|Algoritmo di Dijkstra>

  <\itemize>
    <item>Si applica ai grafi orientati

    <item>Trova i cammini minimi <with|font-series|bold|da un nodo a tutti
    gli altri>

    <item>È basato sulla metodologia <with|font-series|bold|greedy>
  </itemize>

  Vengono utilizzate due tabelle:

  <\itemize>
    <item><with|font-series|bold|dist> (distanza)

    <item><with|font-series|bold|pred> (predecessore)
  </itemize>

  con <math|n> elementi.

  Vengono eseguiti <math|n> passi, e ad ogni passo:

  <\enumerate>
    <item>Si sceglie il nodo con distanza minore in
    <with|font-series|bold|dist>

    <item>Si aggiornano <with|font-series|bold|pred> e
    <with|font-series|bold|dist> per i suoi immediati successori
  </enumerate>

  <section|Esercizi>

  <subsection|Più lunga sottosequenza comune (PLSC)>

  <with|font-series|bold|Metodo pratico>

  <\enumerate>
    <item>Si inseriscono gli 0

    <\equation*>
      L<around*|(|0,0|)>=L<around*|(|i,0|)>=L<around*|(|0,j|)>=0
    </equation*>

    <item>Riempio la tabella partendo dagli indici più piccoli considerando i
    due casi:

    <\itemize>
      <item>Se <math|a<rsub|i>=\<beta\><rsub|j>>\ 

      <\equation*>
        L<around*|(|i,j|)>=L<around*|(|i-1,j-1|)>+1
      </equation*>

      <item>Se <math|a<rsub|i>\<neq\>\<beta\><rsub|j>>

      <\equation*>
        L<around*|(|i,j|)>=max<around*|(|L<around*|(|i,j-1|)>,L<around*|(|i-1,j|)>|)>
      </equation*>
    </itemize>
  </enumerate>

  \;

  Equazione di ricorrenza: <math|T<around*|(|n|)>=b+2*T<around*|(|n-1|)>>

  <image|<tuple|<#89504E470D0A1A0A0000000D494844520000015E0000011308060000007EED6EA80000000473424954080808087C086488000000097048597300000EC400000EC401952B0E1B0000200049444154789CED9D7B5C5465FEC73FC35DEE0CE065B4C4565307D76229574358520675BDD4669ADAE2AF762BCB52FBB956229A996569B9590BDD48E89768D8929A84AE209BA1A8248280695E120924B9C3000E03CC3CBF3F4ECC7066868101E69C67E479BF5EF392EF79CE9C797B66E63BE73CE739DF474208216030180C8660D8892DC0603018030D9678190C06436058E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C1101807B105180387FCFC26AC5C794517AF5C39020B16F88B68441F6C1F0D0C58E2650886564BA0526975715B1B11D1864ED83E1A18B0AE060683C110189678190C0643605857C3008110E0CC99466465D5E3EA5515944A0D5C5C24B8F34E1784857963EA542F38394904F7AAAD6DC3575F55212FAF112D2D5A04040CC2C285FE9830C14D90D76F6D25484BABC1952B2A5455B5A2B6B61D8D8DDCBEF1F373825CEE8A59B3A4183EDC59101F53B07DD435B47EAEBB434208619D48B7391515AD58B7AE1805054D5DAE336B96149B378FB2AAC7D9B38D58B6ECB22E9E3CD9134545CD686ED6F0D6B3B303DE7CF32E28143E56F50180CACA56FCF9CF4566D7B1B79760C386919833C7D7EA3E6C1FF51C5A3ED7BD817535DCE6DCBAA5C1B3CF5EE67D38EDEC803BEF74C6E0C18EBA651A8DF0BFBFA74F2BD1DCAC819D1DFF8844AB05DE7CB3044A65BB602E120970D75D83F0C0035E080EF680B7B7FE6450A32178EBAD5FD0D0209C4F076C1F9986E6CF754F605D0DB7399F7F7E13A5A56A5D7CCF3DEE78FBEDBBE0EFCF7D38AF5E55E1DD774B45710B0BF3C6AA55C371C71D2E282D6DC12BAF5CC3D5AB2A0040539306E9E97578F451EB0EA57273B3C7BA7577223CDC1B52A9FE0BABD5029B375F476A6A0D0040ADD6A2A0A0096161DE56F53184ED23D3D0FCB9EE092CF1DEE61C3952A7FBDBC14182CD9B47E93E9C00307AF4207CF8E1DD282B539B7ABA55B9EF3E0F8C1CE902001839D205CB970FC7EAD55775ED8585CD822495471EE15E43A9D4E0E79F55A8AC6C4575751B6EDDD2F2D6552A35A6366155D83E320DCD9FEB9EC012EF6D4C6B2BC18D1BFA0FDEC8912E90C99C8CD6EB3845139B71E306F1E2EAEA36415EF7C489062424FC8AA2A26698BBE241C3D510B68F6CEF736D0A96786F635A5AF847239E9EF62299F40C0707E1AF3EEFDF5F8D37DF2CE12D1B31C21923463843AB25F8E18746C19DCCC1F691ED7DAE4DC112EF6D8C87873D1C1D25BABB9F683DEDEAC0D0AFF345126B40081017774317FBF939E2E38FEF464000776A7FF2A492BAC4CBF691ED7DAE4DC14635DCC64824405090872EAEAA6A435A5A8DD17AE7CF372331F1A6906A461002242555F29605077B74B176FF5057D786FA7AFD55F87BEE71D725141A61FB88C3963ED75DC18E786F73A2A286E0871F94BA78D3A6EBC8CB6BC23DF7B8A1B595E0DCB9266464D461FA7461AFD603C077DF7117485A5AB43879B201E7CEE98706F9FB3B2232D2BA63545D5DED616F2FD10D39CAC951E2C8915ADC718733AE5E6DC1E79F8BFFA565FBC834347FAE7B024BBCB73953A678E2A9A786E1B3CF7E05C00D01FAE69B6A7CF34DB5C8665C25AEFC7CE3C1EF4E4E7678E38D517076B6EE09998B8B1D66CC90E2D021EE68A9A949839898629E87D8B07D641A9A3FD73D41FC4F16C3EA3CFBAC0C1F7C3006F7DEEB0E89896B33A346B9083E3E1500C2C2BC8CAE46CBE56EF8F4D3BBAD7E0ADD4174F49D8888E01F353A3848F0F0C37E78EDB59182389883EDA3AEA1F573DD13D82DC3038CC6460D8A8BB97BDA3D3DED3174A813060F361E8A2314840035356DA8A9698354EAC81B8B2924E5E5AD282E56C1C5C50E77DFED0A0F0F7AAE94B37DD43DB47DAEBB83255E0683C11018D6D5C060301802C3122F83C160080C4BBC0C068321302CF132180C86C0B0C4CB60301802C3122F83C160080C4BBC0C068321302CF132180C86C0B0C4CB60301802C38AE4F481FAFA7AA4A7A7E3C2850B502A95F0F6F646606020222323E1E121CC7DF4B6E245A313AD5E343AD1EA45A3538F208C5E111717473C3C3C0800A387542A25494949CC8B62275ABD6874A2D58B46A79EC2126F2F888F8F37F966777E48241292929232E0BD6874A2D58B46275ABD6874B20496782DA4A1A181F8F8F8F0DEDCE8E86872F8F061F2C20B2FF0DE78994C46D46AF580F5A2D189562F1A9D68F5A2D1C95258E2B5905DBB76F1DED8C58B17F3DA23222278ED870E1D1AB05E343AD1EA45A313AD5E343A590A1BD56021274E9CE0C50F3DF4102F7EF8E18779F1F1E3C7ADEE04D0E945A31340A7178D4E009D5E343A590A4BBC1672F9F2655E3C66CC185E3C7AF468B3EB5B0B1ABD687432F53A3478D1E864EA7568F0A2D1C95258E2B590FAFA7A5EECE3E36336AEABABB3BA1340A7178D4E009D5E343A01747AD1E864292CF15A885AADE6C50E0E0E6663C3F5AD058D5E343A997A1D1ABC687432F53A3478D1E864292CF15A88ABAB2B2F367C530D63373737AB3B01747AD1E804D0E945A31340A7178D4E96C212AF85F8FBFBF3E2CACA4A5E5C5151C18B870C19627527804E2F1A9D003ABD687402E8F4A2D1C95258E2B590B163C7F2E2A2A2225E5C5050C08BE572B9D59D003ABD687402E8F4A2D109A0D38B46278B117B3C9BAD919696C61B233869D224D2DEDE4E082144A55291D1A347F3DA73737307AC178D4EB47AF59B53B39290965BF479F523343A590A4BBC16D2DADA4AC68C19C37B63A74C99425E79E515121414C45B1E1C1C3CA0BD6874A2D5ABDF9C629610B2404EC8CFE7E9F2EA476874B21496787BC1891327C8A04183786FB0E1C3CBCB8BE4E5E50D782F1A9D68F5EAB3D3D79F10120CEE11EA41C891643ABCAC008D4E96C0126F2F3973E60C090D0D25128984F766DBD9D911854241CE9FEF9F238EDBC18B46275ABDFAE4545B49C8F391FAE41B0C423644F54BD7C36DB7AF444642082160F49ACACA4A5CBA74094AA5125E5E5E183F7E3C7C7D7DC5D6A2D28B46275ABD7AED4408F0C536202E06D06AB865638380B7BF02EE186DFEB9D6F4B222343A75074BBC0CBA51AB00891DE0E42CB6896D91FB1D10B304A8B9C9C56E9EC0FA7840B1505C2F0600369C8C413B5B5F00FEF600507A556C13DBE2BE07812F0B8049115CDCAC04A21F03B62C03DA5AC57563B0C4CBA098C3BB818309C04F7940D47DC07FF7896D645B480703B1FF019ED908D8FDF655DFF729F74376E39AB86E031C967819F4F2C708FD115B5303F0F27C76C4662976F6C033AF01B1E980F4B73BB82E9E051EFF03909922AADA4086255E06BD4887B023B6FE62D274202917B827848B9B1A80B50B817757E97FC86A6E021FBC229EE300825D5C63D8063F6402EB1F076A7FBB0FDFCD13D8F01910B1405C2F5B43D30EEC7C03F86C33A0D572CBE4F7035BBE04DE7C0638FB3D907201B8F36E713D6F7358E265D80E956540F422A0209B8B2512E0B115C0AA7700472771DD6C8DAC83C06B4F00CADF6AD53A3AE98F7CE73E016C4C14CB6C40C0122FC3B63079C4761F374E55364A5C375BE3E62FC0BA4540E129FE723B7B20E52270E718D3CF63F419D6C7CBB02DEC1DB88B45DBBF013CA5DCB20BB9C09220E0BF5F8BAA66730CBD13786337E0E0C85FAED500FFB7551CA701024BBC0CDB24740EF0E53960E2035CDCD400BCB280BB58D4DEC62D2BFB19487C4B3C47DAD1B473DD0D1DFBAB33695F00E5D785361A30B0AE863E505F5F8FF4F4745CB870014AA512DEDEDE080C0C446464243C3C3C9893105E1D5D0FF1AF73B7CB02DCC5A2CDBBB88B71D77F02BEB9C68D69ED82DCDC5C94959501007C7D7D111A1ADA7B9F7EC4EA5EA557813DEF01970B80AB45DC4D169D796419B0EE63619D7A09AD5E5D224E8908DB272E2E8E78787898AC8A24954A495252127312D2EBD801421EF4D1178799E4A0FFFBBD7F74F9B4D6D656326EDC389D4F484848DF5DFA01C1BDB45A42CA7E26E4BFFB08F9E435425E7A849047C71352512A9E530FA1D5CB1C2CF1F682F8F878B3E5E8001089444252525206B493E05EBF9610F2E4147E75AE601032C58590CA1BBAD5EAEAEAC8912347485C5C1C993C7932CF45CC2F2D8D5E343AD1ECD55358E2B590868606E2E3E3C34B1AD1D1D1E4F0E1C3E485175EE07D0064321951ABD503D24934AF6B1708B9DFDE38F9BEBB4AB74A464646973F02627E6969F4A2D18966AF9EC29F0799465AD55C47FF9542A0EA06505B0934D6032E83003F19379468D6E3C0F0BB04D13978F020EAEAEA74F1A2458BB065CB1600C0CC9933F1D34F3FE1E8D1A30080F2F27264666662D6AC5903CE4914AF5635F06A94BE1C6267BEFE0458FA32E02FEBFDF6198C7E82FE510DF555DC1D355FC502DFEDE706CF5FFB911B42947510F8F855E091B1C0B7FF2788CE89132778F1430F3DC48B1F7EF8615E7CFCF8F101E90488E0557C010818078C99683C44AAB54537C2E10F7FF80332323290919181D4D4D4BEBD663F42A3178D4E00BD5E3D85FE23DE0E241260949C1B7BA856013F9F07EAABB9364D3BF0D673DC10232FEB1640BE7CF9322F1E33863FC87CF4687EB169C3F5078A93A9D7B1BAD7D820607312F7B7A61D28B9045CBBC0FD505F3C0B9CC9042ACB201D3C0211115CF19DA6A6A6BEBD663F22954AA9F3A2D109A0D7ABA7D09F78DD3CB9212DE10FEBAB2B01DC5D4B9BFF0EA47ECEC56A1577341C36CFAA3AF5F5F5BCD8C7C7C76CDCF9547B203901227BD93B007705720F74AAE7D071B71B832122B691781F59C6FDADACE38E742BCB80EA5F815B06BF744AEB2714B55ACD8B1D1C1CCCC686EB0F142753AF4385971DFDBD6B8CDB1FFA132F009C480312DE048A4EEB07C99B42807B415C5D5D79B161B2308CDDDCDC06A41340AF17832136F4FFFCEF8F075E9CC315F2E848AC237E074C8EE46A8C0A8CBFBF3F2FAEACACE4C5151515BC78C89021B036343A01F47A3118624377E22504885BA78FFD867155930E5C05628F007F5D23B8D2D8B16379715151112F2E2828E0C572B97C403A01F47A3118624377E2ADABD48F5C00B8EAF901E3C4F301A050287871424202341A6EDC684B4B0B929292CCAE3F509C68F66230C486EE3E5E570FEEEAB4A69D8B733280235F02778C06AE9E073E7F5B70258542813163C6E0CA952B00801F7EF801A1A1A1080B0B437A7A3AAE5ED5CF861B1C1C8CE0E0E001E944B357515111366DDA0400BA1F820E7EFAE9273CFAE8A300004F4F4F24242408E244AB178D4E347BF518B16F9DEB960D51C6B77F76BE07BF737C305110A513274E9041830699AD3FE0E5E545F2F2F204F1A1D589562F73B79B767EF8FAFA0AE644AB178D4E347BF514BABB1A0020FA23E379B51C1C81879F025E4B144529242404595959080D0D854422E1B5D9D9D941A150203B3B1B41414103DA89662F06434C6CA71E6FF975EE96501757E0EE7B010F6FB18D007057EA2F5DBA04A552092F2F2F8C1F3F1EBEBED6BD7BCE169D68F6623084C676122F83C160DC26D0DFD5C0603018B7192CF132180C86C0B0C4CB60301802C312EF40A6550D7CF00A57589ED13DAD2DDCFE6A6A10DB8461E3B0C43B90D9F10FE08B6DC0E27BB802440CF3BCBB4ABFBFCEE7886DC3B06158E21DA8342B8193FFE1FEBEF90BB02C1CD8FB2F5195A84659079CCEE0FEFEB50478261C48F948542586EDC212EF40C5CD13D89D07443EC6C5AD6AE09D95C09ABF0852D7D8E6F0F401BE3CA7BF99A7B505787B39F0D223ACAB8661316C1C2F03D8F729F0EE4A2EF902C0B091C05B7B81097F14D78B56F67D0ABCB302686BE5E23BC7006FFF1BB8FB1E71BD183603FD8937FF38B0B2D3CCB32BB7010B968BE763407D7D3DD2D3D371E1C20528954A787B7B23303010919191F0F0F0B01DA79FF280B50B81B29FB9D8C91958B11558BCAADFFD7273735156560600F0F5F545686868BFBF86A558EC742117887E0CB8718D8B9D5C80156FF7797FA9542AE4E4E4E0FCF9F3B879F326D46A35BCBDBD2197CBA15028E0EEEEDEA7EDDF4E5E343AF518F1CA44F490DCEFF8857076BF27B6918EB8B838E2E1E161B23887542A25494949B6E5D4D440C82B0BF8FB7BCD5F0851D6F59B5F6B6B2B19376E9CCE292424A4DFB62DB853633D212FCDE7EFAFF58F13D2DCD82B8F989818E2ECECDC65C117777777B263C78E5E6DBB2FD0E845A39325B0C4DB4BE2E3E3BBAD8C249148484A4A8AED397DFD0921939DF4FBFC2F6308B974AED75E757575E4C89123242E2E8E4C9E3C99E72356E2ED3727AD96903D3BF8FBEB91B1845C2EB0D869F6ECD93DAAB815171767F1B6FB028D5E343A59024BBCBDA0A1A181F8F8F8F09259747434397CF83079E18517786FBC4C26236AB5DAF69C8A4E133267A47EBF3F3088907D9FF2D7C9CBEA919BB9127E6225DE7E772AC826E4CF77E8F757882B21DF24F0D739FBBDD94D74249309132690E8E868121B1B4B5E7AE92522954A797E43860C211A8DC672C75E42A3178D4E96609B89B7E626211F6D20E4E93042A2EEE36AF6169D164C69D7AE5DBC3777F1E2C5BCF68888085EFBA143876CD3A9B19E90971F357D2A5D728990500F424EA475BB990191780921A4BE9A90957FE6EFAF0D5184DC6A22E46A11978C4FA777F9F4F5EBD793949414A2D56A79CB0B0B0B8D1C4B4A4A7AE7D80B68F4A2D1C9126C2FF13E1F494898A77151F4FBED0849DF2B88D2B265CB786F6C727232AF3D363696D71E1D1D6DBB4E5A2D215FBC43C81F1DF5FB7AFE384216C8B9BFA3EEE3D631434D4D0DC9C8C820191919243535958AC46B3527AD9690C4B70899E4A0DF5F0B02B9EE876010F2E4945E6D76E8D0A13CC7D2D2D2DE3BF623347AD1E86408DD53FF98E2743AF7AF9D3DA0ED34E587560BBCF90CF0C708C0536A5585CB972FF3E23163C6F0E2D1A3479B5DDFA69C2412206A0D70CF0340F422A0A214B8FE93BEFD422E703C15089BD7E526A4522922222200004D4D4D3D7B5D2B633527890478622D373F60CC62A0F20670ED477D7BE129E0E461E081595D6FC3808686065457EBE71EF4F6F6864C26EB3FE75E42A3178D4EA6B0BD1B28C2E6015FFF049C6EE5FE1DFD7B7D5B530390BED7EA0AF5F5FC01F33E3E3E66E3BA3AEBDF906075A7890F007BF281F126E645FBE43580F251898213140AECCE373DB6F793D72CDAD4B66DDBD0DEDEAE8B972E5D0A3B3BF1BFBA347AD1E8640AFA8CBAE3BE07819163013B3BEEDFE56FF2DB0B4F595D41AD56F362070707B3B1E1FA36EB545BC93FDAEDE0523E70EC80E5DBBBDDA9B909FC72C578F98F3F00C7BFEDD1260E1F3E8CAD5BB7EA62994C868D1B37F69761AFA1D18B46A7AEB0BDC46BC83883B9BAAA7FB5FA4BBABABAF262C3246618BBB9B9D9BE93560BBCF52CA06A36DDFEE96BDC3A0C0EAD06D8F22CD072CB74FB271BBB3D4BC8CCCCC4FCF9F375B3E8BAB9B92125250552A975BBD2BA83462F1A9DCC61FB89D7C151F097F4F7F7E7C5959595BCB8A2A282170F1932C4F69DECEC804FBF07FE5B0B7C761CF8C70EE0CF515CD783930B70A510F86E5FAFDC6F4BECEC81846CE0F00DE0C30C83FDE5CCDD299875B0CBA77FF9E597983D7B36542A15006E9AF283070F62CA942942FD0F6CC68B46A7EEB0BD8B6B8674DCE2DAC1E0E1567FC9B163C7E2F0E1C3BAB8A8A8080F3CF0802E2E2828E0AD2F97CB6F1F274F1FE0DEA9DCA383B656EE02525747C303197F19F79814A15FD6AAE6F6975A65B4BA56ABC5860D1BB065CB16DDB28080007CFBEDB7080C0C14C2D824347AD1E8D463C41E56D12DE66EA0D06A8D6FD93C986875A5B4B434DE709549932691F6F6764208212A958A8C1E3D9AD79E9B9B3B209D4CD1D8D848C570321A9D2A2A2AC8B469D3782E919191A4AAAA4A141F9ABD6874B204FA8BE49C3D062C7B501F0785020F3EC2F59D9D3C0C9C3BA16FF3970107AE02CE83ACAAD4D6D686C0C0405CB9A2BF703265CA14848585213D3D1DF9F9F9BAE5C1C1C1C8CDCDB5AA0FAD4E1D14151561D3A64D00008D46830307F417E27C7D7D111E1E0E803B454C484818904E0D0D0D90CBE5282F2FE72D974AA590482446EBCB64321416160E482F1A9D2C46ECCCDF2D8647BC5D3DA6B870EB0AC4891327C8A04183BABCFB0900F1F2F22279797903DA8910F37789757EF8FAFA0E58A7D2D2D21EF9743C860F1F3E60BD6874B214DBBBB81636179005F097C9EF073E3D0604870BA611121282ACAC2C8486861AFDCADAD9D941A150203B3B1B4141415D6C61603831180C63E8EF6A300521DC18C99A9B807408D7C52022959595B874E912944A25BCBCBC307EFC78F8FAFA322706836112DB4CBC0C068361C3D85E570383C160D8382CF132180C86C0B0C42B34D77E046ED151A18BC1E8577EFC416C039B81255E2151D602AB66037F0D062E1774BF3E83612BECFD17F0C464E0DD55FAD997195DC22EAE09C9EB7F070EFE3618DF7910B0E67DE02F4F8BEBC460F495CA1BC0C3A381D6162EFEFD64604B32306CA4B85E14C38E788564D53660EA6CEE6FB58A2BDCFEF2A34063BDF9E7311834337838F0F657FA09088A4E038BEF018EFE5B5C2F8A6147BC42430890FC01F0C1CBFA53B23BEF06DEDE0BDC7DAFB86E0C465FA82805D62D060AB2B95822011E5B01AC7A07707412D78D3258E2158B0B6780B58F01E5C55CECE402AC781B58BC4A5C2F06A32F68DA819D6F009F6DD6D7671E1F0CBCB51718F13B71DD2882255E31696A00363F0564A6E8974D7B04D8B013F0F016CF8BC1E82BC7BF055E7B0268A8E162374F607D3CA05828AA162DB0C4DB0BEAEBEB919E9E8E0B172E40A954C2DBDB1B818181888C8C84878787651B33D5F5200BE02E4E4CF863AFFC7273735156560680ABB4151A1ADAABEDF427343A01F478A9542AE4E4E4E0FCF9F3B879F326D46A35BCBDBD2197CBA15028E0EEEE6E7B5E95655CD743E70A828F3C03ACF9802B06DF4BCACBCB71FAF4695CBC7811D5D5D5D06834F0F1F1815C2EC7F4E9D3E1E7E7D7EB6D0B861895796C99B8B838E2E1E161B20A92542A25494949BDDB70D16942E68CE4575BFB2ACE78BD56B5D9CDB4B6B69271E3C6895E5B96762742E8F18A898921CECECE5D56D7727777273B76ECB04DAFF63642DE7F9990FB24FACF76D47D8494FDCC5FAF9BCF3521845455559109132698AD44E6E8E84856AC58415A5A5AFAF03FB73E2CF15A407C7C7CB725E8241209494949E9DD0B34D613F2CA027EB9CB357F214459C7B57F7F9090F75F327A5A5D5D1D3972E408898B8B2393274FA6A2A8378D4EB47ACD9E3DBB47E50DE3E24CFC10DB8A574E06218A21FACF759827214792B9364D3B212FCC20A4FCBAD94D141717F7B814E4F2E5CBFB610F580F96787B48434303F1F1F1E125D8E8E86872F8F061F2C20B2FF0DE74994C46D4EAEE7FC14DA2D572B36C4C76D27F481FFA1D21995F1312EE4DC85437426A2B794F31575B56AC6442A313AD5E1D096EC28409243A3A9AC4C6C692975E7A8948A5529EDF9021438846A3B15DAF8A5242FE3E957F60B1F5054276ACE1FE7EDB7CB2EC48BC0E0E0E24222282BCF6DA6BE4C30F3F246FBCF106090E0EE639B9B8B808BAAF2CC57612AF564B48CE5142DE5949C8B20709597C2F214F4E2164E3FF7049496DDD538B5DBB76F1DED8C58B17F3DA23222278ED870E1DEADB0B9ECF21646E80E9A2EF1FBCC25B95C66442A313AD5EEBD7AF2729292944ABD5F2961716161A39969494D8B6577B1B21FF5ACBEF7AE8DCBD5651D6E5532B2A2AC89A356B487979B9515B5B5B1B19316204EFC048A55259F4FF1512DB48BC377F21E46F21E667A058FFB85515962D5BC6FBA0252727F3DA63636379EDD1D1D17D7FD1A60642D62E34FEBF1A1CF5D6D4D4908C8C0C92919141525353A94826343AD1ECD51543870EE5399696968AAD4408E907AF9CA384440E35FE6CBFBBAA573EEDEDED64E4C8913A9FA0A0A05E6D4728E89F65F85623F0EC34A0F4AA7E999D1D3726B0E51677BB22C08D1FB422972F5FE6C563C68CE1C5A3478F36BB7EAF70F304148F01195FF197AB9A812FDF0796BF01809B6B2A22829BC5B6A9898E023C343A01F47A99A2A1A101D5D5D5BAD8DBDB1B3299B845FF817EF20AFE1370C7686E3283CEECFB14F89F5700BF61DD6E222929096D6D6DA8AEAEC6BE7DFB5052520200707676C6F6EDDB2DF31118FA13EFE76FF393EE3D21DCED891DB34E5C2DE20A735899FA7AFE6DBD3E3E3E66E3BABABABEBFE8CD5F8037BAA8E5B0F75FC05FFFC14DB7CEB82DD9B66D1BDADBF507144B972E859D9DF877F9F78BD7271BF9C3CC3A50AB805DEF02FFDB7DE28C8A8A325A3663C60CBCFEFAEB98346992653E0223FEBBD81D4792F57F3B38029B93F853FD8CFE3DF0E151E0D9CD56D550ABD5BCD8C1C1C16C6CB87EAFB8D5043C190DFC390AB8FB1EEEFFDF41B312487EBFEFAFC1A092C3870F63EBD6ADBA58269361E3C68D221A71F48B9756CB7D6FFFE71560CA0CE3A3DBAF3F066A2B7AE597959585F7DE7B0FA5A5A5BD7ABE50D07DC4DBAA066E5CD3C723C71A4F7409705D0F778E315EDE8FB8BABAF262C3C46A18BBB9B9F5FD45EF92738F0EDADB806B17802B05C09542E0E71FB97DD487C1E80CFAC8CCCCC4FCF9F3A1D16800709FA594941448A5D2DBC3CBCE0E885CC43D3AA8ABE23ED7977FFB6C1FFF1678E8EF663793989808AD568BFAFA7A1C3B760CA9A9A950A954484E4E465E5E1ECE9C39034F4F4F4BFF9B824077E26DB9C58F453CADF6F7F7E7C5959595BC7EDD8A0AFE2FF4902143FA5FC2C1913BF2BDFB9EFEDF36830ABEFCF24B3CF9E493BA1F724F4F4FECDFBF1F53A64CB9BDBD7CFC814911DCA3873CF1C413BABF57AF5E8DC71E7B0C5F7DC55D0FB97CF932F6EDDBC75B8726E8EE6AF0F0E657352AFB593495B163C7F2E2A2A2225E5C50C02F6C2E97CBC160F414AD568B9898182C59B24497DC02020270F2E4494C9B368D79F58061C3F85D165555552299740FDD8957220182C2F471553990F685F17AE77380C4B7ACAAA250287871424282EE94ABA5A50549494966D76730BAA2B2B2120A85025BB66CD12D8B8C8CC4993367101818C8BC7E63F5EAD558B468118E1F3F0E6D47E5B3DF3877EE1C76EFDECD5B366AD42821F52C82FE2239A78E002B66EA633B3B60EE93C03D0F70FD9BE74E70C3ADA6CFE70ACB5889B6B636040606E2CA952BBA6553A64C41585818D2D3D3919F9FAF5B1E1C1C8CDCDC5CABB918525454844D9B360100341A0D0E1C38A06BF3F5F54578783800EEF430212161C03AD1E8D5D0D000B95C8EF2F272DE72A9540A894462B4BE4C26436161E180F47AF1C517F1FEFBDC05651F1F1F4C9C3811AEAEAE282B2B333A03F5F3F3C3B56BD72C2F5A2514620F24EE111F6D307FF3443008897ECCEA1A274E9C2083060D327B8FB8979717C9CB8D6A1E6D0000200049444154CBB3BA4B67CCDD8DD5F9E1EBEB3BA09D68F42A2D2DED914FC763F8F0E103D66BD5AA553D7271717121870F1FB6BA4F5FA0BBABA183675F073E380CDC3B95EB7E3064D478206C9ED53542424290959585D0D050A35F7D3B3B3B28140A646767232828C8EA2E0CC64063DEBC79983973A6D108A30E9C9C9CB060C102E4E7E763E6CC9926D7A105FABB1A0C69AC078A2F00CA3A6E94C3D03B81C12304D7A8ACACC4A54B97A0542AE1E5E585F1E3C7C3D7D757700F0663A0D1DEDE8EE2E262DCB87103CDCDCDB0B7B787BFBF3F020303E1E2E222B65E8FB0BDC4CB603018368E6D743530180CC66D044BBC0CBAD9F52EF0EA52E39B6918C087EB812DCBF45346316C06D6D5C0A0971F7F009E0AE512CBA8F1C0D67F03778937AE952A72BF03962B00AD86CDE26B83B0235E06BDB4AA01CFDFEA00145F049E98021CF9525C275A6855EB67A2BE781688BA0FF8EF3E719D183D861DF132E8A6AE0AD8F057E074BA7ED99FA380751F032EA687150D18AC348B2FC3FAB0C4CBA01F42802FB6017131DCA93500DC7D2FD7F570C768F3CFBDDDD1B4033BDF003EDBCC955B0480717FE0BA1E06FABEA118967819B643EE77C0FAC781EA5FB9D8D50358FF29BFBCE040E587A3C0FABFEAEBD8BA7902319F02918F89EBC530094BBC0CDBA2B692EB7AC8C9D02FFB731410F309E03C483C2F1AA82C03629600F9C7F5CBD8BEA112967819B68756C39D5A1B9E5EBFFD15BBB2CFBA1E6C029678FB407D7D3DD2D3D371E1C20528954A787B7B23303010919191A25745CACDCD4559591900AEEA566868A8A83E1DF4ABD7A923C0AB51DC05380070F7025E4D00A63DC2C5B5155DCE64A052A990939383F3E7CFE3E6CD9B50ABD5F0F6F6865C2E8742A180BBBB7BEFBDFA40BF799DFC0FB071A97EDFB879021B3E03221670B1B20E38FA15F0C8B26E37555E5E8ED3A74FE3E2C58BA8AEAE8646A3818F8F0FE47239A64F9F0E3F3FBF5EFE6FFB06AD5E3D42E8AA3CB70B717171C4C3C3C3647524A9544A92929244736B6D6D25E3C68DA36EDA72AB78559411F25428BF52DD9BCF10A25611F27C2421E1DE8428EB784F89898921CECECE5D56B7727777273B76ECE8BB9B85F4BB57CD4D429E8BE0EF9B0D5184A89A09F9C7C384847912D250DBE5D3ABAAAAC8840913CC5602737474242B56AC202D2D2DFDB0077A06AD5E96C0126F2F888F8FEFB6349D4422212929298239D5D5D59123478E90B8B8383279F2649E8B98895710AFF63642FEB59690FB24FA04336398FEEFF8D779ABCF9E3DBB47E505E3E2E2FAC7AF8758C5ABBD8D90B81842EEB733BD6F3ED9D8E5538B8B8B7B5C1672F9F2E57DDF013D84562F4B605D0D16A2542A111010A09BBE5D229160EDDAB5080B0B435A5A1A62636375EBCA6432141717C3C9C9A9ABCDF51B478F1EED72D68B9090109C3861622A6D0110D42BFB10777B71430D7FB9873770B05877C3C19C39739096968609132660EEDCB9183E7C384A4A4AB073E74ED4D6D6EA9E3664C8109497970B36A5BA55BD4EA773DD32B595FCE51EDE40EA75AE9BC680EBD7AF63D4A85170707040787838A64E9D8AC18307A3B6B616FBF7EFC7D9B36775EBBAB8B8A0B9B959907D45AB9745889DF9BB45DD42C8BE4F09D9FA02216BFE42C8DF420859104848D47D84FCEF3CEE68A6EC67C17476EDDAC5FB455DBC7831AF3D222282D77EE8D02141BCCC15F816F3885770AF1FCFF08F7C3B1E1FBFAA5B65FDFAF52425258568B55ADE530B0B0B8D1C4B4A4AFADFB10BACEEF5F379FE916F1767041D54545490356BD690F2F272A3B6B6B6363262C408DE199E4AA5B2DCA917D0EA6509F427DE8AD2EE679F98E44048EAE782E82C5BB68CF705484E4EE6B5C7C6C6F2DAA3A3A305F1AAA9A92119191924232383A4A6A652937805F5D2680859AE30FD19F99317210D35DD6E62E8D0A13CC7D2D2D2FE75EC257DF6D26AB9031553FBE64129214D0D166DAEBDBD9D8C1C3952E713141464998F95A0D5CB10BAA777EF8C44028C927385CFD52AE0E7F3407D35D7A66907DE7A0E089D037859B718F9E5CB9779F19831637871E729DF4DAD6F2DA452292222B8A9B19B9A9A0479CD9E20A8D785335C411D4F1FEEAA7D679A1A80A47F02CBDFE8F2E90D0D0DA8AEAED6C5DEDEDE90C964D6B2ED31FDE275A510B8D5687ADF286B81BDB1C0DFD699DD44525212DADADA505D5D8D7DFBF6A1A4A40400E0ECEC8CEDDBB75BE6D38FD0EA650EFA13AF9B27775F7EF8C38074887EB9560B6CFE3B90FA3917AB554041B6D5A700AAAFAFE7C53E3E3E66E38EBE6086004CF823F0E931EEEFAA726EA6929F7FE48AC8145F00523E0216AF027CFC4D3E7DDBB66D686F6FD7C54B972EA5A26FB05FBCEEBE07F8F8BFDCDF86FBE6A7B340F2FBC0A215DCDD805D10151565B46CC68C1978FDF5D73169D224CB7CFA115ABDCC22F621B74534D412929745C87FF61092B49D90971FE59F3209D0DD2097CB79A77CBFFCF20BAFFDECD9B3A29FE63736368AEE600AD1BDD42A426E35996C3A74E810B1B7B7D7B9C964325253D37DD784B511CC4BD54C48CB2DB3AB747EEF3A1E83060D228B162D32FA1E0809AD5EE6A0FF8817004EA401096F0245A7017383300418A06138D19E5AAD361BBBB9B959DD89D1439C4CCFC795999989F9F3E743A3E10AF0B8B9B92125250552A954483B71BD7A50E92D3131115AAD16F5F5F53876EC18525353A152A9909C9C8CBCBC3C9C3973069E9E9EFDEF66A35E66113BF377CBBE4F8D2F063CF43B6E70FC73D3F9CB0F265A5D67D6AC59BC5FD6ECEC6C5EFBFEFDFB79ED51515156773244F423CB2EA0D16BCF9E3DBC9B163C3D3D496666A6D85AD47A7566E1C285BCF7333131516C254208BD5E9D11BF03CB1C8400719D3AFCFD8601291781035781D823C05FD708AE3476EC585E5C5454C48B0B0A0A78B15C2EB7BA13C372B45A2D626262B064C912DD594A4040004E9E3C8969D3A631AF1E306CD8305E5C55552592091F5ABD3A4377E2ADABD48F5C00807B42808071E2F900463703242424E84E055B5A5A90949464767D86F854565642A15060CB962DBA659191913873E60C0203C59B5A8836AFD5AB5763D1A245387EFC38B41D05777EE3DCB973D8BD7B376FD9A851A306B49725D0DDC7EBEA01D83B70C3C500AE14E0912FB92A4B57CF039FBF2DB89242A1C098316370E5CA1500C00F3FFC80D0D050848585213D3D1D57AF5ED5AD1B1C1C8CE0E06041BC8A8A8AB069D32600D0FD1074F0D34F3FE1D1471F0500787A7A2221214110271ABD1A1A1A10141484F2F272DEF2DCDC5C8C1B67FCA32E93C95058583820BDB45A2DF6EEDD8BBD7BF7C2C7C70713274E84ABAB2BCACACA8CCEF4FCFCFC3063C60CABFAD0EE651162F77574CB86A8AE6F9C98E222781F2F21849C3871820C1A34C8EC3DE25E5E5E242F2F4F101F42CCDF21D6F9E1EBEB2B98138D5EA5A5A53DF2E9780C1F3E7CC07AAD5AB5AA472E2E2E2EE4F0E1C356F7A1DDCB12E8EE6A0080E88FF4A5EC3A7070041E7E0A782D5114A590901064656521343414128984D766676707854281ECEC6C04050589E2C760F407F3E6CDC3CC99338D46F274E0E4E484050B16203F3F1F3367CE1CF05E96603B4572CAAF7383BE5D5CB9F9B63A66581599CACA4A5CBA74094AA5125E5E5E183F7E3C7C7DAD7BF71C832124EDEDED282E2EC68D1B37D0DCDC0C7B7B7BF8FBFB233030102E2EA687E80D64AF9E603B8997D1FFA855C007AF004FBF0A78535C349A1654CD406C34B0EC35FDB4F30C462FA0BFAB81613DDE5909ECFD17B024883F4538C3345B9FE7F6D7E27B81C29362DB306C189678072ACD4AAEB605C04D92B8EC41E08B7704B9FBCF2651D671774E02404529F04C38B0FB9F6C7F317A054BBC0315374F20E92C779112E086EC7DF032B07A9E7121710657D56B572E30730917B7B701EFFD03F8C7435C752F06C302581F2F0348FB822BABD9728B8B87DC01BC950C4C7C405C2F5A31DC5F43EF04B6240313A788EBC5B01958E26570145F045E59005CFB918BED1D80BFC7004FBD0A50501A913A2E9FE3F657E96F37CCD83B70B57E97BECCD58E6630CCC0122F43CFAD2660CB32E03F7BF4CBC2E602AF7DCEAEE29BE25623F0C633407AB27ED99F1E023626725D130C4617B0C4CB30869D4A5B46DA17C09667B9E17900306C24F0D65EAE303B836102760EC93066F65220211BB8F3B7698D6EFE022C0B07923FE0AF77295F70352A99BD14F8EC3830FC2E2EFEB50478E64FC0BF3FE4AFC7F617E33758E26598E6EE7BB9510F918BB8B8AD15787715F08F87B9A155377F019E8B0072BF13D79316C607037BF201C5422E6E5573E37E5F7A0468AC07CA7EE686ECE56589EBC9A002FABB1AF28F032B67E9E395DB8005CBC5F331A0BEBE1EE9E9E9B870E102944A25BCBDBD11181888C8C8487878743D7F9510E4E6E6A2ACAC0C00E0EBEB8BD0D0D0DE6DE8AB3860C73FB8640200237EC7558EBB7C0E080A05E2BB4F262A950A393939387FFE3C6EDEBC09B55A0D6F6F6FC8E57228140AB8BBBBF7CEAD0F58C58910EECCE08397B91F2B803B73707201AE1601F74F033ECAECF2E9E5E5E5387DFA342E5EBC88EAEA6A68341AF8F8F8402E9763FAF4E9F0F313E70E431ABD6874EA316254E6B188DCEFF815C876BF27B6918EB8B838E2E1E161B23292542A25494949A2B9B5B6B69271E3C6F5DF6C0F177209997797E92A71A7D3CD3E35262686379B82E1C3DDDD9DECD8B1A36F7E166275A7F33984CC0D30BDBF72BF335ABDAAAA8A4C9830C16CB52D474747B262C50AD2D2D2D27B2F0BA1D18B46274B6189B797C4C7C7775B964E229190949414C19CEAEAEAC8912347485C5C1C993C7932CFA55FA6D969AC27E46F21C689E4C929669F367BF6EC1E95F18B8B8BEBBB630F11C4A9A1969027261BEFAFA7C38C562D2E2EEE7149C8E5CB97F7E17F6E19347AD1E86429F477359C3DC6F58D75B0FA3D60C98BA2E9008052A9444040806EEA76894482B56BD7222C2C0C696969888D8DD5AD2B93C9505C5C0C272727AB7B1D3D7AB4CB192F42424270E2441FEB319417038FFF81EBB334E483C3C003A64BF0CD99330769696998306102E6CE9D8BE1C387A3A4A4043B77EE446DADFEAEAF214386A0BCBC5C9029D505712ABD0AFC3598BB3DDB900F8F0293A6EBC2EBD7AF63D4A85170707040787838A64E9D8AC18307A3B6B616FBF7EFC7D9B36775EBBAB8B8A0B9B95990FD44A3178D4E162376E6EF165347BC353709F9680377E410751F572CBDE8B4604ABB76EDE2FDAA2E5EBC98D71E1111C16B3F74E890205EE68A8EF7F98857A3317DB4DBF1583AA9CBA7AE5FBF9EA4A4A410AD56CB5B5E585868E4595252D237CF1E6275274D3B21FFF3C7AEF7D7DFF8EF4745450559B3660D292F2F37DA545B5B1B19316204EF4C4AA55259EED40B68F4A2D1C9526C2FF13E1F494898A7F107F97E3B42D2F70AA2B46CD932DE1733393999D71E1B1BCB6B8F8E8E16C4ABA6A686646464908C8C0C929A9ADAFF5D0DED6D84FC7C9E908CAF08F96423212FCEE1F7FB1EFFD6E24D0E1D3A94E7595A5ADA77CF3ED26F4EDDEDAF53477AB699F6763272E4489D4F505050EF7CFA191ABD68743205DD73AE99E2743AF7AF9D3DA0ED348797560BBCF90CF0C708ABDF6575F9F2655E3C66CC185E3C7AF468B3EB5B0BA9548A8888080040535353FFBF80BD03705720F740A75941EAAB81CB05FCF7A307343434A0BA5A3F99A9B7B7376432593FC9F68E7E75EA6A7FD55501570A60AEB259525212DADADA505D5D8D7DFBF6A1A4A40400E0ECEC8CEDDBB7F7CEA71FA0D18B46A76E113BF3778BE111EFFFCE23E4FA4FDCA9EFF59F0879ECF7FCF67F7F6875A5A0A020DE11D1B56BD778ED393939BCF669D3A659DDC990C6C6C6FE3FE2ED67D6AD5BC7735CB972A5D84AD4387576E878CC983183E4E4E488E243B3178D4EDD41598F730FB8EF4160E458AE70CBC8B1C0F237F9ED85A7ACAEA056AB79B1838383D9D8707D0670F8F0616CDDBA5517CB64326CDCB85144233A9D3A93959585F7DE7B0FA5A5A562ABF0A0D18B46A7CED85E578321E30C2694ACFED5EA2F6938C99E6162358CDDDCDCACEE644B64666662FEFCF9BAE9DEDDDCDC90929202A954BC423CB43925262642ABD5A2BEBE1EC78E1D436A6A2A542A15929393919797873367CEC0D3D3937951EAD42D621F72774B77E3786B6EF2DB9F8BB0BAD2AC59B378A735D9D9D9BCF6FDFBF7F3DAA3A2A2ACEE6408AD5D0D7BF6ECE1DDB8E0E9E9493233339953372C5CB890F77E2626268AAD4408A1D38B4627436CAFABC190B29FF9F1E0E1567FC9B163C7F2E2A2A2225E5C5050C08BE572B9D59D6847ABD5222626064B962CD19D11040404E0E4C99398366D1A73EA8661C386F1E2AAAA2A914CF8D0E845A39321B69D78090192FEC95F161C6EF59735BC4921212141778ADAD2D282A4A424B3EB0F342A2B2BA15028B065CB16DDB2C8C8489C397306818181CC09C0EAD5ABB168D1221C3F7E1C5AAD96D776EEDC39ECDEBD9BB76CD4A85103D68B46274BB1BD3BD7824281071FE16AC59E3CCC9F1DD75F061CB80A380FB2AA525B5B1B02030371E5CA15DDB22953A6202C2C0CE9E9E9C8CFD797FF0B0E0E466E6EAE557D3A282A2AC2A64D9B00001A8D06070E1CD0B5F9FAFA223C3C1C00E0E9E989848404419C1A1A1A2097CB515E5ECE5B2E954A21313153834C26436161E180737AF1C517F1FEFBEF03007C7C7C3071E244B8BABAA2ACACCCE88CCACFCF0FD7AE5D13A408138D5E343A598AED5D5CCB3FCE3D0C717201DED86DF5A40B008E8E8E484C4C8442A1804AC515BF3E75EA144E9DE28FA8F0F2F2427C7CBCD57D3AA8A8A8C0D75F7F6DB2ADA6A646D7E6EBEB2B98536363A3518203C0BB2DB7332E2E2ED656A2D2A933757575F8FEFBEFBB74D9B56B97288984462F1A9D7A82ED753584CD056401FC65F2FB814F8F09D2CDD041484808B2B2B2101A1A6A749464676707854281ECEC6C04050575B1054A387B4C6C032A9100F89380DFD779F3E661E6CC994623663A707272C282050B909F9F8F99334DD7C418285E343A590AFD5D0DA62004A8B9C93DA443B82E0611A9ACACC4A54B97A0542AE1E5E585F1E3C70B7A54D96BD29381758B81598F03D11F03AEC2D7C4A5962FDF07B6BF08FC390A58F731E062FA4BDEDFB4B7B7A3B8B818376EDC40737333ECEDEDE1EFEF8FC0C040C18FBC69F7A2D1A9A7D866E265F49D66253067A4BED2D85D72606B0A306ABCB85E345073139877977E0EB5B141C0DB5F01778C36FF3C06A387D85E5703A37F70F304E2D2F5DD36D72E70250CBFD929AA1615F80E05DE4F03FC7E1B9674299F2B8799BE575C2FC66D033BE21DE8D45703AF460127FFA35F26F0E935B5D45602EB1F077E38AA5FF6C833C09A0F002767F1BC18360F4BBC0CAECFFC8B6D405C8CBEC2183BBDE6D06A80CF36738F8E31A3E3FEC0ED9B11BF13D78D61B3B0C4CBD073F61877B1ADE62617BB79021B3E032216987DDA80E0874CEEE8B7B6828BD9BE61F4019678197C6A2B81F54BB844D3C123CF002FFD0B70B4FEF44554535906442F020AB2B95822011E5B01AC7A87ED1B8645B0C4CB3046D3CE753BEC7A475FAC7BE203C0DB7B81C123F4EBB5B67037AE0C24DADB80B87540D276FDBEF9FD64E0ADBDC0D03BF5EB0DC47DC3E8316C5403C3187B0760E556E09F07F5B379149E04960471B7690340AB1A78761A507E5D344D517070E48E703BEF9BA2D3DCA88713695CAC690756CC027E1166E61186EDC18E7819E629BF0EAC5D085C38C3C57676C0DF6280861AE0DF1F72DD10EB3E115551347E2DE1F6CD8F3F70B144022C7D19205AE08B7780B94F001B13455564D0094BBC8CEE6955033BFE017C1567DCE6E008ECBB04C8E8AB0025086DADC0072F03C91F18CFA166EFC0ED9BE17789E3C6A016FA136FFE7160E52C7DBC721BB060B9783E06D4D7D7233D3D1D172E5C8052A984B7B737020303111919297A718EDCDC5C94959501E00AE3848686F66D83DFED07363D093435F0973FF477EE0ABF19542A1572727270FEFC79DCBC79136AB51ADEDEDE90CBE5502814707717FE76E57E75FAFE1B6EDF28EBF8CB1F7E0A58DFF34249E5E5E5387DFA342E5EBC88EAEA6A68341AF8F8F8402E9763FAF4E9F0F3F3EBB9533F42A3178D4E3D46C8AAEBBDA2BB192844242E2E8E787878989C6C4F2A9592A4A424D1DC5A5B5BC9B871E3FA77060A750B214B82F8EF473008F9A32321A557BB7C5A4C4C0C6F8607C387BBBB3BD9B16347DFFD2CA0DF9DDADB0879F201D3FBA6FC7AB74FAFAAAA2213264CE8D20700717474242B56AC202D2D2D7DF89F5B068D5E343A590A4BBCBD243E3EDEEC1B0F804824129292922298535D5D1D3972E408898B8B2393274FEEFFA97FB6BE609C583A1EAF3DD1E5D366CF9EDDEDBE0240E2E2E2FAEED843FADDE98357BADE375B9EEDF6E9C5C5C53DF20140962F5FDEC7FF7DCFA1D18B46274BA1BFABC1B010FAEAF780252F8AA603004AA512010101A8ABE34E2B251209D6AE5D8BB0B030A4A5A521363656B7AE4C26437171319C9CAC3FCEF3E8D1A35DCE761112128213274E986CEB115A2D773A7DA510B85A045C29006E5CD3DFCD65EF00FCFB47E0CEBB8D9E3A67CE1CA4A5A561C28409983B772E860F1F8E929212ECDCB993570377C89021282F2F879D9DF507DBF4AB1321C0F154E0D2396EFF18EE1B4727AE40FF903BBADCC4F5EBD7316AD428383838203C3C1C53A74EC5E0C183515B5B8BFDFBF7E3ECD9B3BA755D5C5CD0DCDC2CC87EA2D18B46278B113BF3778BA923DE9A9B847CB48190A7C30889BA8F900D5184149D164C69D7AE5DBC5FD5C58B17F3DA23222278ED870E1D12C42B2323A3CB5F7EAB4C76D9DC4848E12942BEFE8490B7971392FC81C9D5D6AF5F4F5252528856ABE52D2F2C2C34F22C2929E97F4F319C9A1B09293849C8D71F7347BC073E33BB7A45450559B3660D292F2F376A6B6B6B2323468CE09D49A9542ACB9D7A018D5E343A598AED25DEE7230909F3343E9DBBDF8E90F4BD82282D5BB68CF7C54C4E4EE6B5C7C6C6F2DAA3A3A305F1AAA9A92119191924232383A4A6A65A3FF1F60343870EE5799696968AAD449D537B7B3B193972A4CE27282848549F0E68F4A2D1C914B637F5CFE974EE5F3B7B7D4117803BAD7BF319E08F11FA81ED56E2F265FEC0F83163C6F0E2D1A3F985650CD7B71652A9141111110080A6A626415EB32F343434A0BABA5A177B7B7B432613B7A83D2D4E494949686B6B43757535F6EDDB879292120080B3B333B66FDF2EB80FCD5E343A758BD899BF5B0C8F78FF771E21D77F2244A3E1FE7DECF7FCF67F7F6875A5A0A020DE11D1B56BD778ED393939BCF669D3A659DDC990C6C646EA8F78D7AD5BC7735CB972A5D84AD4387576E878CC983183E4E4E488E243B3178D4EDD41598F730FB8EF4160E458EE0EAA916381E56FF2DB0B4F997E5E3FA256AB79B1838383D9D8707D0670F8F0616CDDBA5517CB64326CDCB85144233A9D3A93959585F7DE7B0FA5A5A562ABF0A0D18B46A7CED85E578321E30C2693ACFED5EA2F6938C99E6162358CDDDCDCACEE644B64666662FEFCF9D068B8AE22373737A4A4A4402AB56E17912D3925262642ABD5A2BEBE1EC78E1D436A6A2A542A15929393919797873367CEC0D3D3937951EAD42D621F72774B77E3786B6EF2DB9F8BB0BAD2AC59B378A735D9D9D9BCF6FDFBF7F3DAA3A2A2ACEE6408AD5D0D7BF6ECE1DDB8E0E9E9493233339953372C5CB890F77E2626268AAD4408A1D38B4627436CAFABC190B29FF9F1E0E1567FC9B163C7F2E2A2A2225E5C5050C08BE572B9D59D6847ABD5222626064B962CD19D11040404E0E4C99398366D1A73EA8661C386F1E2AAAA2A914CF8D0E845A39321B69D78090192FEC95F161C6EF59735BC4921212141778ADAD2D282A4A424B3EB0F342A2B2BA15028B065CB16DDB2C8C8489C397306818181CC09C0EAD5ABB168D1221C3F7E1CDA8E1B2F7EE3DCB973D8BD7B376FD9A851C21425A2D18B46274BB1BD3BD7824281071F015A6E71B561CF75BA1BCB5FC6DD21E43CC8AA4A6D6D6D080C0CC4952B5774CBA64C9982B0B030A4A7A7233F3F5FB73C383818B9B9B956F5E9A0A8A8089B366D020068341A1C387040D7E6EBEB8BF0F0700080A7A72712121204716A6868805C2E477979396FB9542A854422E12D9300182693A1B0B0901A2780BBC8666DA7175F7C11EFBFFF3E00C0C7C70713274E84ABAB2BCACACA8CCEA8FCFCFC70EDDA35418A30D1E845A393A5D8DEC5B5FCE3DCC3102717E08DDD564FBA00E0E8E888C4C44428140AA8542A00C0A953A770EA147F4485979717E2E37B5E99AAAF545454E0EBAFBF36D9565353A36BF3F5F515CCA9B1B1D128C101E0DD96DB416200A06D5773B33C383852E10470B79D0A495D5D1DBEFFFEFB2E5D76EDDA254A22A1D18B46A79E607B5D0D61730159007F99FC7EE0D3638274337410121282ACAC2C8486861A1D25D9D9D941A150203B3B1B4141415D6C81D199BFF9014FF8027F736D029E9B0E54DE105B4950E6CD9B879933671A8D98E9C0C9C9090B162C407E7E3E66CE9C39A0BD6874B214FABB1A4C410837136ECD4D403A84EB621091CACA4A5CBA74094AA5125E5E5E183F7EBCA04795B705C70E00AF3DA1AFF5EBE30F6C4E0226478AAA2534EDEDED282E2EC68D1B37D0DCDC0C7B7B7BF8FBFB23303050F0236FDABD6874EA29B6997819B727BF9600EB1671739801FA597C5F7CD7AA5D0F0C86D0B0C4CBA08B56B57E2A9D0EFEF027E0CD3DA29FD93018FD85EDF5F1326E6F9C9C8135EF03EFEE073CBCB96579DF034BEE054E1D11D7CD16F8FC6DE0D5A5DCA81F06B5B0235E06BD945F07A21F339EC5F7F937B9EA740C3E45A781A7C3B85121638380B7F602778EE9FE790CC16147BC0C7A910500F159C0A2955C4C08F07F5B81E72204A9C96173A85580A70FF7F7A57C20EA3E203D595C278649D8112FC33638F225F0E632E0562317FB0DE3FA7D3B8610965EE52ECE4D9A2E9A2215D456021BFE0AE464E897FD390A58F731E0627AF815437858E265D80EBF5C06D62E042EFF560BC3CE1E786A3DD7FDF05428D715F1C519EEDF818C56037CB619F8EC0DFD640177C981B7BF02EE12E7166D061F967819B6855A056C5B017CB353BFCC6F98BEEBE19FDF0061F3C471A38DDCEF80F58FEBF78DAB0777E43B7389B85E0C96781936CAA15DC05BCF01AA66FEF2B14140D25976D4DB416D25F06A947ECA2C80753D50004BBC7DA0BEBE1EE9E9E9B870E102944A25BCBDBD11181888C8C848D1EF0FCFCDCD4559591900AE36436868A8682E2A950A393939387FFE3C6EDEBC09B55A0D6F6F6FC8E57228140AB8BBBBF76EC359A9C06A1347B7EFEC031EFC8BD9A7969797E3F4E9D3B878F122AAABABA1D168E0E3E303B95C8EE9D3A7C3CFCFAF774E7DC42A5E84005F6C03E262F45D0FA3C6735D0FBF9B60F1E65A5B5B71FCF871744E1DD3A74F375960484868F5328990C57F6F27E2E2E288878787C9F99EA45229494A4A12EEFF02AC000008EA49444154CDADB5B5958C1B378E8A22E8313131BC22E3860F777777B263C70ECB37AC5611B224C878B6E96010B2682237279F09AAAAAAC8840913BAF401401C1D1DC98A152B484B4B4B1FFFF73D4710AF1F3209891CAADF4FA1EE841CEAF4396D5612F2555CB79B79FAE9A78DDCDADADA7AE7D48FD0EA650A96787B417C7CBCD92F0800229148484A4A8A604E757575E4C89123242E2E8E4C9E3C999AD92766CF9EDDEDBE0240E2E2BAFFC2F3C8F88A90BF8C21E47E3BD3C9F7E8BF4D3EADB8B8B8473E00C8F2E5CBFB610FF40CC1BC6A2B097961067F5F6D8822E45613F76F882B2135155D3EFDC30F3F34E9247682A3D5AB2B5857838528954A040404A0AEAE0E00209148B076ED5A848585212D2D0DB1B1B1BA756532198A8B8BE1E4E46475AFA3478F7659703D242404274E9C30D9666DE6CC9983B4B4344C98300173E7CEC5F0E1C3515252829D3B77F2CA300E193204E5E5E5B0B3B37068795B2B507A05B87816B87601B8F62377C385B73F905CC84D8ADA89EBD7AF63D4A85170707040787838A64E9D8AC18307A3B6B616FBF7EFC7D9B36775EBBAB8B8A0B9B9D972A75E20A897560BEC7C03887F5DDFF53078B8BE22DCD2978095DB8C9E76FCF8714C9F3E1D6D6D6D466D6D6D6D4693BC0A05AD5E66113BF3778BBA85907D9F12B2F50542D6FC8590BF8510B2209090A8FBB8A9DEE35F27A4EC67C17476EDDAC5FB455DBC7831AF3D222282D77EE8D02141BC323232BA3C4212F38877FDFAF52425258568B55ADEF2C2C24223CF929292FE7BE15F4BB8EE08032A2A2AC89A356B487979B9515B5B5B1B19316204EFAC45A532DE863510C5EBCC7F099931CCF86C61AA1B7764DC895F7EF9850C1E3C980020C3870F2772B99C8A234B5ABDBA83FEC45B516AFA54B2F363920321A99F0BA2B36CD932DE1B9B9C9CCC6B8F8D8DE5B54747470BE25553534332323248464606494D4DA526F19A63E8D0A13CCFD2D252517DDADBDBC9C89123753E414141A2FA746055AFD2ABDCF7C7F03BF5AFB5BA55542A15090E0E260088B3B333C9C9C9217FFAD39F444F70B47AF5040A8FC1BB40220146C981A1777263397F3E0FD457736D9A766E6851E81CC0CBBA75702F5FBECC8BC78CE1DF0B3F7AF468B3EB5B0BA9548A888808004053539320AFD9171A1A1A505D5DAD8BBDBDBD2193095F7D2C2929096D6D6DA8AEAEC6BE7DFB5052520200707676C6F6EDDB05F711DCEBE357B9EF8F215FC501516B002F5F3CFDF4D3BAAE8E8F3FFE1893264DEABFD7EF03B47AF504FA13AF9B2737E630FC61AEE879075A2DB0F9EF40EAE75CAC560105D9561F3C5F5F5FCF8B7D7C7CCCC61D7DC10C3EDBB66D437BBBFE0BBF74E95241FA520D898A8A325A3663C60CBCFEFAEBA27E9105F1BAFE13777385A70FA034F89CDE6A0476BF87ED2A1FDDE4AD2B56ACC0134F3CD13FAFDD47B66FDF4EA5578F11FB90DB221A6A09C9CB22E43F7B0849DA4EC8CB8FF24F8F04E86E30EC43FAE5975F78ED67CF9E15FD34BFB1B1517407731C3A7488D8DBDBEBFC643219A9A9A911C5A5F37EEA780C1A34882C5AB4C8E8BDBDADBD2A6F10929341C89E1DDCE8860572D23AD59DF83971EF53787838EFB45DCC53FAF4F474DDE787262F4BA0FF8817004EA401096F7265EFCC0DC210608086E13C4F6AB5DA6CECE6E66675275B22333313F3E7CF8746C35D4D777373434A4A0AA452A9283E898989D06AB5A8AFAFC7B163C7909A9A0A954A85E4E464E4E5E5E1CC9933F0F4F4BCFDBDFC65DC6312D75D55575787DF8FF91D54ED4D707474C492254BF0EDB7DFEA56EFDC4D0400070F1E849D9D1D66CD9A056767E7FEF332A0AEAE0E8B162D8246A3A1CACB62C4CEFCDDB2EF53E38EFF877E47C8F391843C379DBFFC60A2D57566CD9AC5FB45CDCECEE6B5EFDFBF9FD71E151565752743683DE2DDB3670FEF660A4F4F4F92999929B6168F850B17F2F65D6262A2D84A8410E1BDAE5CB9D2E371C59D1FBFFEFAEB80F4B214BAEBF11202C4ADD3C77EC380948BC081AB40EC11E0AF6B04571A3B762C2F2E2A2AE2C5050505BC582E975BDD8976B45A2D626262B064C912DD19414040004E9E3C8969D3A6896CC767D8B061BCB8AAAA4A24133EB47A317A07DD5D0D7595FA910B00704F0810304E3C1F000A85023B76ECD0C509090978EAA9A7606F6F8F9696165D877FE7F5073295959558BC7831FEFBDFFFEA9645464662F7EEDDA2D44358BD7A35CACBCBF1FCF3CF232424847741EFDCB973D8BD7B376FFD51A3460D482F5F5F5F6CDEBCB9CBF69D3B77E2FAF5EBBA78D3A64DB0B3B3B37A8D125ABD2C85EE3BD75A6E017FF2D20F7771F702A23F02EE180D5C3DCFCD2FF54BA7E15A1B1381B94F5855A9ADAD0D818181B872E58A6ED994295310161686F4F474E4E7E7EB96070707233737D7AA3E1D14151561D3A64D00008D468303070EE8DA7C7D7D111E1E0E00F0F4F444424282204E0D0D0D90CBE5282F2FE72D974AA5260B97C864321416165AD5E9C5175FC4FBEFBF0F801B813271E244B8BABAA2ACACCCE8ECC5CFCF0FD7AE5D13E44B4BAB5757848787E3FBEFBFD7C5B4DC2146AB9721F41975C6C51598B1982B0108004D0D404CA75AA24E2E822B393A3A223131110A85022A950A0070EAD4299C3A758AB79E979717E2E3E305F3AAA8A8C0D75F7F6DB2ADA6A646D7E6EB6BDD71CE9D696C6C344ABA0078B70A77C6C545D8F7B3AEAE8EF7253574D9B56B9728C98D562F46FF41771F2FC01DE1462CE02F7370041E7E0A782D5114A5909010646565213434D4E8C8CDCECE0E0A8502D9D9D9080A0A12C58FD135F3E6CDC3CC99338D46A774E0E4E484050B16203F3F1F3367CE1CF05E0CEB4077574367CAAF03C517B8A3E0BBEFD54FFD2D32959595B874E912944A25BCBCBC307EFC78418F2A19BDA3BDBD1DC5C5C5B871E3069A9B9B616F6F0F7F7F7F0406060A7EE46D0B5E86A8542ADD904000BDAFA9DCCFD0EA6588ED245E0683C1B84DA0BFAB81C160306E3358E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C110189678190C06436058E26530180C81618997C160300486255E0683C110189678190C064360FE1F216767A101E22E2D0000000049454E44AE426082>|png>|350px|275px||>

  <with|font-series|bold|Risalire la matrice>

  <\enumerate>
    <item>Andare nell'angolo in basso a destra e segnare la lettera della
    colonna

    <item>Muoversi verso sinistra o verso l'altro fino a quando non ci sarà
    lungo la diagonale il numero attuale decrementato di 1 (esempio: da 3 a
    2)

    <item>Annotare la lettera della colonna (come nel passo 1)

    <item>Ripetere i passi 2 e 3 fino a quando non si arriva ad avere il
    numero 0 (sulla colonna di sinistra)

    <item>Per ottenere la stringa bisogna invertire il percorso effettuato
    (ovvero leggere il percorso dalla fine all'inizio); il risultato sarà la
    stringa desiderata
  </enumerate>

  <with|font-series|bold|Nota:> se ci si può muovere in due direzioni
  possibili, occorre farlo e controllare se si può arrivare alla prima
  colonna da destra seguendo i passaggi di sopra

  <with|font-series|bold|><section|Templates>

  <subsection|Esempi di definizione>

  <\cpp-code>
    template \<less\>class T1\<gtr\>

    T1 somma(T1 a, T2 b) {

    \ \ return a + b;

    }
  </cpp-code>

  <subsection|Variabili statiche>

  Ogni ``tipo di funzione'' possiede la propria variabile statica
  indipendente

  <\cpp-code>
    template\<less\>class Data\<gtr\>

    void typeCounter(Data a) {

    \ \ \ \ \ \ \ \ static int c;

    \ \ \ \ \ \ \ \ c++;

    \ \ \ \ \ \ \ \ cout \<less\>\<less\> "Il counter vale " \<less\>\<less\>
    c \<less\>\<less\> endl;

    }
  </cpp-code>

  <section|Derivazione>

  <subsection|Specificatori d'accesso>

  <\itemize>
    <item>I campi <with|font-series|bold|privati> di una classe non sono
    accessibili dalle sottoclassi nè dall'esterno

    <item>I campi <with|font-series|bold|protetti> di una classe sono
    accessibili dalle sottoclassi, ma non dall'esterno

    <item>I campi <with|font-series|bold|pubblici> di una classe sono
    accessibili anche dall'esterno
  </itemize>

  <\itemize>
    <item>I campi privati, protetti e pubblici rimangono tali in tutta la
    gerarchia
  </itemize>

  <subsection|Costruzione degli oggetti>

  Quando un oggetto viene costruito si costruisce prima la parte
  <with|font-series|bold|BASE> ed in seguito quella
  <with|font-series|bold|DERIVATA>.

  Viene quindi prima chiamato il costruttore della classe base e poi quello
  della classe derivata.

  Se la classe base ha dei costruttori, il costruttore di una classe derivata
  deve chiamarne uno nella lsita di inizializzazione. Può non chiamarlo
  esplicitamente se la classe base ha un costruttore di default, che in
  questo caso viene chiamato automaticamente.

  <subsection|Funzioni virtuali>

  <chapter|Basi di dati>

  <section|Algebra relazionale, calcolo dei domini e delle tuple>

  <subsection|Esempio pratico>

  Si consideri il seguente insieme di relazioni:

  <\itemize>
    <item>Film(CodFilm, Titolo, CodRegista, Anno);

    <item>Produzione(CasaProduzione, Nazionalità, CodFilm, Costo);

    <item>Attore(CodAttore, Cognome, Nome, Sesso, DataNascita, Nazionalita);

    <item>Interpretazione(CodFilm, CodAttore, Personaggio);

    <item>Regista(CodRegista, Cognome, Nome, Sesso, DataNascita,
    Nazionalità);
  </itemize>

  Definire in <with|font-series|bold|algebra relazionale> una query che
  produca la lista dei titoli dei film che ``Marcello Mastroianni'' ha
  interpretato

  \;

  <\equation*>
    \<Pi\><rsub|Titolo><around*|(|\<Pi\><rsub|CodFilm><around*|(|\<Pi\><rsub|CodAttore><around*|(|\<sigma\><rsub|<around*|(|Nome=<rprime|''>Marcello<rprime|''>|)>\<wedge\><around*|(|Cognome=<rprime|''>Mastroianni|)>><around*|(|Attore|)>|)>\<join\>\<Pi\><rsub|CodFilm,CodAttore><around*|(|Interpretazione|)>|)>\<join\>\<Pi\><rsub|CodFilm,Titolo><around*|(|Film|)>|)>
  </equation*>

  \;

  Esprimere la stessa query nel <with|font-series|bold|calcolo relazionale
  dei domini>

  \;

  { Titolo: t \| Film (CodFilm: fn, Titolo: t, CodRegista: d, Anno: y)
  <math|\<wedge\>> Attore (CodAttore: an, Cognome: cogn, Nome: n, Sesso: s,
  DataNascita : b, Nazionalità: naz) <math|\<wedge\>>
  Interpretazione(CodFilm: fn, CodiceAttore: an, Personaggio: ch)
  <math|\<wedge\>> Regista.. <math|\<wedge\>> Produzione.. <math|\<wedge\>>
  (cogn=''Mastroianni'') <math|\<wedge\>> (n=''Marcello'')}

  \;

  Esprimere la stessa query nel <with|font-series|bold|calcolo referenziale
  delle tuple>

  \;

  {F.titolo \| F(Film), A(Attore), I(Interpretazione) \| F.CodFilm =
  I.CodFilm <math|\<wedge\>> A.CodAttore = I.CodAttore <math|\<wedge\>>
  A.Cognome = ``Mastroianni'' <math|\<wedge\>> A.Nome = ``Marcello''}

  \;

  <with|font-series|bold|Nota:> nel calcolo referenziale delle tuple non è
  possibile esprimere un ``unione''

  <section|Normalizzazione>

  In <hlink|informatica|http://it.wikipedia.org/wiki/Informatica> la
  <with|font-series|bold|normalizzazione> è un procedimento volto
  all'eliminazione della ridondanza <hlink|informativa|http://it.wikipedia.org/wiki/Informazione>
  e del rischio di <hlink|incoerenza|http://it.wikipedia.org/wiki/Incoerenza>
  dal <hlink|database|http://it.wikipedia.org/wiki/Database>. Esistono vari
  livelli di normalizzazione (<with|font-shape|italic|forme normali>) che
  certificano la qualità dello <hlink|schema del
  database|http://it.wikipedia.org/wiki/Schema_di_database>.

  Questo processo si fonda su un semplice criterio: se una
  <hlink|relazione|http://it.wikipedia.org/wiki/Modello_relazionale> presenta
  più concetti tra loro indipendenti, la si decompone in relazioni più
  piccole, una per ogni concetto. Questo tipo di processo non è sempre
  applicabile in tutte le tabelle, dato che in taluni casi potrebbe
  comportare una perdita d'informazioni.

  <subsection|Prima forma normale>

  <with|font-series|bold|Definizione:> Si dice che una base dati è in 1NF
  (<with|font-shape|italic|prima forma normale>) se vale la seguente
  relazione per ogni relazione contenuta nella base dati: una relazione è in
  1NF se e solo se:

  <\enumerate>
    <item>tutte le righe della relazione hanno lo stesso numero di attributi

    <item>non presenta gruppi di attributi che si ripetono (ossia ciascun
    attributo è definito su un dominio con valori atomici)

    <item>tutti i valori di un attributo sono dello stesso tipo (appartengono
    allo stesso dominio)

    <item>esiste una chiave primaria (ossia esiste un insieme di attributi,
    che identifica in modo univoco ogni tupla della relazione)

    <item>l'ordine delle righe è irrilevante (non è portatore di
    informazioni)
  </enumerate>

  <subsection|Seconda forma normale>

  <with|font-series|bold|Definizione:> Una base dati è invece in 2NF
  (<with|font-shape|italic|seconda forma normale>) quando è in 1NF e per ogni
  relazione tutti gli attributi non chiave dipendono funzionalmente
  dall'intera chiave composta (ovvero la relazione non ha attributi che
  dipendono funzionalmente da una parte della chiave).

  Come esempio supponiamo di avere una tabella con gli esami sostenuti dagli
  studenti universitari. I campi di interesse potrebbero quindi essere i
  seguenti:

  <\itemize>
    <item>"Codice corso di laurea"

    <item>"Codice esame"

    <item>"Matricola studente"

    <item>"Voto conseguito"

    <item>"Data superamento"
  </itemize>

  La tabella avrà quindi la seguente intestazione

  <tabular|<tformat|<twith|table-hmode|min>|<twith|table-width|1par>|<cwith|1|-1|1|-1|cell-hyphen|t>|<twith|table-rborder|1px>|<twith|table-lborder|1px>|<twith|table-bborder|1px>|<twith|table-tborder|1px>|<cwith|1|-1|1|-2|cell-rborder|1px>|<cwith|1|-2|1|-1|cell-bborder|1px>|<table|<row|<\cell>
    <with|font-series|bold|id_corso_laurea>
  </cell>|<\cell>
    <with|font-series|bold|id_esame>
  </cell>|<\cell>
    <with|font-series|bold|id_studente>
  </cell>|<\cell>
    voto
  </cell>|<\cell>
    data
  </cell>>>>>

  La chiave candidata (tale terminologia è riservata alle superchiavi
  minimali, anche dette semplicemente chiavi) è rappresentata dalla tripla
  evidenziata, ossia da:

  <\itemize>
    <item>"Codice corso di laurea"

    <item>"Codice esame"

    <item>"Matricola studente"
  </itemize>

  Essa infatti risulta essere l'insieme di chiavi minimale per poter
  identificare in modo univoco le tuple (i record) della tabella.

  I campi ``Voto conseguito'' e ``Data superamento", invece, sono campi
  <with|font-shape|italic|non chiave>, e fanno riferimento all'intera
  superchiave.

  Difatti, se dipendessero solo da:

  <\itemize>
    <item>"Codice corso di laurea'' si perderebbero le informazioni relative
    allo studente e all'esame superato

    <item>"Codice esame'' si perderebbero le informazioni relative allo
    studente ed al corso di laurea a cui l'esame appartiene

    <item>"Matricola studente'' si perderebbero le informazioni relative
    all'esame superato e al corso di laurea a cui lo studente è iscritto.

    <item>"Codice corso di laurea", ``Codice esame'' si perderebbero le
    informazioni relative allo studente che ha superato l'esame

    <item>"Codice corso di laurea", ``Matricola studente'' si perderebbero le
    informazioni relative all'esame superato

    <item>"Matricola studente", ``Codice esame'' si perderebbero le
    informazioni relative al Corso di Laurea di appartenenza.
  </itemize>

  <subsection|Terza forma normale>

  <with|font-series|bold|Definizione:> Una base dati è in 3NF
  (<with|font-shape|italic|terza forma normale>) se è in 2NF e tutti gli
  attributi non-chiave dipendono dalla chiave soltanto, ossia non esistono
  attributi che dipendono da altri attributi non-chiave. Tale normalizzazione
  elimina la dipendenza transitiva degli attributi dalla chiave.

  Per ogni dipendenza funzionale non banale
  <image|http://upload.wikimedia.org/math/c/5/c/c5c6eab38071acc9d029224e005ee003.png|0.6383w|||>
  è vera una delle seguenti condizioni:

  <\itemize>
    <item>X è una superchiave della relazione

    <item>Y è membro della chiave della relazione
  </itemize>

  <with|font-series|bold|Teorema:> Ogni relazione può essere portata in 3NF.

  <subparagraph|Dalla soluzione dell'esame:>Una relazione
  <with|font-shape|italic|r> è in 3NF se o la parte sinistra di ogni
  dipendenza è una superchiave di <with|font-shape|italic|r>, oppure ogni
  attributo nella parte destra di ogni dipendenza è contenuto in una chiave
  di <with|font-shape|italic|r>.

  <with|font-series|bold|Da domanda d'esame:> Lo studente fornisca la
  definizione di Terza Forma Normale

  Una tabella <math|r> è in Terza Forma Normale se per ogni dipendenza
  funzionale non banale <math|X\<rightarrow\>Y> definita su di essa è
  verificata almeno una delle seguenti condizioni:

  <\itemize>
    <item><math|X> è superchiave di <math|r>

    <item>Ogni attributo in <math|Y> è contenuto in almeno una chiave di
    <math|r>
  </itemize>

  <with|font-series|bold|Da domanda d'esame:> Dare un esempio di relazione
  non BCNF ma 3NF

  <\verbatim-code>
    R(_<with|font-series|bold|A>_, _<with|font-series|bold|B>_, C, D)

    AB -\<gtr\> CD

    D -\<gtr\> A
  </verbatim-code>

  <subsection|Forma normale di Boyce e Codd>

  <with|font-series|bold|Definizione:> Una relazione R è in forma normale di
  Boyce e Codd (BCNF) se e solo se è in 3NF e, per ogni dipendenza funzionale
  non banale <image|http://upload.wikimedia.org/math/c/5/c/c5c6eab38071acc9d029224e005ee003.png|0.6383w|||>,
  <image|http://upload.wikimedia.org/math/0/2/1/02129bb861061d1a052c592e2dc6b383.png|0.6383w|||>
  è una superchiave per R.

  Dato un insieme di relazioni, non è possibile garantire sempre il
  raggiungimento della BCNF; in particolare il mancato raggiungimento di
  questo obiettivo è indice che la base dati è affetta da un'anomalia di
  cancellazione (ossia è possibile perdere dati a seguito di un'operazione di
  cancellazione).

  Es: Facciamo un esempio molto banale, se abbiamo uno schema relazionale
  <image|http://upload.wikimedia.org/math/a/4/b/a4bc7790efbe542081cc59135861490f.png|0.6383w|||>

  Mettiamolo in forma canonica <image|http://upload.wikimedia.org/math/8/3/1/831bc62d5b557a3e7167cc03d892fe64.png|0.6383w|||>.

  Calcoliamo le chiavi: A, B e C non stanno a destra di nessuna dipendenza,
  quindi appartengono a tutte le chiavi

  La chiusura di ABC è ABCDE quindi ABC è una chiave

  Ora, visto che una chiave è una superchiave minimale (ovvero una
  superchiave con tutti attributi essenziali per derivare ogni attributo del
  sistema) lo schema relazionale è in BCNF

  <section|Regole di Armstrong>

  <\description>
    <item*|Unione>

    <\equation*>
      <around*|{|X\<rightarrow\>Y,X\<rightarrow\>Z|}>\<Longrightarrow\>X\<rightarrow\>YZ
    </equation*>

    <item*|Pseudotransitività>

    <\equation*>
      <around*|{|X\<rightarrow\>Y,WY\<rightarrow\>Z|}>\<Longrightarrow\>XW\<rightarrow\>YZ
    </equation*>

    <item*|Decomposizione>

    <\equation*>
      <around*|{|X\<rightarrow\>Y,Z\<subseteq\>Y|}>\<Longrightarrow\>X\<rightarrow\>Z
    </equation*>
  </description>

  <section|Definizioni>

  <subsection|Miste>

  <subsubsection|Chiusura transitiva di un insieme di dipendenze>

  <subparagraph|Dalla soluzione dell'esame:>

  La chiusura di un insieme di dipendenze è
  <math|F<rsup|+>=<around*|{|X\<rightarrow\>Y <around*|\||
  F\<Rightarrow\>X\<rightarrow\>Y|\<nobracket\>>|}>>

  <subsubsection|Chiusura di un insieme di attributi>

  <with|font-series|bold|Dalla soluzione dell'esame:>

  La chiusura di un insieme di attributi <math|X<rsup|+>> è costituito dagli
  attributi funzionalmente dipendenti da <math|X>

  <with|font-series|bold|Da domanda esame:>

  Dare un esempio di uso della chiusura di un insieme di attributi

  Individuazione della chiave primaria

  <subsubsection|Algoritmo per il calcolo della chiusura di un insieme di
  attributi X>

  <with|font-series|bold|Da domanda esame:>

  Definire l'algoritmo per il calcolo della chiusura di un insieme di
  attributi X

  Si parte da un insieme uguale ad X, per ogni dipendenza
  <math|A<rsub|>\<rightarrow\>B>, dove A appartiene ad X, B viene aggiunto ad
  X, finché non ci sono altre dipendenze tali che B non è contenuto
  nell'insieme costruito fino a questo punto.

  <subsection|ACID>

  <\itemize>
    <item><with|font-series|bold|atomicità>: la transazione è indivisibile
    nella sua esecuzione e la sua esecuzione deve essere o totale o nulla,
    non sono ammesse esecuzioni parziali;

    <item><with|font-series|bold|consistenza>: quando inizia una transazione
    il database si trova in uno stato consistente e quando la transazione
    termina il database deve essere in un altro stato consistente, ovvero non
    deve violare eventuali <hlink|vincoli di
    integrità|http://it.wikipedia.org/wiki/Vincolo_di_integrit%C3%A0>, quindi
    non devono verificarsi contraddizioni
    (<with|font-shape|italic|inconsistenza>) tra i dati archiviati nel DB;

    <item><with|font-series|bold|isolamento>: ogni transazione deve essere
    eseguita in modo isolato e indipendente dalle altre transazioni,
    l'eventuale fallimento di una transazione non deve interferire con le
    altre transazioni in esecuzione;

    <item><with|font-series|bold|durabilità>: detta anche
    <with|font-series|bold|persistenza>, si riferisce al fatto che una volta
    che una transazione abbia richiesto un <with|font-shape|italic|commit
    work>, i cambiamenti apportati non dovranno essere più persi. Per evitare
    che nel lasso di tempo fra il momento in cui la base di dati si impegna a
    scrivere le modifiche e quello in cui li scrive effettivamente si
    verifichino perdite di dati dovuti a malfunzionamenti, vengono tenuti dei
    registri di log dove sono annotate tutte le operazioni sul DB.
  </itemize>

  <subsection|Database NOSQL>

  I dati sono conservati in documenti, non in tabelle.

  I database NOSQL non hanno uno schema fisso come quelli relazionali.

  <subsubsection|Vantaggi e svantaggi>

  <\enumerate>
    <item><with|font-series|bold|Leggerezza computazionale>: i database NoSQL
    non prevedono operazioni di aggregazione sui dati, in quanto tutte le
    informazioni sono già raccolte in un unico documento associato
    all'oggetto da trattare. Negli ambienti SQL la complessità di queste
    operazioni, e quindi il peso computazionale, cresce con l'ingigantirsi
    della base di dati, del numero di tabelle e delle informazioni da
    trattare. Il NoSQL, invece, non ha limiti di dimensioni in questo senso.
    Così si ottengono migliori prestazioni e performance anche in ambienti di
    Big Data. Lo scotto da pagare a tutta questa flessibilità e alla
    proprietà di aggregazione dei database NoSQL è la
    <with|font-series|bold|duplicazione delle informazioni>. In realtà, i
    costi sempre meno proibitivi dei sistemi di storage rendono questo
    svantaggio poco importante.

    <item><with|font-series|bold|Assenza di schema>: i database NoSQL sono
    privi di schema in quanto il documento JSON contiene tutti i campi
    necessari, senza necessità di definizione. In questo modo, possiamo
    arricchire le nostre applicazioni di nuovi dati e informazioni,
    definibili liberamente all'interno dei documenti JSON <strong|senza
    rischi per l'integrità dei dati>. I database non relazionali, a
    differenza di quelli SQL, si rivelano quindi adatti a inglobare
    velocemente nuovi tipi di dati e a conservare dati semistrutturati o non
    strutturati.

    <item><with|font-series|bold|Scalabilità orizzontale garantita>:
    l'aggregazione dei dati e l'assenza di uno schema definito a priori offre
    l'opportunità di scalare orizzontalmente i database NoSQL senza
    difficoltà e senza rischi operativi.
  </enumerate>

  <with|font-series|bold|Vantaggi di un sistemi NoSQL da compito d'esame>

  Quali sono i vantaggi di un DBMS NoSQL e per quali applicazioni sono
  rilevanti?

  Scalabilità orizzontale, sharding, high availability.

  Le applicazioni interessate a queste caratteristiche sono quelle che
  richiedono tempi di risposta molto bassi senza necessitare di controlli di
  consistenza molto forti.

  <subsubsection|Differenze con un database SQL>

  <subparagraph|Da soluzione esame:>

  Nei DBMS non relazionali è possibile attuare sharding senza perdere di
  efficienza nell'esecuzione di query complesse, nei relazionali no.

  Nei DBMS non relazionali si ha replicazione estesa di nodi anche a caldo e
  quindi scaling orizzontale invece che verticale.

  Nei DBMS non relazionali non è possibile attuare controlli sull'integrità
  dei dati e quindi garantirne la consistenza, e non esiste uno standard
  condiviso per la memorizzazione e l'accesso ai dati.

  <with|font-series|bold|Da domanda esame:>

  Quali sono le caratteristiche di un database SQL che non vengono mantenute
  in uno NoSQL?

  Standardizzazione del modello e del query language

  Portabilità

  Controllo sull'integrità dei dati

  Niente tabelle nella realizzazione fisica

  <subsubsection|Equivalente ACID per database NOSQL>

  <subparagraph|Da una domanda di un compito:>

  Perché i sistemi NoSQL non sono basati sulle proprietà ACID. Su quale
  paradigma sono basati?

  I sistemi NoSQL sono basati sul paradigma Base, ovvero Basically Available,
  Soft state, Eventual Consistency, invece che godere delle proprietà di
  Atomicità, Coerenza, Isolamento e Durabilità. La coerenza dei dati in un
  sistema sempre disponibile e altamente distribuito non è garantibile.

  \;

  <section|Schedule (pratico)>

  <image|<tuple|<#89504E470D0A1A0A0000000D49484452000002D50000010E080600000046A2EB1A0000000473424954080808087C086488000000097048597300000EC400000EC401952B0E1B0000200049444154789CECDD795C5455FF07F0CFB00C300303C3360B9B209BA0028282828A863B666AB4B9946BA9956565656699ED56BFD21E7BB4C7254B4BD10A4571C12DC52D1151769045F67D87616098DF1F343747F66586EDFB7EBDEE6B863B77EE3D14C267CEFD9E735872B95C0E420821841042489769F47603082184104208E9EF2854134208218410D24D14AA092184104208E9260AD58410420821847413856A420821841042BA894235218410420821DD44A19A1042082184906EA2504D0821841042483751A8268410420821A49B2854134208218410D24D14AA092184104208E9260AD58410420821847413856A420821841042BA894235218410420821DD44A19A1042082184906EA2504D0821841042483751A8268410420821A49B2854134208218410D24D14AA092184104208E9260AD58410420821847413856A420821841042BA894235218410420821DD44A19A1042082184906ED2EAED061042485F2393C950515181F2F272545656422A95A2A1A10195959500809A9A1AD4D5D501004A4B4B0100757575A8A9A9010054545440269329BDA7AF31343484868606B4B4B46060600000E072B960B3D960B1583032320200E8EAEA424F4F4FE93DBABABAD0D7D7078FC763F61142C86047A19A103220288270595919AAAAAA50595989CACA4A261C2BF6555555A1ACAC0C151515A8AAAA62F697969632CF6B6B6B7BFBDBE957B85C2EF4F5F561606000434343F0783CE66B7D7D7DF0F97CA5AF793C1E8C8C8C987D060606CC3E168BD5DBDF0E218474094B2E97CB7BBB11841052575787A2A222141515213F3F1F858585282929510AC68AA0DCD23E452F31E9DFB85C6EB3A0DD52F8D6D7D787B1B131040201CCCCCC606A6A0A333333686B6BF7F6B7400819A42854134254422291A0A0A000050505282C2C446161218A8A8A50585888FCFC7C26402BBEEEAB6512A47F31323282B9B93913B24D4D4D21100894BE36373787B9B939CCCCCCA0A3A3D3DB4D26840C1014AA09219D525C5C8CBCBC3CE4E5E521373717F9F9F9C8CECE46414101727272909F9F8FDCDC5CA6D69834A7AFAFDFAC47F5E1DA658587EB9D1F555E5E8EC6C646A57DD5D5D5904AA54AFBA45229AAABAB7BA0D503938989098442218442214422110402012C2C2C606E6E0E0B0B0B080402884422A6C69C10425A43A19A1002A0A96739333313999999C8CACA4246460672737399A0AC08CE8A017AFD91A6A626783C1EF4F4F4A0ABAB0B1E8F07369B0D1E8FC7845A030303B0D96C181A1A424747071C0EA7C5C17A6C361B5C2E1700606060002D2DAD7607FDF5152D0DAE5484F4FAFA7A54555501002A2B2BD1D0D0C0D4AB03FF0ED25404F8D2D252E63D8AD7CACACA505F5FCFD4A74B2492163F04F427BABABA100A85108BC54CE0168944B0B6B686B5B5352C2D2D616969493DDF840C6214AA0919041A1A1A909B9B8B070F1E30A139333313191919CCF3828282DE6E66BB381C0EF87C3EF87C3E8C8D8D99E76DED5384639AA5A2F729C2796D6D2D2A2A2A505A5ACA6C2525254A5FB7B4AF3F0C20158944B0B4B484959515ACACAC98C06D6565051B1B1B088542FA39246480A2504DC80051515181E4E464A4A4A4305B727232D3E32C93C97ABB89009A4A1A14E1B7B5C7D69E532FE0E026914898A05D525282A2A222A6665F51A3AF18E8AA782E91487ABBD94AB4B5B521168B616363037B7B7BD8DBDBC3C1C18179AEAFAFDFDB4D24847411856A42FA918A8A0A262C2B82735252125252527AADA799C562412010C0DCDC1C969696CD6A514D4C4C9482716B35C284A8425555150A0B0B515050D02C783F3C785631A8B6B7EBCF45221113B21F0EDB14B809E9FB285413D2C7D4D6D622292909C9C9C9CCA362536770D6D0D0606E650B040288C562A6A65431A84B31B04B4B8BA6BCEFAAAB57AF42229160F2E4C92A39FF5F7FFD058140002727A70E1D9F9D9D8DBD7BF762C3860D83B24CA1B6B65629643F3C43CDC3215C31DEA0A1A1416D6D7B38703B3A3AC2C1C18179A4BB3884F43E0AD584F4929C9C1CC4C5C521353515A9A9A9888D8D455C5C1CD2D3D3D536A08BCFE7C3CECE8ED9442211C46231ECECECE0ECECCC0CC423AA3373E64CE4E5E5E1F6EDDB2A39BFB3B333A64E9D8A6DDBB675E8F8DDBB7763F9F2E5484A4A828383834ADA349094969632FF861FDDD4F96F592412C1D5D555E9DFB38B8B0B9C9D9DA1A9A9A996361032D851F712212A545D5D8D989818DCBB770F494949484A4A426262225253539B4D7DA60AA6A6A6B0B5B585ADAD2D860C19C26C8AAF75757555DE06D236131313DCBB774F65E7CFCFCFEF542FA6A2E7955636EC183E9F0F4F4F4F787A7A367B4D2291203D3D1D696969CCF6F0D72525253DD68EDCDC5CE4E6E636DBAFA3A3C3F4682B7AB5870F1F0E676767F078BC1EBB3E21844235213D46D1F31C1B1B8BC8C84844464622313151A50304D96C362C2D2D957AA7149BBDBD3D0C0D0D55766DD233582C964A5701ACA8A8E8D4947E8A0F7BB43261F7E9EAEAC2D9D919CECECE2DBE2E9148909393D3622F7762622233B56177D4D5D521262606313131CD5E53F46EBBB8B8308F23478EA4B04D481751A826A493AAABAB111B1B8BE8E868444747E3EEDDBBB87BF72ECACBCB55723D737373D8DBDB3361D9D6D696796E6161413D8A7D445A5A1A8E1D3B86E0E06098989820242444E9F5A2A222DCBE7D1B56565618366C18B35F2A952ADD31904AA560B3D92D5EA3A6A606D9D9D930313181B1B1718BC7C86432646565415F5F1F1C0E078D8D8D303131615EBF77EF1EC462B1D2BEE4E464080402F0783CA6A7FAD150DD916B93CED1D5D565FE2D3F4A2E9723373717696969484D4D657AB715A13B2B2BABDBD757F46E8787872BEDB7B1B181B3B333468C18A1F448619B90B651A826A40D797979888A8AC29D3B7710151585E8E868A4A4A4F4789D2497CB551A78E4E4E4C4DCAEED6B0B87106529292958B66C19FEFAEB2F004DFF2F6B6A6A20914898B07CEAD429040505313D8F6E6E6EF8F3CF3F3164C810343636425B5B1B71717178F1C5171111110181408043870E61C28409CC75B66CD982CF3FFF9C59AC65FCF8F13870E000ACACAC986376EDDA85F7DE7B0F45454560B15878E289270000666666CC3153A64CC1534F3DA55463EDEFEF8F79F3E661FBF6ED4CA87E78F06947AE4D7A168BC582582C86582C86AFAF6FB3D7ABABAB950634272626322566656565DDBA7646460632323270FAF469A5FD767676F0F2F2C2E8D1A3E1E5E5054F4F4F9ACD87908750A826E41F3939394CD986626BA946B1ABB4B4B4606D6DAD34884831B068C890218372A6858120282808717171D8B06103162D5A849C9C1C2C59B284F9E0F5E0C1033CFDF4D3F0F1F1C1E79F7F8E070F1EE0D34F3F457A7A3A13AA0B0B0B3171E244B0D96CAC59B306870F1FC6471F7DC4F420EEDEBD1B9B366DC29A356B10181888B4B4346CDEBC195F7EF925B66FDF0E00F8E5975FF0E28B2F62C18205983163068A8A8AB065CB1600603E98555454203F3F5FA92C48B1309022442BDAADF879ECC8B589FA71B95C787878C0C3C3A3D96B0F0F9E540C804E4D4D457C7C3CF3C1A82B14E73C7CF830B34F2412C1CFCF0FBEBEBE4C6DB962F55142061B0AD564D0A9AFAFC7BD7BF770E7CE1DA51EE8CACACA1EBB864824C2881123E0EEEE8E91234762E4C891707676A63AD501462693213A3A1A3367CEC44B2FBD042B2B2B383B3B2323238339E6A38F3E82A6A6260E1D3A04636363787A7A62EEDCB9CCEB8ADBFC0E0E0EB872E50ACCCDCD0100C78F1F67AEF1F1C71F63F1E2C5F8FEFBEF515656860B172EA0A8A848A96CE0830F3EC0A2458BB07FFF7E669F959515E6CF9F0F0E8703E0DFE5C92D2C2C9863AAABAB2197CB993990153DD56C36BBC3D7267DCBC3832783828298FD32990C2929294CE99A62EB4E29496E6E2E828383111C1C0CA0A96C68F8F0E1183D7A34B3B9BABAD2B49B6450A09F7232E0959797E3EFBFFFC6952B57101111818888881E5BEE585B5B1B0E0E0ECC201F4F4F4F787979412412F5C8F949DFA6A9A989B973E7E2F7DF7F87B5B5359C9D9DF1E69B6F62D9B265009A3EC0FDF6DB6F58B56A55AB75C88A594D7FFCF1472650EBEAEA3235FA292929484F4FC78E1D3BF0FEFBEFE3FBEFBF474343033EFCF043BCF6DA6B009AE6964E4D4DC577DF7DA7746E8140C09C4FD15E004A774514215A11BC152B10EAEAEA76E8DAA4FFD0D4D4849393139C9C9CF0D4534F31FBCBCBCB71EFDE3D4446463283AD6FDFBEDDA5DF93F5F5F5888A8A4254541476EDDA05A0A957DDDDDD1D9E9E9EF0F3F3C3A44993606A6ADA63DF17217D05856A32A0C86432C4C6C6E2EAD5ABB87AF52AAE5DBB869494941E39B7B9B9393C3C3CE0E6E646BDCF8471E4C8115CBD7A15E7CE9D43707030962F5F8EF2F272AC5BB70E191919A8AEAE86BFBF7FABEF97CBE5B0B1B1C1C4891395F6555656A2B1B191E9F59E3F7F3E747474F0F2CB2FE3B5D75E531A68A8A8A16D2DB82B4A3A14F5AF0F97002802B662C06B4D4D0D343434C066B33B746DD2FF191A1AC2CFCF0F7E7E7ECCBEFAFA7AC4C7C72BF568DFBE7DBB4BD300565757331D1ADBB66D038BC582B3B3337C7C7CE0EBEB8BB163C762D8B06134E89AF47B14AA49BF56595989E8E868444444E0CA952BB87AF56A8FCCFD2A128998DBA79E9E9E4CED33218F62B158F0F5F585AFAF2FDE7BEF3D8C193306FBF6EDC3BA75EB98C5738A8A8A5A7DBF4C266B36DB87B1B1316432198A8A8A9820FCE28B2FE2A38F3E521A18161515057B7B7B58585840434303E1E1E118376E1CF37A7D7D3D00304B6F1B1A1A82CBE5222F2F8F39E6D15AFE9A9A1AA667BB23D7A6816A0393B6B636D379B068D12266BF62ECC9C3D387C6C7C7A333EBC8C9E572C4C7C7233E3E1E7BF7EE05D0F4B33672E448A63EDBCFCF0F7C3EBFC7BF2F4254894235E95772727298001D111181A8A8A86ECDC4A1A5A5054747472638BBB8B860ECD8B1746B9274C8CE9D3B71EEDC39BCF2CA2B108BC5484D4D45494909331050241261CC9831D8B871236C6D6D3176EC58DCBD7B179F7EFA29162C588079F3E6A1A6A686A96756B0B6B60600DCBF7F1FA3478F86ADAD2D4E9C3881C9932763F4E8D1C8CFCFC7C99327B179F366FCF0C30F58B26409828282F0C9279F80C3E160DAB469888B8BC3FAF5EB0100858585CCB91D1C1C10161686193366A0A1A10151515100C0CCA72E91489890DFD16B93C1433123C9ECD9B3997D0F978F2802774C4C0CEAEAEA3A7CDECACA4AA6371BF8B7544511B2274C9880214386F4F4B74348CF9213D247353434C8A3A2A2E4DBB76F973FF3CC33724B4B4B39806E6D0E0E0EF2C58B17CB77EEDC29BF75EB965C2291F4F6B749FAB1DDBB77CB353535957EC6747575E57FFEF927734C525292DCC5C545E918333333F9A54B97E472B95CEEEBEB2B5FB06081D279EFDEBD2B0720DFBF7FBF5C2E97CB636262E45E5E5ECDAEB366CD1AE667B8B4B454FED8638F291DE3E5E525E7F3F9F2DDBB7733E73E70E0805C43438339465B5B5B0E40BE69D326B95C2E97AF58B1426E6F6FCF1CDF916B13F2A89A9A1AF98D1B37E4DF7FFFBD7CE1C285723B3BBB6EFFFEB6B5B5952F5AB448FEDFFFFE577EEFDE3DB94C26EBED6F9310252CB9BC13F76C0851A19A9A1ADCBE7D5BA9275A315B4157686969C1CDCD8D99EAC9DFDF9FE90124A4A7646767E3FCF9F3282C2C844020C0F4E9D39BD51CD7D7D7232C2C0C898989B0B5B5C5AC59B39869C7AAAAAAA0A9A9D96C1AB27DFBF661F6ECD9CCB9E47239EEDEBD8BD4D454E8EBEBC3C7C7A7C5D28BC8C848A4A5A5C1C6C6065E5E5EC8CECE865028549A7D21252505376FDE0497CB859F9F1FF6EDDB87A953A762C48811C8C9C941494909860F1FCE1CDFD16B13D296FCFC7CDCBC79139191913D3268DCC0C000DEDEDE4CB988AFAF2F4DE7477A15856AD26B6432196EDDBA85D3A74FE3CC9933B871E3063313415798999961ECD8B1F0F5F5C5B871E3E0E5E5A5B4521D218490BE432A9522323212D7AF5F47444404AE5DBB869C9C9C2E9F8FCD6663DCB871983A752AA64D9B067777779AFF9FA815856AA2569999994C883E77EE5CB706153A3B3B63DCB871F0F3F3C3B871E3E0E4E4D4832D258410A26E191919888888C0D5AB57F1D75F7F213636B6CBE366CCCDCD1110108069D3A661EAD4A9100A853DDC5A429451A8262A555B5B8B888808848787233C3C1CB76FDFEED4287185874B39FCFCFCE0EFEFAFB4F43221849081A7B2B212376EDC604A02AF5CB9C2CCA5DE5976767608080840606020A64C99427732498FA3504D7A5C4C4C0CC2C2C270E6CC992EFF0234343464CA38C68F1F8FD1A34753AD1C21840C72128904376FDEC4E5CB979969542B2A2A3A7D1E0E878389132762DAB469983163061C1D1D55D05A32D850A826DD5653538373E7CEE1E4C9933879F2241E3C78D0E973181A1A2220200093274F869F9F1F860F1F4EB570841042DA2493C970F7EE5D5CBE7C19E1E1E1B870E102AAAAAA3A7D1E7B7B7BCC9C39133367CEC4C48913A9179B7409856AD225696969387BF62CC2C3C3111616D6A55F622E2E2E983D7B360202023061C284660B601042DAD7D8D8C82C69AE505D5D0DA954AA740C8BC5525AB14E474787599A5CC1D0D0903ECC927EADA1A101D1D1D1387EFC38424343BB5472A8A7A7075F5F5F04060662EEDCB9346B14E9300AD5A4431A1A1A70FDFA75848686223C3C1C9191919D3E87A9A929264D9AC4D4B489C56215B494909E555E5E8EDADA5AD4D4D4A0B4B414B5B5B5904824282F2F47636323AAAAAA505F5F0F894482DADA5AD4D7D7A3AAAA4A29EC3E7A2CD07218AEA9A9515A30A323C7A8129BCD66568554E0F178D0D4D464BED6D6D66EB6788D81810133859FA6A626783C1E00C0C8C8082C168B795D4F4F0FBABABACC751E3D564747075C2E17464646D0D3D30387C3819191912ABF6532C0141414E0D2A54B387EFC384E9C38D1A5C1F1767676080C0CC4ECD9B3A90388B489423569954422415858180E1F3E8C13274EA0B2B2B253EFD7D2D2C2D8B163317DFA744C9B360D1E1E1ED40B46D4A2AEAE0EE5E5E5282B2B63B6F2F2729496962AEDABA8A8404D4D0D2A2B2B51595989DADA5A545555A1A2A202B5B5B5CCF2DEA46FE17038E07038E0F178D0D7D70787C381BEBE3E783C1EB3DFC8C808868686303232029FCF679E3FFC48B7F80717994C86BFFFFE1BA74E9DC2A953A770EBD62D6625D18E323232C2AC59B3306FDE3C4C9F3EBDD9DD1E32B851A8264AA45229CE9C398343870EE1D8B1639D1E002210083073E64CCC98310353A74E65966B26A4AB8A8B8B515454C46CC5C5C528282840616121F35A4949895258EECE821264F0D0D5D5550AD92626263035356536737373A5AFCDCCCC9A2DEC43FAAFE2E2629C3E7D1A274E9CC0E9D3A7515C5CDCA9F773381C4C9F3E1D73E7CE45606020DD452114AA49D3A7F76BD7AE21383818BFFEFA2B0A0B0B3BFC5E0D0D0D78787830251DE3C68DA3DE68D2A6C6C646141414202F2F0FD9D9D9282828405656160A0A0A909393C304674588EE6C4F1221AAA4A9A9D92C780B8542989B9BC3D2D212E6E6E6108BC5CC3EFA7DD83F343636222A2A0AE1E1E1387EFC38AE5EBDDAA95A6C4D4D4DF8F8F8202828084F3DF5144422910A5B4BFA2A0AD583944C26C3C58B1771E8D021FCFEFBEF9DFA84CEE7F33175EA54A6479AE68B264053DD7D7E7E3E727272909797879C9C1CE4E6E62A6D393939282828E8D6CA997D9962A01F97CB059BCD86AEAE2EF4F4F4A0A5A5C52CEBCDE7F395DEA3A8335650BC4715C728343434342BE7AAACAC54FAFFA2A80D7F58454585D2871CA954DAAC4446513FFEE87B14B5E0757575A8A9A9814C2663EE849595957569FEFABE4E53531302810042A11022910842A11062B118028100161616100804B0B4B4844020A03ADD3E262727076161613879F224CE9E3DDBA9F2474D4D4DF8FAFA62DEBC7934D07190A1503DC85CBF7E1D070F1EC4E1C387919F9FDFE1F7393A3A62EEDCB998356B16C68E1DCB0C4222039F44226142B2E2313F3F9FE95DCECACA427E7E3E0A0A0AFA65307AB4FE56F1D8D23E3E9FCF7CADA7A7072E970B0D0D0D2A73EA218A60AF180CAAA8817FB83E5EF1BCB57DA5A5A5BDFD6D7489B9B93913B68542A1D2E3C3E15B4747A7B79B3AE848A5525CBE7C19274F9EC41F7FFC81B4B4B40EBF5743430313274EC4F3CF3F8FF9F3E7371BD44B06160AD583407C7C3C0E1D3A8483070F223939B9C3EF538C780E0A0A829F9F9F0A5B487A5B515111EEDFBFAFB4A5A4A4E0FEFDFBC8CBCBEBEDE6B589C3E1C0D4D49409C28F06E2D636C5E035BA3D3FF03C5C5FFF68F06E6B2B2A2AEAD2F4A0EA24168B3174E850D8D9D961E8D0A14ACFE9AEA17AC4C6C622383818A1A1A19D9A094B575717B367CFC6A2458B3073E64CA55974C8C040A17A80CACECEC6912347101C1C8C8888880EBFCFC5C585A90973717151610B893AC9E5726467673341F9D1E0FCE8B46DBDE5E17A55C5A0B147078B99989828EDA3D1F7A427D5D5D531F5FC858585282C2C6C56E75F5050A0B4EFE139C17B938181418B81DBDEDE1ED6D6D614E254202D2D0DC78E1D43707070A7EAB02D2D2DB160C1022C5BB60C0E0E0E2A6E2551170AD50348595919F38FFBD4A9531DAE5B5504E9679E7906CECECE2A6E2551A5D2D252C4C6C6222E2E0EA9A9A9CC969898D86B3D707C3E1F2291087C3E1F7C3E1F62B1B8D5AF050201FDE127FD4E6D6D2D4A4B4B515A5ACA8C1D68EDEB9C9C1C949595A9BD8DDADADAB0B2B2829D9D5DB3CDC5C5A5D5FA7BD271999999080B0BC3F1E3C73BF537D8D3D3138B162DC2C2850B6976997E8E42753FD7D8D888F3E7CFE3C71F7F4448484887178518316204162E5C88A79F7E1A3636362A6E25E949B9B9B9888B8B4362622292929290929282949414A4A5A5A9B5C74C474707D6D6D6B0B2B2829595156C6C6C98E7D6D6D6B0B0B06016F22084FCABBABA1AB9B9B9C8CCCCC483070F90919181CCCC4CA5AF6B6A6AD4D61E2D2D2D585B5BC3DEDE1E43870E85838303860D1B06676767D8D8D8280D80251D53505080A3478FE2C081031DEEC1D6D3D34350501056AC58412597FD1485EA7E2A2F2F0F3FFDF4137EFCF147DCBF7FBF43EF118BC578F2C927A946BA1F686C6C447A7A3AE2E3E311171787848404E6515DBD5CE6E6E6B0B6B666C2B28D8D8D5288160A856A69072183517171718BA13B232303191919C8CDCD55CBC0602E970B676767383B3BC3C5C585791C3A7428B4B5B5557EFD8120333313070F1EC4DEBD7B919898D8A1F7383A3A62E9D2A558BA7429D5CAF72314AAFB1145AFF4AE5DBBF0E79F7F32CB1DB7454F4F0F81818158B4681166CC9841B376F4310D0D0D484E4E466C6CAC52804E484880442251D975B5B4B420168B616D6D0D5B5B5B585B5B3301DADADA1A43860CA1DBC184F4617575754AA1FBE1EDC18307C8CCCC54E99D2B6D6D6DD8DBDB33417BF8F0E1CC739A1EB075B1B1B1F8F9E79FF1D34F3F756810389BCDC69C3973B072E54A3CF6D86374D7A08FA350DD0FE4E4E4E0E79F7FC6CE9D3B3B34958FA6A626264D9A84458B1661FEFCF9E072B96A6825694B7D7D3D525252987A67C563525292CAFEF0E9EBEB33B773EDEDED99E7767676B0B0B0A00F58840C608D8D8DC8CBCB435A5A1A5322A618989C9292A2B2A907B5B4B4606F6F8FE1C387C3D5D515AEAEAE183E7C381C1C1CE877CE436432192E5CB880FDFBF7E38F3FFEE8D098177B7B7B6670A39595951A5A493A8B42751F76FEFC797CFBEDB73879F264875695737575C58A152BF0DC73CFD1EDA25E94959585A8A828DCB973073131312A0DCF464646CD82B362A3F20C42486B8A8B8B9542F6C35B6756D5ED28369BCD948E8C183102EEEEEE70777787582CEEF16BF5379595953872E40876EEDC891B376EB47BBCB6B636E6CC9983356BD6C0DFDF5FF50D241D46A1BA8F914AA5080909C1575F7D859B376FB67BBC62DE4BBA35D43B727272101919C96CB76EDD52C9BCCE7C3E9F19A5EFEAEACA3CDADADAD2FF7342488F2A2B2BC3FDFBF79BDD594B4B4BEBF13A6E232323B8BABAC2D3D393D99C9D9D07ED2C40F1F1F1F8E9A79FB06BD7AE0EDD4D707272C2AA55ABB06CD9325A58A60FA050DD4794979763DFBE7DF8EAABAF909595D5EEF12E2E2E58BC783156AC580163636335B470706B6C6C445C5C1CFEFEFB6F444545212A2A0AD1D1D19D5ABAB623C462315C5C5C306CD830B8BABAC2D9D919AEAEAE303535EDD1EB10424867959797232121811903121B1B8B848404A4A7A7F768D8E670384C6FB68787073C3D3DE1E6E636A806464A24121C3E7C18DF7DF71D6EDFBEDDEEF13C1E0FCF3CF30CD6AE5D4B6B4CF4220AD5BD2C252505DBB76FC7FFFEF7BF76A750323030C0134F3C81C58B17232020404D2D1C9C2A2A2A70F3E64D5CB97205919191B87AF52A4A4A4A7AECFC7C3EBF59AFF3C89123616E6EDE63D720841075904AA5484E4E56EAD55604EEC6C6C61EB986B6B636468E1C095F5F5F787A7A62FCF8F1B0B5B5ED9173F775919191D8B56B170E1E3CD86EED358BC5C2638F3D86952B5762DEBC7983B6C7BFB750A8EE25E7CF9FC737DF7C8393274FB6FB09DFDDDD1D6BD6ACC133CF3C43B77754A0A1A101F7EEDDC3B56BD770E3C60D5CBF7E1D4949493D726EB158CC0CD67938441B1919F5C8F90921A4AFAAAEAE667AB41F0EDC3DD5B36D6565051F1F1F8C1D3B16DEDEDE18356A147475757BA0E57D537979397EF9E517ECD8B103717171ED1E6F676787575E79052B57AEA49567D58442B51A353636E2C48913F8F4D34F71FDFAF5368FD5D0D0C0CC9933B176ED5AAA95EE6152A914376EDCC0C58B1771E9D2255CBF7E1DD5D5D5DD3A278BC582BDBD3D3C3C3C306AD428787878C0C3C383068C1242C823CACBCB99323AC5969090D0E115085BC366B3E1E5E58589132762E2C489F0F3F31BB0B35F5DB97205DBB66DC31F7FFCD1EE7F37535353AC59B306AFBFFE3A0C0D0DD5D4C2C18942B51A48A552FCF6DB6FF8ECB3CF909090D0E6B13C1E0F2FBCF0025E7FFD750C1932443D0D1CE01A1A1A101D1D8DF0F0705CB972057FFDF5172A2A2ABA7C3E2D2D2D383A3AC2D3D393E9791E376E1C2D2FDB87949797A3AEAE0E555555A8AEAE86542A45696929A45229AAABAB51555505A9548AB2B232D4D5D531A5576565654C0F9AE27D0098F7A90B9BCD66C2008BC552BAB3A1AFAF0F6D6D6D686B6B435F5F1F5C2E176C361B7C3E9F799FBEBE3ED86C368C8C8CA0A3A3030E87031E8F47B782499F555F5F8FA4A424A581DF515151DD5A5952535313EEEEEEF0F5F5859F9F1FA64C9932E0EE12E6E4E460D7AE5DD8B16347BBB3B6F0783CAC5AB50A6FBFFD36F87CBE9A5A38B850A856A1CACA4AECD9B3075BB76E457676769BC73A3A3A62F5EAD558BE7CF980FD64AD2E8A9EE80B172EE0D2A54BB876ED1A7296711800002000494441546A6B6BBB7C3E4B4B4B8C1B370EE3C68D838F8F0FDCDDDDA1A3A3D3832D264053882D2B2B435959194A4B4B5B7D5E5555D52C34D7D5D5A1ACAC0C1289A45BFFAF073A2D2D2D18181880C3E1404747077C3E5F297473381C18191935DB0C0D0DC1E7F395F6514027AAD6D0D080B8B8385CBD7A15D7AE5DEB76699E969616468F1E8D891327C2DFDF7F40F564D7D5D5E1D8B163F8EEBBEF101111D1E6B106060658B26409366CD8008140A0A6160E0E14AA5520272707DF7EFB2D76EEDCD9668F288BC5C2CC9933F1DA6BAF51894737343636223E3E1E111111080F0FC7E9D3A7BBDC13ADE885F6F3F3637A37ECECEC7AB8C5035B6161210A0A0A50585888FCFCFC66E1F8E190FCF06B1D592194F41D060606E0F3F94CD86EE991CFE7C3D8D818028100028100666666F4819474CBA383C82F5FBE8CF2F2F22E9D4B4B4B0B6E6E6E08080840404000C68F1F3F207E3E6FDCB8816DDBB6E1D0A1436DAE716160608055AB56E18D37DEA041F23D8442750F2A2E2EC6C71F7F8C1F7EF801757575AD1EA7A9A989A0A020BCF3CE3B70737353630B078E8484049C3F7F1EE7CE9DC3C58B17BB3C3387919111C68F1F8F091326C0C7C7075E5E5E037AA04B573434343021393737B7DDE7DDAD8B24039BA1A121844221CCCCCC60666606914804333333088542585A5AC2DADA1A161616544E453A4451DE77F5EA55444444E0E2C58BC8CFCFEFD2B9B85C2E264C9880C99327E3B1C71E839B9B1B3434347AB8C5EA939C9C8C8F3FFE18070E1C68335C73381CBCF2CA2B58BF7E3D4DD1DB4D14AA7B80542AC50F3FFC800F3FFC10656565AD1EC766B3F1F4D34FE3BDF7DE839393931A5BD8FF959696E2F4E9D3080B0BC3B973E7DA2DA7698D2244FBFBFBC3DFDF1F6E6E6E83F636B66219E38C8C0C64656521333313191919CD42B22A5657EB4FF40DF5993FAC3A7A3A60EBB201347D38E6F2B84AC7B1349AEE36E97274C1D6612B9DA7AABC8A995E4C5223417D5D53CF7C437D036AAAFEAD1BAD2CAB04FEF9AD2CA991405AA79A65ECFB3A3D3D3D26605B5A5AC2CACA0A969696B0B0B080B9B939C46231CCCDCD0744CF22E959F1F1F1CC40F4EE846C1313134C9A3409010101983A756ABF9DC22F2D2D0D9F7FFE39F6ECD9D366A787BEBE3ED6AC59830D1B3680C7E3A9B185030785EA6E90CBE53872E408DE79E71DA4A6A6B67A1C97CBC5B265CBF0E69B6FC2CACA4A8D2DECDF52535371FCF871848686E2AFBFFEEAD232DFFAFAFAF0F1F1414040007C7D7DE1EDED3D68161090CBE5C8CCCC6496214E4F4F678273666626B2B3B355B274BAAAE9E8E9C0C0C880D9F40DF5A16FA4AFB4CF80DFB49FADC30647FF9FA9A45880819101731E2E8FCB7CA0D2E5E8425BA7E9E7424B4B0B1C83BE37FD94AC4186EACA7F074B569656425A2785A446829ACA1AD44BEB51555E05A9440A49AD0455E555689036A0BAB29A09F115A515CC7BAA2BAA515F57DFECF5FE86CFE7432814C2DCDC5C2970DBD9D9C1DEDE1EF6F6F603A66E96744D6A6A2A3350FDE2C58BC8CCCCECD279ECECEC9852918080807E37D8AFA3E1DAD4D4146FBEF926D6AE5D4B776E3B894275179D3B770EEBD7AF6F73A523C54C1EEFBEFB2E8442A11A5BD73FD5D5D5E1E2C58B080D0DC5891327909696D6E97370B95C8C1F3F1E93274FC6E4C993E1EEEE3EA07BA21B1A1A90919181949414263C3FFCD85619526FD0666B836FC607DF9C0F13A149D373333E4C45A6E018709482B09EBE1E747475C0E57199D0CBE353EF89AA294277557915EAEBEA515355839ACA1A48EBA4A8AE680AE0B5D5B5282D2C455961198AF38B51925F82D2C252941494A0A2A4EF0573B1580C07070726642B9E3B3838D0FCBD83507C7CBC52F9604796037F94969616BCBDBD3175EA544C99320563C68CE9377F6B3A1AAEADACACB071E3462C5DBA145A5A5A6A6C61FF45A1BA93626262F0F6DB6FE3E4C993AD1EC3E572F1FAEBAFE3ADB7DEA25B28ED282A2A4268682842424270F6ECD94E4F5BA6ADAD0D1F1F1FA606CEDBDB1B6C36BBFD37F62372B91C595959484E4E66B6A4A424242525212D2DAD577A9B35343560686C0803BE01787C1E787C1EF3DC80DFD45BAC78AE08CE264213A59E623230D54BEB99C05D945784D28252941696A228B708250525282B2C43614E214A0B9BF6CB1A5AAFF554074B4B4B383838309BA3A3231C1D1D61676737E07E9790E6643219A2A2A270FEFC799C3F7F1E972F5FEED2347E7C3E1F73E6CC41505010020202FAC5CF4E525212366DDA84C3870FB7B9188F939313B66CD982A0A02035B6AE7FA250DD41656565F8E0830FB063C78E563FD9696B6B63C99225F8F0C30F211289D4DCC2FEE3FEFDFBF8F3CF3F71ECD831444444B43980E2511A1A1A7077776742F4F8F1E307CCADDD9292122425252131319109CD494949484E4E56EB34711A9A1A30159A42682D8499851904968266CF4D8426D0D4EA1FBD32A46F5304EDD2C252A5B05D9453C43C57EC974AD4F701525353133636364CC87672726242B7B5B535CDD6344049A5525CBF7E1DE7CE9DC3F9F3E771FDFAF54E0FBEEE6F013B262606EFBEFB2E424343DB3C6EC28409F8FEFBEF3162C40835B5ACFFA150DD0EB95C8E9F7FFE196FBDF5160A0A0A5A3D2E303010DF7CF30D1C1C1CD4D8BAFE23363616C1C1C1080D0D45646464A7DE6B6A6ACA0C1699356B162C2C2C54D44AF5C8CDCD45747434A2A3A391989888848404242525A1B8B8582DD7E719F320B41242682D84D0460881A500022B0144362208AD853015995260267D525579150AB20A909B918BFCCC7CE465E621EF41D3969F998F82AC02D44B553F35A39E9E9E52AFF68811233062C408383939D16DF201A6BABA1AD7AE5DC3F1E3C771ECD831A4A7A777EAFD464646983D7B36828282306DDAB43E1DB0C3C3C3F1CE3BEFB4F9375A4B4B0BAB57AFC6471F7D44AB33B68042751B6EDFBE8D975F7E19D7AE5D6BF59871E3C6E18B2FBE809F9F9F1A5BD63FDCBC7913BFFEFA2B8283833B355B87B6B636C68D1B8769D3A661DAB469F0F0F0E897BD42F5F5F5484848600274747434EEDCB9A3D2D934B4B4B5606E61CE0466A1B5F226B211418FABA7B2EB13D29BE472398AF38A919B91AB14B673D27398AF5559F3ADA3A3035757578C18310223478E64369A0378E0484C4CC4A953A770FAF4695CBA74A953A5227C3E1FF3E7CFC7C2850B317EFCF83E395D9F6202860D1B36202525A5D5E34C4C4CF0FEFBEFE395575EE993DF476FA150DD82A2A2226CD8B001BB77EF66A6C07AD4881123F0E5975F62FAF4E96A6E5DDF16171787DF7EFB0DBFFEFA6B9BFF201F656E6E8EC71F7F1CB366CDC2E4C993FB652DFAFDFBF771E3C60D66BB73E78E4A060A72F439B072B082B58335AC1CAC60E36803CBA19610D988602A32858626FD8223A435355535C8CBC8434E7A0E1E243D40465206F35890D5FADDC8EE108BC51833660C7C7C7CE0EDED0D2F2F2FE8EBEBABE45A447D2412092E5FBE8C93274FE2D8B1636DCE02F6282B2B2B3CF7DC7358B87021860F1FAEC256768D542AC5CE9D3BF1F1C71FB779977EDCB871D8BE7D3B468D1AA5C6D6F55D14AA1F2293C9B073E74E6CDCB8B1D5D1C0060606F8F0C30FF1EAABAFD26DBE7F646565E1E8D1A3080E0E6E7779D487D9D8D860CE9C39983D7B36FCFDFDFBD57FCFF2F272A5007DF3E6CD1EEF81165809603FC21E435D873221DADAD11A6662B31EBD4E6FAA2CAB845C2E477545351A658DA8AEAC86A6A6267439BAD0D4D204C78003168B45031C895AD456D72A05EDD4B854A4C6A6223D211D0DF53DB7A891A6A6265C5C5C9890EDEDED0D171717EAF1EBE714D3C0060707E3EAD5AB6D0EFE7B988B8B0B828282F0FCF3CFF7B9B9B0CBCBCBB165CB166CDBB6ADD5556F353535B172E54A7CFEF9E7FDB243AC2751A8FE476C6C2C962F5F8EEBD7AFB77A4C606020FEF39FFFC0DADA5A8D2DEB9B2A2B2B111C1C8C7DFBF6E1CA952B1DFEE5317CF870CC9D3B1773E7CE858787878A5BD9336A6A6A101F1FCFACDA75FDFA75C4C7C7B77A17A3B3F4B87A183A7C281C463AC061A403EC47D8C37EA47DAF4D1F57535583CAD24A549456308F8A054A1AEA1B20A996A05E5A8FBADA3AD456D7A2B2ACB2692B6D7A54BCAF3572B9BC6981932E78782196165F37D26F9A75E4A1F9AA0D8C0CA0C7D5832E47175ADA5AD0D3D763E6A2D6D4D2549AB984C7E7F5C939AA49EF6AA86F407A423A526353917C3719F763EE23252605B9E9B91DFEDDD71E1E8F071F1F1FA5ADBFCD834CFE9595958563C78E21242404172F5EECD02C4D1A1A1A98346912162F5E8C79F3E6F5A9BB19C9C9C958B76E5D9B83194522117EFCF147CC9A354B8D2DEB5B067DA8AEAFAFC737DF7C830F3EF8A0D55BF543870EC5F6EDDB3163C60C35B7AE6F91CBE5B874E912F6EEDD8BA3478F7678FA3B5757572C58B000414141B0B7B757712BBB2F313111274E9CC0A54B9710131383F4F4F41E0BD0221B111CDC1CE0E8E60887910E70747784859D85CA7BA8A412290A730A5198538882EC0214E715A330BB1045B94528CC697A2C2F2E6702F460A608DA8626863016184360298089D004E616E64D8F96E6CCD7BA1C5A186130ABA9AC41CABD1424452721293A09C9D1C948B99782DAEAEECFD6C362B1E0ECEC0C1F1F1FF8FAFAC2D7D717CECECE3DD06AA26EE5E5E53879F2240E1C3880D3A74F776836112E978BF9F3E763F1E2C5983469529FB98B111E1E8EB56BD7222E2EAEC5D7592C1656AC5881AFBFFEBA4F7D285097411DAAEFDCB98365CB96B5BA808BB6B636D6AD5B870F3FFC7050AF2A949D9D8D5F7EF9053FFEF823EEDFBFDFA1F788C5623CF9E493080A0AEAF38338F3F3F3111111818B172F222C2CAC53B5E0AD61EBB03174F85038BAFF139EDD1CE1E0E6A0B232868AD20A64DDCF62B6BC8C3C146417A020AB80998E8CF43C0323039889CD606661065351D3348496432D997A776373E3DE6E2251B3C6C64664DDCF42D29D7F8376E29DC41EA9D736333383AFAF2FC68F1F0F5F5F5F8C1A356AD0AC103B50949494E0C89123D8BF7F7F87CB252D2C2C307FFE7C2C5DBA146E6E6E2A6E61FBEAEBEBB163C70E6CDAB40915152D0FFC1D326408F6ECD983499326A9B975BD6B5086EA9A9A1ABCFFFEFBF8EEBBEF5A9D23392020003FFCF043BFE8595505994C86909010ECD8B103172E5CE8504F2D8FC7C3BC79F3B060C1024C9A34A9CFAE2E959494848888085CBE7C19111111484A4AEAD6F90C8C0CE0E8EE082777A7A6470F27D80EB3859676CFD688579557E141D2033C487EC0D47D66DDCF42664A669F5CC58E342D856E656F052B7B2B985B36CDCA22B014C0CCC2AC69BE6F81090D2C1D24CA8ACA90189588C43B89488C4A44D29D24642465A051D6F5BB601C0E07DEDEDE98306102264D9A046F6FEF41DD01D4DFDCBD7B17FBF7EFC7C18307919B9BDBA1F78C193306AB56ADC2B3CF3E0B1D1D1D15B7B06DB9B9B978F3CD3771F0E0C1165FD7D0D0C0DAB56BF1C9279F404F6F70CC3A35E842F5A54B97B074E9D25647E91A181860EBD6AD58B97265BF9CC6ADBB4A4A4AF0BFFFFD0F3B76EC40464646BBC76B6A6A62EAD4A958BC7831E6CC99D3E7FEE1C8E572C4C5C5E1C2850BB874E9122E5FBE8CFCFCFC2E9F8FADC386F328670CF7198E916347C2C5CB05625B718FB5575A2745564A1633508A09D08919282928E9B1EBF40403031DF08D74A1A5A50143435DB0582CF0783AD0D464C1405F075A5A1AD0D767435B4B035C2E1B6CB626F4F4B4A1A3D3BD0F5BF5F58DA8AE9642266B4445451DE472A0AC5C02A0E9512E97A3BCBC0E8D8D725455D5A1A1A1116565129496D5A2AFFDB6D3666BC3CED50E8E6E8E70747764EE68D072EC8383A44682E4BBC988B911837BD7EEE1EEB5BBC87B90D7E5F3E9EAEAC2DBDB1BFEFEFE14B2FB11994C863367CEE0A79F7E42484808241249BBEF110A8558B56A1556AD5A0533B3DE1DBC7EECD831BCF4D24BAD7E30707272C2CF3FFF8CD1A347ABB965EA376842B55C2EC7B66DDBF0D65B6FB53A8275FCF8F1D8B367CFA0EC9D4E4C4CC48E1D3BB07BF7EE0ED54A3B3A3AE2D9679FC50B2FBC80214386A8BE819D505B5B8BB367CF22242404A1A1A16D4E07D41E9E310FEEBEEE70F773879BAF1B86790D035BA7FB93F71764152023290319894D5B7A423A329232909791D763F5DB1DC5E3E9C0D2820733332EF8467AE0F375C137D28391912EF87C3DF01F7A347AE8752DADFED7C35A562E4169696D53C82EAD45E93F61BBB45482B27F1E4BCB9AF6171656233FBF0A79F9556A6FA7D05A081B271BD838DA60C8B021B071B4818D930D04568241F9617F3029C82E40744434EE5CB9833B57EE20F96E72977BB3757575E1EFEF8F279E78028F3FFE38ADF4DB0F949797E3D0A1431D2E0FD1D1D1C1534F3D85B7DE7AAB57573A2C2B2BC3DB6FBF8D5DBB76B5F8BA8E8E0EBEF8E20BAC5DBB56CD2D53AF4111AA2B2A2AB074E9521C3D7AB4C5D7391C0E366DDA84B7DE7AABCF0C065007B95C8E63C78EE1DB6FBFC5C58B17DB3D9EC7E3E1A9A79EC20B2FBC005F5F5FD537B013E2E3E3111E1E8EB367CFE2FCF9F31D1E44F928F11031DCFDDC99CDD6C5B6DB21A651D688C43B8988BA1C85A8BFA270E7CA1DB5D438EBE8684124D48758CC83586400B1C80016163C8884FAB0B4E04120D08795A521381CAAC96C8B542A437E4115B2B22A90975F85ACEC0AE4E4542027B712995915C8CDAD445676056A6B55BF921F97C78593BB139C3CFEDDEC5CEC6805CC01ACA6B206D157A3111D118DA8CB5188BD190B494DFB3D998FD2D0D0C0E8D1A33165CA1404040460ECD8B17D7A753FD2B47CF8DEBD7B71E0C08176EFB0B2582C04040460DDBA7598366D5AAF7DF80E0B0BC3CA952B919595D5E2EB0B162CC0CE9D3BC1E572D5DC32F518F0A13A3A3A1A4F3EF964AB83CF0663EFB45C2EC79F7FFE898F3EFA0877EEDC69F7781F1F1FAC5EBD1AF3E7CF0787D337A61B93CBE5B876ED1A82838371F4E85164666676FA1C1A1A1AB073B5C3A889A398DE6873CBEEAF7C969F998FF8C878C447C623EEEF38445F8D464D65C757DDEA082D2D0D0CB131829DAD31C462035859F298F06C65C98350680073B381F94BABAF2A2EA941EE3F413B27B712D9D915C8CE6E7A9E9A568AB4F45248A52D8FE1E80EB62E1BAEA35DE1E9EF8951134761E4D891342BC900D650DF80F8C8782664475D8EEAD2980A2E978B99336722282808B366CDEA33BFDB4973F5F5F5080B0BC37FFFFB5F9C3A75AADD691CDDDDDDF1F6DB6F232828A857C636B5D76BEDECEC8CA3478FC2C5C545CD2D53BD011DAAF7EDDB87D5AB57A3B6B6F9F446BABABAF8E69B6FF0D24B2F0D9ADBA972B91CA1A1A1D8BC7933222323DB3C564343033367CEC43BEFBCD3A77AA5A3A3A3F1CB2FBFE0B7DF7E6BF593706B582C16860E1F0AAF495E4D0164C228189A1876AB3D52891431376270EBE22DC4DC88414264428FD63E0B05FA70723285A3BD091C1C4CE0E86002077B13D8D9F2A1AD4DBD93FD894CD6880799E5B87FBF04C9F74B70FF7E0912938A90945C8CF48C32C8BA3160ED61DA6C6DB88E690AD99EFE9E14B207B8C6C646A4DC4B41E4C548445E8CC4EDBF6E773A6473381CCC9A358B02763F90929282EDDBB777A85473C8902178EDB5D7B072E5CA5E19EF14121282A54B97A2A4A4F9DF441E8F877DFBF661EEDCB96A6F972A0DC8502D9148B076EDDA563F25D9D9D921383878D02CABA9E899DEBC7933A2A3A3DB3CD6C8C8082B56ACC0CB2FBFDC6716B9C9C8C8C0C1830771E0C001C4C6C676EABDE696E698307B02BCA778F748886EA86FC0DD6B7771EBC22D445E8CC4BDEBF72095B43FA97F7B84027DB8BB89E0EE2684B393299C1C4DE1E86802431E85A1C1402A9521E57E3112938A91985484BBF7F271273A1729F74BD0D8D8BD5FD18F866C775F77B075E9B6FF40A508D9B72EDCC2E5E397117929B25335D91C0E0781818158B06001A64F9F4E25227D5471713176EDDA85EFBFFF1E3939396D1E2B1008B076ED5AAC5EBD1A8686DDFB1BD859E9E9E9080A0AC2AD5BB79ABDC662B1F0E69B6FE2D34F3FED572B2AB765C085EAE2E262CC9D3B17972F5F6EF1F5C0C040ECDFBF7FD0AC54151616860D1B36B45BE6616F6F8FB56BD7E285175EE81313B697969622383818070E1CC0E5CB973BBC6A998686069C3C9C3076FA58F8CFF1C730AF61DDBE1391919881EB67AEE3FA99EB88BC18899AAAEE95720CB131C2280F313CDC45F07017C26DA41022212DC34D9AABAA9222FA6E1EEEDCCD43D49D5CDC8ECA455C7C011A1ABADEABADCBD1C5A809A3E03DC51B3E537D3074F8D01E6C31E96B4A0A4A70E1F70BF8EBF85F88BA1CD5A952346363633CFDF4D358B264C9A098B9A13F924AA5080E0EC6FFFDDFFFB57B079ACFE7E3EDB7DFC62BAFBCA2D6BB1175757558BF7E3DB66DDBD6E2EB53A64CC1D1A3476160D0FFFF0E0EA8509D92928259B366B538EFB0A6A626366EDC884D9B360D8AC188376FDEC4BBEFBE8BF3E7CFB7799CABAB2BD6AF5F8FE79E7BAED73F29D6D7D723343414FBF7EF47585858AB2B5C3E8A63C081FF13FE98307B02464F1EDDEDDEE8F2E272DC3C771337CEDEC0F533D7BB35C5958DB5113C478931CA43044F0F31468D12C1C4986EAD92AEABADADC7BD987C4446E5E276540E6E45E6202EBEB0CBE52366623326608F0918430BD60C60B20619126E27E0D6855B080F0E477C647C87DF3B62C4082C5DBA140B172E84A9A9A90A5B49BAEACA952BF8E28B2F70E2C489363BA2CCCCCCF0C61B6FE0F5D75F57EB9D8883070FE2C5175F445555F31995BCBCBC101A1A0A8140A0B6F6A8C28009D511111178E28927505454D4EC353333331C3C7810010101BDD032F54A4848C0A64D9B70E4C89136FF51B9B9B961DDBA7558B06041AF2FD2121717873D7BF6E0E79F7FEEF0F4771C030EBC03BC1110148089732676BB6634352E15E78E9CC3E5D0CB48884CE8D2B4764686BAF0F1B6C2682F31BC3C2DE0E52986C0BCF77BFDC9C0575D2DC59DE83CFC1D998DBF6F65E3C6CD2CA4679475FA3C2C160B8EEE8EF09DE98B80A00038BA39AAA0B5A4AF484F48C7A983A71076200CD9A9D91D7A0F9BCDC6E38F3F8EA54B9762EAD4A9BDFEF78334171D1D8DAFBFFE1ABFFEFA6B9B4BA20F193204EFBEFB2E962F5FAEB6CEC6C4C4443CF9E49388898969F69AADAD2DC2C2C2E0E4E4A496B6A8C28008D5FBF6EDC38B2FBE08A9B4796DABAFAF2F8E1C3902A150D80B2D539FECEC6CBCFFFEFBD8BF7F7FABAB44024DFF3D366EDC88E9D3A7ABB175CD555757E3D75F7FC59E3D7B70EDDAB50EBDC754648AA9CF4CC584D913E0EEE7DEED150B53E352111E1C8EF0E070A4C6B6BC18505B381C6D8C1B6B8DC9FEB698EC6F0B0F77113469753CF21099AC1109894588BCDDD49B9CF7CFBCD7B9B995282CAC467D7DFB1FDE3434583037E7C2DC9C0B0B310FE6665C383999C2D34384E1AE02B0D92D879AD4B4525CB894860B179BB6FC82CECFB76DED688D80A0000AD8039C5C2EC7BD6BF71076200C97422EA120BB639D1B96969678E18517B06CD9B23EB75E0101929393B175EB56ECDFBFBFCD3BBF5E5E5EF8F6DB6FD5362941555515962C598223478E347BCDCCCC0CC78F1F87B7B7B75ADAD2D3FA75A896CBE5D8BC7933366FDEDCE2EB414141F8E9A79FFADC2A7F3D492A95E29B6FBEC1279F7CD2E22D158571E3C661CB962D983C79B21A5BD75C4242027EF8E107FCF4D34F282F2F6FF7783DAE1E26CF9F8C598B66C16B9257B797742E2928C1E95F4F23F4A75024462576EABD1A1A2CB8BB89303560280226DB61AC8F157474BA17ECAF5DCF8444D28049FEB6DD3A4F6B2E5FC980B939174E8E1DBB5D9B9D53817DFBEFE0DDF5E3A1A1313866C5E9290F07E8DB51B9888CCA41F4DD3CD4D4A86EFE6A365B13C35D05F0F41061D42871AB415B2E972336AE0067CFA5E26CF87D5CB99AD1E9760D711E8269CF4EC3B467A7C1DAA16F0C6226AA917C371957C3AEE2CCA1331DFA3DA9982D6AF5EAD598366DDAA028B1EC4FB2B3B3F1D1471F61CF9E3DADF65C6B686860C58A15F8FCF3CF616464A4F236B595DF381C0E7EFBED37CC9E3D5BE5EDE869FD365437363662D9B265D8B76F5FB3D7582C16366DDA840F3EF860404F9777EEDC39BCFAEAAB888B8B6BF598112346E0FDF7DF475050901A5BA64C2693212424043B76ECC0F9F3E73B34E870B8F7703CBEF4714C7B661AB8BCEECDB7DCD8D8882BA157F0C78F7FE0EAA9AB9035747CAE604B0B1EA6040C45C0E4A1786CB21D4C4D7AB61E3AF08903C8CBAFC2AD6B2FF6E879155CDDBFC794C786E2DBAF6774E8F83DFB6E63E5EA6388BFFB0A1CEC4D54D2A681243DA30C47FF88C3B1D00444DDC9556980EE28365B1323860B306B86239E9CE7029761CDE75E97481A1071F501CE9EBB8FB0D3C9888DEBDCAAA32EA35D3063C10CCC5C38B3DB631848DF96189588903D213875E0142A4ADB9FAA6FE8D0A178E9A597B074E952181B537D7E5F929494848D1B37B6591E2A140AF1C5175F60F1E2C56A69D3DEBD7BF1D24B2F35AB34D0D2D2C2FFFEF73F3CFFFCF36A69474FE997A15A2E9763CD9A35F8E1871F9ABDA6A3A3831F7FFC118B162DEA8596A947666626DE7BEF3DFCFCF3CFAD1E336CD8306CDEBC194F3EF964AF7EB0387EFC38DE79E79D3683BF02DF8C8F998B6662CED239B073B5EBF6B5CB8BCB11B23B04477E38829CF4B6A71C52D0D3D386FF842198123014531E1B8A61CE66DD6E475B9E5FF63B2EFD958EF4E4752A39BFA9E8732C5B320A5F7C3AB543C7EFDA7D0BAB5F0945C2BD57613F94FE20B624BFA00A077EBD8BE0A3B1B815998DBEFE1BD46598199E9CE78A85CFB9C1CEB6E5598F32B3CA71EA4C0A4E9F49C199F0940E7F3860EBB0E13FD71F4F2C7B025E93BDA8877200934AA4B8F8E745FCB9FB4FFC7DEEEF763B470C0D0DF1F6DB6F63EDDAB534EF751FF3F7DF7FE3DD77DFC5B973E75A3D66E6CC99F8CF7FFEA396B29E888808CC9D3B178585854AFB592C16BEFDF65BBCFAEAAB2A6F434FE997A17AFDFAF5D8BA756BB3FDC6C6C6F8FDF7DF3171E2C45E6895EA353636E2EBAFBFC6A64D9B2091B4BC4CAD4824C2175F7C81050B16F4DA1FB8C6C646848686E2CB2FBF44444444BBC78FF01981A0D54108782A006C9DEE8D4496CBE588BA1C8590DD21387BF86C87E690168B0C306B862302673961B2BF2DF4F4D4B76CF70BCBFF40C4D507488E5BAB92F3B3F537E3C3F72761C3DB133A74FCF73FDCC06B6F84E17EC26BB0B156FD2DC0FE42266BC4A93329D8FB53144E8425A1BEBEEB2B236AE96AC140CC85BE880B7D2117BA866C6873B5C1D66743C7808D064903A4D5F5A8AB90A2AE420A49591D2AB3AB50955F8D9AC2E60B5975148B05F84FB4C5D2E74761EE9C61D0D56DB974A9AA4A8A90E309F8EDF03D849F4FEDF0F76AED608D675F7B1681CF07428F3B704BEE08F020F9018EFC7004A1FB42DBEDBDB6B0B0C0BA75EBB07CF972F0783E4F864100002000494441543C35B59074C4E9D3A7F1DA6BAF212121A1C5D7B95C2EBEFAEA2BBCF4D24B2A6F4B4A4A0A0203039198A85C6EC462B1B075EB56BCF1C61B2A6F434FE877A1FABDF7DEC3A79F7EDA6CBFBDBD3D4E9D3A85A14307E69CAB79797958B264094E9D3AD5E2EB1A1A1A58BE7C39B66EDDDAABBFB8424242F0CE3BEFB4FA8F5441474F07D39F9B8EA0D541701EE5DCEDEB961696E2D89E6308D9138207490FDA3DDE98AF87A7838663E1736E1833DAA2DBBDF969E9A5387E2211477E8F8389B11EFE087E56E9F5A2E21A4445E5C2D292A7D4FBFDDCE223B817938F7BB7D700685A04A4B581673535F5C8CEA980890907C6FC96438B4CD688ACEC0AE8EBB3C1D1D38681C927F8CFB640BCB8DC0B0010139B0F91C840695ABFE4946208CCF5C1E3E9E0DBEDD7F0E6DBA7F1E0FE1B108BFE9D33B423D71E88EAEA1AB0E7A7286CFDFA0A1E64B63F06E06146B63C08DDCC61E2C487A9B3314C9DF930B23504C7B4EBFFFD6452192A73AA51925C8AA2F8121425363DE64615405AD9F145884C8C3978F5651FBCB2DA1B3C9E4EABC71597D4E08F9078849E48C2F98BA91DEAC1E619F3306FE53C3CFDCAD33013ABF64E0FE95D921A094E1D3C85E01DC1EDD65E1B1A1A62DDBA7578EBADB706F438A7FEA6BEBE1E3B76ECC0C68D1B5B1D97356DDA34ECDDBB17229148A56D292E2E46606020AE5FBFDEECB52D5BB660E3C68D2ABD7E4FE857A1FAE38F3FC6FBEFBFDF6CBFBDBD3D2E5CB8004B4BCB5E6895EA1D3D7A142FBEF8228A8B8B5B7CDDC3C303FFFDEF7F3166CC1835B7EC5F29292958BB762D4E9E3CD9E67156F6567872D59398BD643678FCEE87FFD2C252FCFCD5CF38B2E348BB8BB268696960C634072C5EE88E99D31DBA3DC8100052EE9760C5AA105CBE920100E072D9A8A9A94765F17B4C4FE0E9B329787AC161545535859E912384F8FDF033186263846716062331A908077E7A12AB5E398EABD7322130E7E2D79F8330DECF86B9CEC79F5DC2975F5F61428D9FAF0D7EDE3B0F5696FFD6B3FEB82712EF7F700E45C53560B1589833DB197F1E8BC7E1834F61DE132E00008B215F2168BEAB528DB5F5D0AF3177CE307CF7CD4C7CF57F1178E7BDB3C8C9780BE666DC0E5F7BA0914A65D8BDEF36BEFCEA0A32B33A16A6856E66B09B66034B1F112CBD45E00AD477CB5B2E93A320AE18D9D7729179350749275221296D7F9E7763BE1ED6BE3216AFAEF1868141EBE11A689A1FFBFCC5341C0F4DC4A12331A8AC6CFBFC6C5D36E6AD9C87E7DF7E9EC2F52070FBD26DFCF2F52FB872E24A9B5392DAD9D9E1ABAFBEC2134F3C31A0C73CF53769696978F9E5975BFD1B6E6E6E8EDDBB7723303050A5ED282F2F474040408B2B30AE5FBF1E5F7CF1854AAFDF5DFD26547FFBEDB778FDF5D79BED1FC881BAB2B2126FBEF966ABCBAD1B1A1A62F3E6CD78F9E5977B6DAED0DADA5A7CF6D967D8BA756BAB252900E0E8EE88951FACC484C727F448594A655925F67DBE0FC1FF096E374C3BD89BE085C51E58BCD0ADC7572EF4F4F92FE2130AF1C66BE3B0E05937E4E65662D98B7F2226EA657038DA7890590EF7D13B30DACB029F6D09C083CC727CF6E5657CF9E9544C9C30044F3D7718D7AE67A2BEBEA9877AEE9C61083E1A8BE1C3053873A269A08862F0E0EA17C760D64C47A4A59762CB2797F0E43C177CF7CD4C00C0815FEFE2F965BFE3B9674662FA547B1415D7E093CFFE4271490DCE9C588CC993EC5051510763E16778EF9D09D8BCA9691698868646E8196EC1AB6BBCF1F597D3F1E5D757B0E1FD70E465AE87A909A743D71E682E5E4AC3ABEB4E222EBEB0DD630DAD0DE0346728DC9E7781D0BDF980C0DE22AB93E1FED90CC41F4946FC1F29A8AF6EBB875928D0C7671F4FC1C2E7467628E894954BF0BF3D91F8CF0F37DBFDD041E17A70498B4FC3816F0EE0E42F27DB2CBF1B356A14366FDEACF290463AE7F8F1E378F9E597F1E041F33BBE2C160B2B56ACC0FFFDDFFFA9B44EBEA8A80893264D6A712EEB37DE78035F7DF595CAAEDD5DFD22549F3E7D1AB366CD6A36FFB2838303CE9F3F3F2003754A4A0AE6CC99D3EA00BF808000ECDDBBB7D7BEF7C6C6461C387000EFBDF71E3233335B3DCEDAD11A2F7FFA3226CD9BD423BD120DF50DF87DE7EFD8B57917CA8ADA5EDC624AC050BCF5BA2F26F9DBAAA44744266B842E6F0B664C73C07FB6CD6AB1E776E5EA63F8E3CF7824C6BEDA62D944D0B387F047483C1CEC4D70E9DC52989B71B176DD49849E4CC2FFB3779D014D645DF42421A177E902A2882802564044ECD8514410117B2FABE8AA6BC5867DEDAEAE053B36102B16442C60C3AEAC850E4A13A429A1A47D3F62260C13306A02EAC7F9B39B3733EFDD84983973DFB9E726BDF1078FC747B396DBD0C9C51C07F67AA0B0A80CEB364463D3D67B58B7BA27FCFFE80000B0B2D90AE70E6638B8CF8398FBCCB9D7F01A76123137C6C1C9D11469E9856862BD852407292A2E83AEE15A8268AF5E771B01CBA3909FBD00AAAA4CA9D6FE5DF0EE7D11FE9C771561676B2EAA55D557410BAFA66839CC1A0D1D8D809F3CD9565E5C815721F1787EE815DEDDADB960B7938B39B66FEE8B9636D27535E372F9387DE61576EE8EC59DBB35CBAEEAC9F5FF17F273F2B12F701FC2768781CBA9BE0189979717FEF9E71FE8E9D57F277E1614171763EEDCB9D526F4ECEDED111A1A0A4B4B4BB9C5F0E1C30774E9D205AF5F53BB7EEEDEBD1B13274E94DBDA3F829FBE54FBEDDBB7183A74A84442FDBB66A8232222E0E0E02091502B292961EDDAB5B87AF56A9DBDF7376FDEC0C5C50523478EAC9650EBE8EBE0AF7FFEC2A9B853E8E6D94D26A436263C063E763E58FFC7FA6A09359D4EC390C136787877122E9F1F816E5D1BCB6D8B91C1A06390BB352E5D898785D566B46CBD03FB0F3E218E73383C9C0C89C3D8D1ADABD5218B1E6977FF3380905B282929A0A84898F54F4CCA476A5A21867AB5C4D21551B0B4DE825D7B1E22605117CC9CEE0440E82D9D9C52002F4F1BD2DC06FAE2F944F10220F94F73B9C26D5A517166793997B8469AB57F171C3FF912ADDAEDAA91505B7433C5B00B03E19F3E1EBDB7764543A79F9F500380A2060BADC7B5C4E8DBDE98F67A341CFE6805A6AAE462DCE898343874DC838D5BEE82CFFF7ABE4541818EA15E2D712B722C9E3D9C82C913DA572B23A928ABC0896D2730B0C940EC58B003E5A55F97A7D4155EDC7D8187510FE536FF93DB4F90F6364DEAF33F647C405060D077757AAD2BE818E860DEF67908791582EE43BA57FB3B1C1212021B1B1B898D40EA5137D0D0D0C0EEDDBB111A1A2AB125FDF3E7CFD1B66D5BB9FECDF4F5F5111111010B0B6A0F87E9D3A7233A3A5A6E6BFF087E6A525D545484810307529A84346EDC18515151303131A9A3C8E4873D7BF6A05FBF7E282828A01CB3B5B5C583070FF0D75F7FD589B3874020C0D6AD5BD1BA75EB6ABB20AAA8A960ECC2B1389370065E53BD7EB8EB2100A4BD4D837F7F7FF8F7F747EA9B5489E7B0580CF8F9DAE3C5E3693871D40BAD5BC9B7A0428453C7BC71FBFA582C5DDC150C061D13A79EC7E66DC2CF262DBD08252515E8ECDAA8DAEB050201CCCDB4E0DAA951A531E0D3E70AF0F902A4A70BBFFB5EC34EE19F5DB19836C501496FFCB168BE2B71931211F0EA88BB881CA9AB0B9D552A179B8908B6682E369B033A9D06168B21D5DABF3A8A8BCB316A5C18468C398DA26209F2251AD07CB025C63F1806BF084F58F6B1005DE1A7FED9AC113A4DB5D06B7317CC481A0BD7002728EB2851CEA9A8E0E1AF8511E8E37E0499599FA49EBBA58D01766CED87E4B7FE98F7A74BB52E3A15651538B8F620BC5B7A233632F6BBDF8B3CB12F701FB6CCD922B7F9574D5C8553FF9C92FAFC7B57EE61D7925D789FF45E6E31C90BA696A65817B20E41314168E5D24AE239B9B9B9F0F2F2828F8F8F544DC1EA513BF0F4F4445C5C9CC4262CC5C5C5F0F6F6C6CC9933C1E1C8C79FBF61C386888C8CA4703D0E8783A14387222323432EEBFE087EDABB039FCF879F9F1FC55E455D5D1DE7CE9DFBED32D465656518356A14264D9A44E97844A3D1307FFE7C3C7EFC1876767675125F616121060F1E0C7F7F7F89DA69268B8991F346E27CCA794C5D35F5871BB600C29BEF96395BE0DDD21B31E13112CF515666E24F7F6724BF9D8583FB3C60DD4CBACE81B2028D46837307332C59D8194F1E4C46EB56463874E4190040F54B36302FAF7ACD378F27A0B87D686B2B83C7E323EF239B20C213C7B5454AFC2C2C0FE84638773C7B9E854F9FCA616CAC013A9D86C82872AB75510BEC922F7A5A4D0D25A8AAB2909323AEF0AEDA3591CDE610996D69D6FE9591F3E1335CBAEE43F0F117128FEBB76C80D1B7BC31E4547F18B5954E0EF1AB40A581323A0738614ADC48B4F46926F19CEB51C968E3B00BE72ED4ECE45315DA5ACA58BDB2075EBFF803E346B78142350F2119C91998E6360DAB27AFFE6A5D446D434B570B05B9D4C486AC909F93FF4DF6A1A28655BFF2C3AC9DB31DF645EFC3CE6B3BD1D2B1A5C4734E9E3C89B66DDBE2F1E3C7B51C5D3DAA83818101CE9D3B871D3B7680C5227F67050201B66DDB063737378AC7B4ACD0B871635CBC7811AAAA644E9195950577777794967EBFCDA83CF0D392EA458B16E1E2C58BA4313A9D8E63C78EA1654BC9FF207F5594979763C89021387CF830E5989A9A1A424242B066CD1A3099B5E79F5C198F1F3F46BB76ED70F6EC5989C70DCD0CB1FBE66ECC5837035A0D64E36D9C149784D14EA37174E351891D1045328F974FA661DD6A37181AA8C964DD6FC19EA047F0F10B41CC9D342425E7E3C6CD141414941244D5C8501DEDDB9920607914A263D2C0E1F0F0E46926A1A30600762907AAAAE41F2A3353A1363B39391FEDDA9AC0A291362E5D49C0ADE85464E77CC68B97D958BB211A1DBB04E1F49957D0D254C290C13658B3FE36366EB98BB8FF72702A340E63269C0100E4E69510735B36D1C1E5AB09B81D9D8AA81BC9D8B75F2857E1F18404BCAC9C0B165348F2A559FB57456A5A217AF43E24B118514159013DD676C28487BE307536AE83E86A0FAAFA2AF038DA073EE70742A321F5DF50DE47363C879EC08A5537BF79EE86261AD8BDD31DCF1F4DC590C13690C407050201C27687C1C7D6074F6E3FA19E5057A04126BB6CD5A1A4B804EA5AD2174D732A840FC6F28CA9B6E0D0C30107EE1DC0C2DD0B25FA99272525A143870E58B76E9D54DD776B1377EFDE45545494DCE6BF7DFB3625915813323232101818287759108D46C3B469D370E3C60D89B67A376FDE84ABAB2BB2B3B3E5B27EAB56AD70E4C811CA0EFD93274F3069927CBA117F2F7E4A521D161626D13665E3C68DBF5DA5707979393C3D3D111E1E4E39666969897BF7EEC1D3D3B30E2213E2D0A14370767646525212E598A2B222C62E1C8B5371A760D7417619F413DB4EC0AFAD1FE29FC74B3CDEA37B13BC7C2294793432AFBB06254C0506CE9C7B8D2E3D0FA059CB6DE83DE008B2733E63D9922EC43987F70F86868622BABA1D80B2E64A3874DC83983BE944BBF3B2322E5A342717E8D8DB09B3A28949F95050A0E3DCE961D0D050C4A021C7D1D0E26FB471FC17816B6E61DCE8361836D41600B0737B7FB87434C75F0B23D0AAFD2EF88E0C859E9E2AB4B594515424CE28CF99D511FFBDFA806EBD0EC2ADDF612C5E2AECA8256AF0C15460A04103616CD2AEFDABE1D1E30C38BBEEC5EB3754426DD4461FE31FF8A2C39CB6A0337FCA9F47B9A0695F0B4C7CE207ABFE923B99AE587513816B6E7DD7DCCDAC1AE0C4512FDCBB3D01CE1DCC249E93999A89C9DD2623283048A6442A332513C7B71EC7389771983D90DAB5B430AF10F723EE23E5750A699C5BC185A292581B2E22B59250C62E437A423A8AF3AB6F82C2E7F191959685A28F45282F2D079FCF27B5774F7C9988A28F64D9437A423A4A8A850FC4A2C44255522DCDDA3F2368341A064F1C8C63CF8EC1B1A723E53887C3C1FCF9F3316AD4289497FF3C3B628181819833678EDCE69F387122FEF9E71FA9CFBF72E50A962C5922F1FE2C0F383B3BE3D1A3477074A4FECDDEBC7983AE5DBBCA8D587B787860C58A1594F123478E60DFBE7D7259F37BF0D3B97F646666C2CECE8EE2C93C66CC18ECDFBFBF8EA2920F6A22D47DFAF441707030B4B525B715AE0D04060622202040E24DAEB14D636CB9B005C616B2CBE4712A38583B752DCE059D93785C64FB3562B8BDCCD6FC51646416E3C6CD14E4E6B161A0AF8A5E6E96A4C62A8090B05E8948C4DBF83C5834D246DFDE4D09BDE9E7CF1560306814FDE9A123CFD0BF9F1531974020C0CBB81C24A714404D9505478786120BC29E3CCD444A6A21CCCD34D1B68D3132323FC1D0408DB4059F98948F878F32A0AACA444767331C3AF20C6E3D9AA0A58D0132B33EA1A0A014362DC4F670D2AEFD2BE0D1E30CF4EE7F048545540993F3BC76E8BADCF9FF8A4C532000EE6F7E8CA8C577C1AB20EF10D168C091039EF0F1FEFE8729814080A3C75E60DE8208D20E4A65F4F0EA81A50796FE5057C67789EFB072DC4A22FBADACAA8C327619EEB0EF80A524DC19BA7BE52EE67BCD27A42756F656F8FBECDF306E648CF9DEF391F6360DAB8EAFC2EA49ABF1FCCE73E818E860CDC93568E3DA865867DFCA7D38B8F620CAD8C2EF53EB4EAD11181C080353B15C286C4F18762EDA89C2BC42D068347419D40537CEDCC0FAD0F5E8E629B4B6743374434FEF9E98BB6D2E715D1F933EE83AB82BE66D9F87C31B0E63DBBC6D88C889808EBE8ED46BFF2A38B1ED0436CDDE043E8F9A7175757545585818747575EB203232468C18819B376FD6E878F523D0D6D6269AB84983DDBB7763F2E4C948484890AB13475594979763CA94293870E000E598B5B5356EDCB80143434399AF2B10083062C40804070793C63534341017170753535399AFF9ADF8A9EE1E028100E3C78FA710EACE9D3B63F7EEDD7514957C505A5A8A0103064824D4A3468DC2C58B17EB94502F5FBE1C4B962C9148A85D07B862FF9DFD3225D4C505C598D27D4AB5847AF4C8D6887B36FDA722D4006062AC013F5F7BCC9AD101BE3E7614420D004C260303FA35C39C591DE1E9D18244A0D5D458120BBA468D68459A8B46A3C1CED61083DC9BA347F726D592DA36AD8DE1E9D102EDDA0ABB443634D1A0685A2D9BE860D8505BB8F7B786AE8E0A66CF74262CD48C8DD44984FA5BD6FED991965E08F7C1C7A8849A06745FED82EEAB5DFEBF093500D000A7D96D31EEBE0FF45A90498C40008C9D7816E72F7E9BC69A343D8D8611C3EDF1F2E9B46A773A22432231CE651CB2D2B2BE7B9DBFBCFEC2CBFB2F3176E15884BE0EC5A6F39B60606A406C9367A76763C1D00568E9D412471E1DC186B00D50602A202B55B8269FCF47416E0126769E888CE40C784DF382802FC0BE15E28CD8B9A073F837E05FB88F71C7B6CBDB307FE77CA4C5A7E1D0FA43C439978E5EC2EA49ABD1A15707AC3CBA12B337CF2688BE9A96506E53525C82FC9C7CA8698AE5373C2E0F79597950501066A6055F8A8D45DBDFD2ACFD2BC167860F369DDB44CADE8B70FBF66D383B3B23252545C295B50B1A8D26571966717131B4B4A4DF7DADA810FA80D7B63454515111FBF7EFC7F2E5CB29C7DEBC79839E3D7B222F2F4FE6EBD26834ECDBB70F4E4E64F7A9E2E2624C9D3A55E6EB7D0F7EAA3BC8EEDDBB71F9F265D298B6B6368E1D3B56677A627980C7E3C1CFCF0FD7AE5DA31CF3F1F1415050509DB87B88B07CF9722C5BB68C32CE6431316FC73C6C3CB7917403F8517CC8F880F19DC6E359CC33CA316323755C3C3B1CFBFE1D082D4DAA53413DEA210D3E7FAEC0A021C7F121979C1D555052C0E0A37DE03CAF5DADC4F1FE5E16526FC827CB0500E9D119F8F856FA02BB4F199F11BD2A96206D2218D8E961D40D2F18DA93A54915153CF8F885E0D6EDD41F8AB381AE0A8E1CF044E889A130D0A7FE96C43F8BC7288751781AFDF49BE7E6F3F848789E00C79E8EF09CEC8946D68DD0BE5B7B5C4CBB082515E16FC8DE157BC16030B0F6E45A346FDB1C5D3DBAE2F0C3C368DBA5AD701201909795070D6D0D043F0DC6BCEDF3D0C3BB07DE25BE23D6080A0C42BF91FD306FC73CD83AD92233351385798568D8585C44BF7BE96EF41DD1172B8FAE449FE17D306CE6302CDAB3080088588A0B84D20D7D13F1C36C69492904020194D584D97A91FC83C9624ABDF6AF06977E2E38FEFC3869274084F8F878F4E9D307F9F9F93FBC4E4A4A0AB66EDD0A1717170C1C3890723C2F2F0F11111112FD912B2A2AA0A4A4447A5D1DD86C361212126A8C99C7E3212D2D0D1F3F7E44696929F87C3E91917FF9F22525C198909080E262B1D447646A50951F49B3B62C10101080F5EBD753C6E3E2E2D0B76F5F949448DE8DFA1128292921343494F2F071F1E2451C3D7A54E6EB7D2B7E1A529D9C9C8CB973E752C6B76EDD0A63E3DFAB5868D6AC59080B0BA38CFBF8F8E0E8D1A375D61D110076EEDC2991506B686B60DBE56DF09EE62DD30AF4CC944C8C751E8BE4FF9229C75A34D7C39D5BE3D1DBADA9CCD6ABC7FF1F040201C64C3883977139A471862203DEA7FBC366A864F70B79207AD5035C9B2B3F7FD58B9323F170D773A9CF4FBC9A869B4BEFA220896A63A6ACAB04BF084F18D85189B5B7EF29A9DBB7D78441EECDF1F4E114747231A71CCBFF908FA93DA6E2D6B96FD372D3197474F5E88A98F018F433EB8721CD879076C0B81C2E224E4460E0B881D0D0D190388768876EF1DEC584DC425149119F8B84CE39EF12DF21333513BD7C7A61D7925D70B77047E8CE504C5A3609C3FC870110260B329233D0D3BB27696E5D035D623E00C4EF3DAD92138F88448B887779995057CC526249B5F6AF0A7D137DFC73ED1FF41D41EDD6FAF6ED5BB8BBBBE3F3E7CF12AEFC3A121313D1B97367346EDC18FEFEFE78F6EC192E5CB84072B3BA72E50A2C2C2CD0AB572FB468D102AD5AB5426A6A2A719CCFE783C964E2D5AB57E8D4A91394949460646484DBB76F93D65AB97225F4F4F4606565055D5D5DB8BABA5224237BF6EC81A1A1211A356A043D3D3D0C1F3E1C008826383D7BF6A46482BB74E982458B1611AF45A45AB4A321EDDAB2C4DCB9732512EB870F1F62E8D0A114373359C0C4C4045BB6502D2FFDFDFD91939323E18ADAC34F41AAB95C2E860F1F4EF9C7D2AF5F3F8C1831A28EA2920F56AF5E8DEDDBB753C6478E1C89E0E0E03A25D4717171128B30CC9A9AE1C0BD0368DFADBD4CD72BC82DC0F4DED3919D4E2D6C70EE60869B9163257629AC473DBE05BBF73D22DC562AA3FFBF3DD0A457A35A8D45595709EC1A2C167F1425396C28284AFF1B22F8D2FCA7BA2636CABA4A18767110D48CC876561FF3D99834F5C2F7864982BE9E2A22C24762DA6407CA314E05070B872DC4F33BD23F2800C0BA50A12FF2A4E593C0506060E5F89508DE24D46166A565A1B4A4549C959600814000237323B4E9DC863456F2A9047C3E9F90A6CCF59C8B533B4EC17BBA372EA45EC0B8C5E388A4C3E742E1FD4C5347F26F98488AA2A2FEA568992D2677B42AFEF165EC32D0E97430594CA9D6FE95C16431B1FCD0724C5B3D8DB2637BE7CE1DF4EDDBB7C60C7175F0F2F2C2FDFBF7B170E142BC7EFD1AE7CF9F87A9A929F177484F4FC7D0A143E1E4E484478F1E212C2C0C4C269342AA737373D1B9736724272763DAB469E0F3F9A402BAA0A02004040460CC9831B87CF93276EEDC89F8F87812F13C7AF428264D9A845EBD7AE1E8D1A3D8BC793341CCB5B4B4505C5C8C9C9C1C686A8ABF3B5C2E1759595924022D8A5DF43949B3B63C3077EE5CAC5CB992321E1E1E8E69D3A6C965CD51A34661D0A041A4B18F1F3FE28F3FFE90CB7AD2E2A720D53B76ECC0FDFBF74963DADADAD5B6C8FC5571F8F0612C5EBC9832DEAD5B37ECDBB7AF4E251FF9F9F9183C7830C5F3D1A2B905F6DEDE0BF366D44CD28FA0BCB41CFEFDFD911E4F6D6D3CC8BD39AE5E1C516D33937AD4435A24A71460FE22AACCCA61466BD88D685EEBF1D06834B9EAB6CB8B2BA0A429BDE65D548CC8A821267563550C3AD49B42BC232213BFDAD25D5A30990C6CDDD4171BD6F6A258EF9597966396FBAC6F6A7C42A3D160DFD11E130226E0F8B3E3B06E638D0B07850F01A202C8EABAB2024279079345DE52D7D0D1009FC747615E2141843D2779223C3D1C53564E21F4C06F9FBE05FB131B7A267AA0D3E97810F980348FA865776989F0B7564D530DCAAACAF8982DDEEAAF7A2F286397110596D2ACFDAB8346A361CC823198B17E06E558747434295B2B0D783C1E9E3F7F8E9E3D7B62F2E4C9B0B6B646B76EDD909696061515E1E7B962C50A30180CC22BDBC3C3030F1F3E44972E5D8879040201B2B2B2A0ADAD8DA74F9F62FBF6EDF0F6F646626222B14E606020468E1C891D3B76C0C9C909A9A9A9C8CBCB43E3C662679DA54B9762C48811387AF428860F1F8E993367127C4745458568FE56B9E949494909040201D4D4C47229511698C56249BDB6BCB078F162CC9841FD7BEDD9B307AB57AF96CB9A3B76ECA0C8404242421019192997F5A4419D93EAA2A22204060652C6B76CD9F25BC93ED2D3D33175EA544AE19F8585054E9E3C59A79A718140005F5F5F24242490C68DCC8DB0FBC66EE81ACABEEA7AFBFCEDF82FF63FCAF8A4F1ED7032D8ABDA6E6CFFEF78F7BE08878E3CC3C62D778982BB8CCC62AC5A7B5BAAB6D2FF6FF8C33F1C9F3F93B35AE69D1BA2E7BA4EDF3D67614A3162B73DC541D75338E9719E729C9D578AE46B69C87B4DD533F22A7850505220BDAE0E1C3617F9098528CD97D0E9F10B043C018AD28A51FAB10CDC522E047C0194758592810F717928FD48BE363FA110E5C5E2CF83FF25534D6792B3DB55D7B6E8668AF6D3A8DDF0FE5A780D2525DF9E35AC0EB36674C0E1FD9E605689A738BF1801230324BA435445D8EE30CCF79E8FA7D14FF13EE93D1E463D44717E3141541B1835808D830D762EDE8927B79F80CBE1E2F5E3D798E7390F5161420FE2327619A16716C1D04CE866F03EE93D6CDADBC0D8C21831E1317874F3113E667F44FCF3781C587300633A8C41646824D4B5D4D1C3AB07F6AFDA8F237F1F41E2CB44449C8CC0D2514B010085B962526FDAD414772FDFC5935B4F107B3D1667F60A3DE645EFB7A2AC8220F9D2ACFDBBC0EF4F3FB88F75A78C6FDAB409376FDE947A1E0683010F0F0F848787C3CCCC0CCD9B3747505010719CC3E1E0C4891318376E1C747474AA9D4774FFDEBB772FF4F5851A78252525A20B64626222525353E1E3E383254B96C0C2C2829054FAFBFB03107A4B272727C3DBDB9B34B7818101319F68C7BAF2C39588408B1E020010D215252525A9D69637366DDA843E7DFA50C6972E5D8AA74FBFBD3EE26BA84E063267CE1CB97B7757873A77925FBF7E3D458CDFA54B178C1C39B28E22920FA64F9F4E11EDABABABE3FCF9F368D0A076BB0056C5F6EDDB71F5EA55D2184B91858DE73642C7A0FA1F98EFC5836B0F7072FB49CAF8D4490ED8BAA9CF6FB185290FDC8E4EC520AFE3282E2E07935C398C5C0000200049444154C980433B13747231C7D588442C5D1105EF2136686AA98BEC9CCF98B720027FCD71A13879FC3FE1D5EB5C44442692C6982AC2C2C4EFC916E72716E2C2846B488F16B6C665AA32C16173C02DE3124439E96A2A428786A3E2B3D0D7D8C04E0FDE6103A0D548A8DD15F0056028D091FB2A1FE15322F1EE6E26D40C54E179BC2FCC3A89B352D1810F7067FD4370D8C21BA9998B093C8EF48686A9B861C893BD2F7163C95DB0F34A011A603D5068A9A5A227BCE91EED1586165E56E8BDA50B71CDE1EE21B0F6B044EFAD5D01007CEE17570905F1BFB9EAD676DBE08A8CFB59C87C24D62CA6A41660C9B2286CDAD0FB9B3FCFEA306CA82D4A4B39983895FCC0F2E2EE0B1C587300E3168FABF17A05A602A2C2A210192226972C2516FEDCF227F17AE5D1959833680E26769E488C69EB69C367A60F00A186B9710B7276CFCADE0A00F03EF13DEC3AD861CB852D58367A1966BB8BFDAF594A2C0C1A3F08BD7D859FC7827F17A030AF105BE76EC5D6B95B01002DDAB500FB139BD06703C0C8B9231130220013BB4C24DE03406EFA226AACC5506048B5F6EF8205BB16E05DC23B52D12A9FCFC7F8F1E3111717472A1CAC09A1A1A1B87BF72EAE5FBF8E9090108C1F3F1E454545983D7B36D2D2D250525242CA4A4B82402080B9B9393A77EE4C1AFBF4E913F87C3ED2D2D20008DB7B2B2A2A62FAF4E9F0F7F727D90116160A1FA6AA23EF7C3E1FEAEAC27FE76CB678D74144B02BDF1FD96C36E8743A582C96546BCB1B0C0603C1C1C17074742425E9B85C2E264D9A847BF7EEC95CE23A6AD428040707938C1F9E3F7F8E9090100C1D3A54A66B49833A25D5595959D8BA752B657CD5AA5575108DFC70F6EC595CB840D61FD26834040707D77977C89C9C1C2C59B284323E61E904E226224B94979663D5A455948CFD48BF56F584FA2B98BB20022C2603919747C1A5A3396195C7FD92CD127D762929053871EA257A766FF24DA4BAB0A80C9DBBEFC781BD83D0A6F5AFBF4BB4F3DF585475846C3FAD15451F2C2D4E0F0D47EEEB7CB82C7080ED706B7CCE2AC1F97111107C498814A57FC2E9619760E26884EE6B5C50945E8C98350F5194564C22D52579A538DC2D040C161DEDA7DAE35548026EAFBC0FBF086193A7A7FBFFC3CD65F7D06EAA3DACFA59A030A518B756DEC7DDBF1F1164F865F01B844FB90E5B5F6B34E9DD08A579A5B8BD4A283350D252447971054A72D850D21477EBE473F9F89455027A258B4591EB8748C3FBB5B5FBECE886A00EC7814A9FEB9EA0475838DF956868240B8C1DDD0629A90558B39E5CD4B96FE53E741AD0A9C6DF26F7B1EE70EAE58447518F50905B001D031D38F77626D9B5993535C3B167C770F7F25DA4BE4D858985095CFAB9405159289DD97E653BE5E66F696B89A50796A263DF8E00845EFD87620F21E14502329233A0A2A6025B275B429E0100EA5AEAD819B913AF1FBF46664A268CCC8DD0BC5D73E466E49276007BFBF6868D830DFE8BFD0FCAAACA68E5D20A170E5E80939BD03A6CE2B289F099E1439C2FCDDABF0B982C26D685AE835F5B3F7C78FF81184F4A4AC2A64D9BB070E142A9E6A1D168E8D8B1233A76EC88458B16C1C1C101070F1EC4ECD9B38916D85FB381E3F1789456DD3A3A3AE0F178C8CBCB23C8F0A44993B062C50AE235003C7DFA14969696303131019D4E476464249C9D9D89E31C8EF001AAA4A4049A9A9A50555525355291240F65B3D9C44385346B571E9317B4B5B571EEDC39383939919C4A1E3E7C887FFEF947A244E447B166CD1A4446469278C582050BE0E1E141F97BC91B754AAA972D5B46C9DEF6EFDF9FF445FBD55152528299336752C6A74F9F8E010306D4414464AC5DBB96F4C50784D646A3FE1A2597F54EEE3889CC944CD2989DAD21766CE9574FA86B405171199E3CCDC2CA65DDD0A5B305E958C5170901F34BF6B5839329F232E74343E3DBFCA473723EE3BF571F107D27FD9727D585456538728C5CDCA666A80A9705D462386920E00990FD22174DFB58A0ED445B6898AAA381B50E66248BB3A6D181F74163D0E079BC2F94759460D4461FD683C80D190402E0735609749A6A61F42D6FA8EA0B4950FCC514629D98D50F6037A239FA6CEB8AB2C272A4DE7C0F765E29B42DC4A4F0D6F27BB0F36B8E81077B11631AA6EA08F1BA08A68A02CA0A84DBC2EAC662FD25A784030800969A585A25927F30580CA9D6366E678066EE4DF0F69CB8835B591917274EBDC4F429D42E6B3F82E501DDF0F45936AE4488335E9C0A0EF62CDB83BFCFFC5DE3B5FA26FA121D242A4381A900577757B8C295724C454D32391D309AFC9B4DA3D160656FF5D50444F3B6CDD1BCAD58C3AFDF90FAB06B6A690A534B71F30ABF3FFD88FFD733D6839E31D98545DAB57F07E8E8EB202028007FF4FE83449CFEFEFB6FF8FBFB93241192B07BF76E5CBF7E1D7FFCF1078C8D8D919C9C8CFCFC7CA210D0C8C8080E0E0E58BC78312C2C2CD0A14307BC78F102AB57AFC6F0E1C33178F0600042125B59D30C006666C22EA149494968DFBE3D2C2C2C101E1E8E6EDDBAA17DFBF6C8C9C9C1A54B97B07CF972ECDAB50B63C68C8197971756AD5A05151515F4EAD50BAF5EBDC2BC79F30000B9B9C24EAF4D9B36C5E5CB97D1A74F1F70B95C423EC1E389256365656504699476EDDA40F3E6CDB175EB56CA7A8B172F86878787CC9BB48834F0955DD5525252B067CF1E4C9F3E5DA66B7D0D75A6A97EFBF62DA543228D46935841FA2BE3DF7FFF457A3AB918AF458B1612DBB0D7364A4A4A281D91D434D5B064DF12B9144D7E2AFC84231B8E90C61414E83871D40B2A2ABFB6863AEF231BD7229324B6BE06003E5F80BC8F6CF0AA6842C32FC7E341ACB0002B39A50061675F21E703D532EAF5EB5C0804023839507D68B95F8851651D6A75845A529C15153CDC7FF00ED9D9C275B3B33FE176746AB5EFE557C081434F295A5FE7396DA1A8F17D590B1A8306EB419648B89482AD1641D8D5F2309EEE17D704F0397CC49D8C47EBB12DA1AC53C376F4173ED07F770F82502B2829A0FC4B2BF9FCC44214A616C3666833DC5C7A17DB2DF7E3D1AEE7E81CD0018E33854E149F323EA320B9082DBCC8644AD540341F0334C697ADE24A366D22A907B352BD02B79C4B5C23CDDA00E0BAC49152B478F90AB91E4316A0D36938B4DF0386066412137D311AE909D402E77AFCDE707273421F3FB25EB7A0A0402A6F62269389B0B030B8BABAC2D2D2126E6E6EC8CECE2659D61D3D7A141A1A1AE8DCB933582C16DAB56B87E8E868923CB3ACAC0C2D5AB420CD6D6F2F6C48969898080505055CB870019A9A9A707777879191115AB56A85152B5660FCF8F1F0F5F50520E4059D3A75C2DCB973616767071F1F1FE8EBEB435B5B9BD067CF9D3B17717171E8D2A50B7AF4E84164E42B3B9F30994C223E69D7AE2D8C1E3D9AE2CEF1E9D327893574B2C0CA952B29BB4B81818172F1CAAE097596A9DEBE7D3BC5BFD0DBDB1BAD5A518B617E5570B95C6CDBB68D34A6A8A888E0E060282BD7BDB3C5B56BD7887FC022F41DD1572E8589007068DD2114E4921B53F8F9DAC3AA69DDB79FFD115CBD9688A1C34F11057176B686083BE58346E6420DE4A6AD77B16E430C3EE6B3A1D74015FBF70E429F5E42EFEDF98BAEC1AAA92E3ABB36C2DCF911E0F1F8D0D753C5CBA7D3A0ABA38284C48F58BCF43ADEC60BEB0E7CFC425056CE85BE9E2A62EF4E8296A61241AA4572904B57E23163D625FCF76C3A141515BE1AE7B5EB4998325D2C4FDAB0E90E366CBA03269381E2BC8594A2B15F01C74FBE24BD662832D06A8CCD0FCDE975AA3FDEDDCB44CAF577781D1A8F8B13AFA1BCA81C4EB3DAA030AD189C120ECC3BD7DC7C43201040D35C03E6AE0D2B8D01E59F2A20E00B50942EDC350AF1BA08054506DA4FB387E38C3644F12100947D21E0D59177011F5054171267912E1AA844B02B11620E9B0B1A9D06068B21D5DA0060D84A1F4D7A9A2329228D188BB99B0E0E8727F3EF8AAE8E0AE6FEE9823FE75D21C6785C1E0EAE3D8880A00099AE558F9F1F93574CC6E5A39749D9EAEDDBB763C2840935EE748E1D3B16BD7AF54254541472737361606080DEBD7B93F4C64D9B36C5B367CF70F9F265BC7DFB16161616E8D7AF1FE95E7DE5CA150A71B3B5B5C5810307D0B7AF7067C4C6C606B1B1B178F1E205929393A1A6A60627272792F4424B4B0B91919178FCF831525252606E6E8E76EDDA2123238368EFEDEBEB0B070707C4C6C6425555152E2E2E3878F020DCDCDC8879962D5B46925348B3766D62EFDEBDB877EF1EC93BFAD0A14358B162055198292BB468D102BEBEBE3872449CB8CBC9C9C1993367E0E7E757C395B2459D906A0E878353A74E91C6180C86C4A623BF324E9F3E4DC9528F1A35EAA77970A8DABD12007A0F935F91CB95635748AF1514E85830EFFB5D187E06A4BF2BC2B0112170746888352B7B20FD5D11D6AC8F465A5A211A996B61D79E8798B72002CE1DCCE0E26C86D0B0FF307C542852E367434343112C1603B76EA7E2DC8537F863AA23DAB436C698096770E97202460CB74761611952520B515A2AD4DBB9F5B484B1913A0C0CD4A0AE26CCBAF28916C6C29BCAABD7B9484D2B44099B4390EA9AE2F41D6A0B1D6D65BC7B5F84397F5D857B7F6B0C1F66074303B55F9250E71794E2E933B2C4C8BC930914BFC16A4E226880A9B3314C9D8DD169A103829C8EE3F9A157709AD5062C55218965E795D638858027008345DE0552D656848027003BAF142C75E1DFB4ED445B7459D681780D00D9CF3E40A78916D48DD540A3D3901C998E861D8C88E37C8EF0E18A53C281A2A62298AA4C7CCE1167696812369F386C2E1494847F6369D6168DD90C6D4622D525251578F82803CE1DCC6A7CFFDF8389E3DA62C3C61864E7887770224E44E0CFCD7F4255E3FBF4F1F5F83561DCC818B61D6CF1E2EE0B622C2E2E0EC9C9C968D2A4498DD79A98987CB5EF0593C984BB3BD56D4484AAD20F11468F1E4D7A4DA3D1606F6F4F64B1AB43DBB66DD1B6ADD82FBD6143F243B9A5A5252C2DC512B23FFFFC9374DCD8D898E29226EDDAB581060D1A60E6CC9924DD7B797939F6ECD923B196EB47B16CD9329C387182D0A70340707070AD92EA3A917F5CBD7A95D00D89D0B76F5F585B5BD7453872C3E6CD9B49AF994C26FEFAEBAF3A8A868A2B57C824B7B14D63D839DBC965ADECF46C4A9397E1C3ECD0A4B1ECDD456A13816B6E8141A7E3F8112FB4696D8C41EECDF12066223ABB3642591917ABD6DC82A34343DC88188DD52B7BE06CE830141797E3DC85370084D28DC2A2328C1ED91A9BFFEE8311C3EDC16231909A26AC106FDFCE04B1772662DE1C1700C086B56E58BBAA2766CDE800C6972D7E51A69AF585008B32D122D2FDB538555559F0F46881291385CD7D5ADAE8C3D3A3053A3ACB9E20D5069292F229058AA6CE3FA6117FB2E7254EFB84233D260305494548B9F10EA5056544F657CD4815C6ED0D7133E02ED2A333C0E7F091F5E40342BC2EE2CD19B1030987CD014B952C41D134131631162417C1B89D01B42C3490702905A9B7DEE3737609725EE4E2CEDA87D8DFF1245E9D4E809296225A0C698A9835B1B8B7F1313EC4E5E1BF53F1383746E8E053922B24F6BA965A48BA9C8AB4DBEF9112F50E4FF6C50110127B11B8655C3058C2EF8D346B8BA06F4B752CBA7A2D9132260B282B3331677647D25819BB0CB72FDCAEE68A7AFCCEA8AA6B07846DCCEBF17362D2A4494421A8083B76EC2075B294151A376E8CFEFDFB93C622232349059FF2469D64AA838383296353A74EAD8348E487F0F0703C784036FD1F356A54AD98B04B83C2C2424A165D9E564C892FA937DC01FD6AAF3DB43CC0E1F07032240E9327B493D8A8E6C5CB6C64E77CC6FA356E04016ED15C1F3ADACA484814CA398A8ACAC06231B026B007E95A5166BA2A2ACB394428FFA28B55FA62EB565C5C0E25250522CBFCB5382BCF4DA3D1505626960CB0D91CF4E87308454565282DE580CDE6C0D6D600D72EC9A7905516103D905486D5C09AB3585F039D49C7EB338978152A26960A4A0A70DB24B6D6F238DC1BA73CCFE350D710624C454F198E335A13AFB9653CE8B5203F481AD80B096A7E62211A3A19C1E7DC409C1B13819383C496720A4A0A683DAE256C8709130F7D7776073BAF14917F4523F22FA14386515B03947FAA20F4D91DE6B4C5D9515771B85B28F11E0080C711173A319874A834107E27E80A74A9D6068006D63AA0D169847B0800C43ECA90E293FC3E8C1ED91A7F2DBC46AA497872EB09FA0CA77AE2D6E3F7462B17EA4EEF9D3B7724FA23D7A3EEA1A3A3033F3F3FECDEBD9B18FBF0E103F6ECD9231727103F3F3F9C39738678CDE57271EAD429B9AC2509B54EAA4B4A4A28F6724D9A3421E9847E079C3E7D9AF49AC16060C1820575140D1555093500A8AACB6F2B35F9553265CCC951B615C0B58DB4F422949454A0B36B2389C7B3BE14FE55CDC6B3586249457E4129DC7A5842AF81F8B3E772F914CB41FA17BD2087436D16C2667340A7D38879CBCBB9506489FF697F2DCECA50565620483A00A8A8303173BA134A4A2AA0A04087B23213D6CDEAD657FD6B9044AA55F57ECC6AACD5181B34713347CA8D7760E79642D5400596BD1A91F4C63A4DB530F1B11F12AFA4E2E3DB02685968A0695F0B28288BFF16BE973C406790B59FFA2D1BC03DC80D4DFB085D5DF45AE862FCFD61C879998B82E422B0D45868E868489263286929C22FC213594F3EA030A5089AE61A306E6B80E28CCF503314BED796C3AC61DCDE10990FB3C15465C2ACA3099E1FFA0F8DDDC4DD515D033AA0FD1FE28C91346B0342BF6FAD461A284816D764A449F8DC65052D4D25A8ABB18886470090FF81DA5CA71EBF3FCC9A9A81A5C84245B9B860EFD1A3477518513DBE067F7F7FECDDBB97D490455E44B77FFFFED0D5D525F53F090E0EFE7D49F5E9D3A729D59853A64CA9D316DDF2C0F5EBD749AFCDCCCC7E9A2C3540AE2016C1D8427E366AEF12DE915ED3E93418E8FFDA7A48D52F3ADABC3CC96D81F5F584EF2F21F1231CBFB876A4A615223BE7339A5BEB81C7E383CDE6C0B20999746B6A28E1633E599BCBF842C42A2474E063B33944961A107EB6FC4AA4FC6B715686B2129394A90680A15E75EBA5FEAD282C247F76343A0DCADA3FA8A706A06EA2063BBF9A5B9BD39974580D680C54E39659D9CEAE32EC47911D054013368E31B0D39378BE08466DF461D4466CCFA6D190ACF9D4B1D4828EA5B88DAFD3ECB6A4E3EAC6AA5037AEF2EF50CAB535CDC8A4BAA444F2EE8AAC6065D500B10FC5ADCA4B3FD7AC5FAF091FB33F62CB9C2D183D7F349AB4FCB15D8C7AD42E180A0C6835D0C2870CB1677555D3837AFC5CB0B6B646CF9E3D494DE6626363F1E9D327991751B2582C787A7A126DDF456BC5C7C7C3CA4AFEF693B5CE64C3C3C349AF9595956BCD3BB1B6909090409556F4FEF9BB5C09E4D8E69ACB21FFE85936D1F9E57DA98D0CD5D1BE9D09029647213A260D1C0E0F4F9E66C26BD8499C39F71AEDDB99C0CC541301CBA370E3660AEEDE4BC7D0E1A760A0AF8641EEC2AD741A8D46B876886060A08A9454B24B8A48372DA91579593997D05303C24C7865F2FDB5382B834603CA6B689DFD2B42495B91942DAE876C20A9F0519ED0D224BB90FC88AD5E467206AE1EBF8A374FDEFC6858F5A8C70F2123230381818175D6565B84BCBC3C2425257DFDC42A9036FEAA6A040E8783E8E8E86ACEFE31482A4CACAA9090176A9D543F79F284F4DAC5C5A5DA769DBF2A6EDEBC4919FB15E42D550B09E589D4B4428AC4E157C4E1FD83A1A1A188AE6E07A0ACB9120E1DF720E64E3A1AE8AA4041818EE04343505ACA45CFBE87E0DA7D3F5EBDCEC5DE7FDDA1ACCC04834187BE9E2A25FB6CD1481B393964AFEABC8FC22CB3B23235D3C95460A04103B1BCA169535DC2CE4F9A382B83C3E143F31B9BC6FCEC28FD5886B2C2F2BA0EA31E3F085E959B76E5EDFF6F859DB31D6E14DC40BF91FD7E34AC7AD401AAFEED15147E8E87E6ECEC6CF8F9F9212E2E4EEA6BAE5CB982254B961084F67BE69005A64F9F8E458B16D5788EA4D8A48DBF57AF5EA80A495C4916707171A138A9444545C965ADAAA8D56F62717131E549A875EBD6D59CFDEB2233936CE7C562B1D0AD5BB73A8A4632F4F5A91DBD3EE67C9470A66C50B94530209431147F2A87A6460D8D327E0134B5D4C5E3FB93712522116FE3F360D1481B7D7B3725C86F072753BC78321557AE26A2845D81BEBDAD60662AFE2CCE9D1E86860DC99FCD82799D90F3812C91AAA8E0414B5309BA3AD442C380C55DF04781B89BDDE409ED31697CBB6F8A5384A03D03D1D246B6FEA1B50D49C59C1C36174A5ABFD7C3425DE35316F93BAAA626BF76C00281002F5EE490C60CCD0C259ECBE570919D9E8D864DC837D5FC9C7C6835D002FD4BD1B0243BBE3276193E647C8096AE1634743448C7D89FD8A436E015E51560298ADF73796939D1E6BC1EF2436E662E0AF3C8FA7D5977E8FB5E242727E3F8F1E370737343CB96D2C9E644D215D1CEEDF7CC210BA4A6A6521ADB5485A4D8A48DDFC6C6060D1B36C4FBF762095746867C8A9B69341A3A77EE4C32C5888E8E0687C3019329DF4673B59AA97EFAF429253BF9337829CA1AEFDE91F5C3161616D0D0D0A8E6ECBA41C3860D29315D3B794D6EEB59B5A26A9962EEFC1E5DD1984C0606F46B8639B33AC2D3A30585A8EA3550C588E1F6983CA13D89500340BBB626948E71CE1DCCE03190ACDDFDD3DF19B177274994CC181BA9C3A605F92149D2795F8B130006B937A768BC7F3534B6D0A68CB1A5D093D7437AF02A78C84F24131B7333AD6ACEFE71FCF7EA0372F3C824BEBAF6DCA1BB42E1D5C28B54C858C62EC3901643B02F701F0020263C06EE16EEA48CE7BE95FBD043AF07065B0D4637DD6E98E03A0139EF8444FED6B95BE8A6DB0DF939C239DF3C79832E9A5D08BFE48AF20AB819BA217457A8ECDE743D24E2D5C35794B1DA249F35C1D9D919050505183972A4D4D788EA9B4464EF7BE69005783CDE576BDB24C5F62DF157AD2BAB4CB0658D4E9DC83D303E7DFA542B05ADB54EAAABE2FF8154FF2C4FD19541A7D3D1BD7B77D2D8BBC477F854F8492EEB49BA015EB8F8562E6BFD8E5056664A248BF5A0C2A211F573CA7CF441C299BF3E3E657C46F4AA58B9D6434842EEEB7CA2D98C084E8E357793FC11DC8A4EA38CB5682739ABD6CAA51538151C449C8820C6224322519C5F0C7B67E1FD26F9553232533351562274133917740EFF06FC0BF731EED876791BE6EF9C8FB4F8341C5A7F0880B08B2397C3255C8C2E1CBC808AF20AC45C8A0100FC17FB1F4A8A4BA06F42DD01AC876C21C99FFC5B6A96525252B075EB56B8B8B860E0C08194E36C361B090909C8CFA7BACB5454541089C1F2F2723C7BF68CD2734352028DC7E3213D3D9DD2C11810677A2B67502BCF919B9B8BD8D858A4A5A521373717E9E9E978F9F225495E21CD395F8B45201010A43A3B3B1BF1F1F112259A55DFDFD7E2AFE9DAAA5C4996A84AAA01AA81843C50ABA4FAD9B367A4D74A4A4A68D6ECD7F62A9684AA4F5F55B53D3F0B860F1F4E7A2D10087078FD61B9AC65696B0993C626A4B190D3FF110578F5A887AC6021E1E1E34D588284337F3E7CCE2EC1D99157F0E13FE9A4588957D37073E95D1424896F90DF3AC7F720FE3CD522B34FAFA6725B2FEC2C393BC95060A0F3C0CE12CFB56E630DAB5656B874E4123176F1D045185B18C3A1870300A194030054D455C0E7F1111418847E23FB61DE8E79B075B245666A260AF30AD1B0B1F0B7BBA1A5F0BFA2BA93DBE785C42EE1B9F07BF52CE619E80C3ADA746E23ABB75C0F0928639721EA34591BDBB16347A978446262223A77EE8CC68D1BC3DFDF1FCF9E3DC3850B17484D4856AE5C093D3D3D58595941575717AEAEAE24E2E7E2E2820D1B3660D5AA55D0D7D747EBD6AD61676747646BC3C3C361616181F272710DC7E6CD9B61686808737373E8E8E8A06FDFBE24222E22A5225D78D539468F1E0D474747346AD408FAFAFA303737879D9D1D6C6D6DF1E9D327A9CF912696376FDEC0C1C10146464668D6AC192C2D2D71EFDE3DE2B8A4F7F7B5F82BA32AA9CEC8C8905B8166F3E6CDA1A7477630AA0D5D75AD92EAAA6DB16D6D6D7F9A020359A2F2971800343535AB39B36E3170E040989991BBE61DDB720C7959797259AFFF2872A7A3A2E232EC3BF0582E6BD5E3FF17C646EAB06AAA4B1A4BBE9E8ED27CD977F092350A538A1177E22DB29F48975917881E4A2BA97DBE758E6F860078194C768D69A0AB82B66DE463C9191D93865BB75349631DFB7484AEA1AEE40B000C1A3708AF1EBD42EA9B54BC4F7A8FC7371F63C8E421842CAAA4B8042C251614980A7897F80E99A999E8E5D30BBB96EC82BB853B42778662D2B24918E63F0C00606E650E1A8D86ACB42CC43F8B47565A16BA7976239A5A3D8B7986E66D9B434D530D65EC328C761A0D4F6B4FF437EF8F1E7A3D30A5FB14B97C36FF6FD8B36C0F6537555AFF612F2F2FDCBF7F1F0B172EC4EBD7AF71FEFC79989A9A12A42E2828080101011833660C2E5FBE8C9D3B77223E3E1EEBD7AF27E6C8CCCC44404000D6AD5B872953A660E1C285C8CECE466A6A2A00E0D5AB57484D4D256C83E7CD9B87D9B367A343870E387BF62C66CD9A85CB972FE3F163F17D4FB4BE284B5C758E6DDBB6E1E0C183D8B8712356AC5881C183070300468C1841D8D14973CED762A1D168888E8E0693C9C491234770E8D021B0582CF4EFDF1F85858512639326FECA505626D7045554544824DFB2008D46A3D4ECC933332E42AD315A2E974BD926F9DDDA928BA0AFAF4FFAE3D5668BCC6F81828202A64E9D8AF9F3E71363E5A5E5D8B37C0F16FEBB50E6EB0D1C3B10FB56EE038F2B76BB98BFE81A3C3D5A909A9FD4A31E3F8A21836DB07A9D789B98CFE1E3D5A978B49D6C5787517D1D0D3B18616EDE14286A4857F4C7FBE21CC3608AF323DF3AC7B7E2DDDD4C8A9EDAADA725E874D95B64F2F902CC5B184119FF5AF7D7DEC37B63CB9C2DB874E412783C1E584A2C0C1A3F88385EB9C8302B2D0B0030D7732E588A2C784FF786AFBF2FA9B85A515911866686C84CC944644824AC5A59C17D8C3B6E84DD404971095EDE7B099F193E0000251525F8FAFBA2B4A4140C0506149515D1C8BAD18F7E14FFF77872EB098EFC7D8434666262020F0F8FAF5ECBE3F1F0FCF973F4EDDB1793274F86A9A929ACADAD919696461C0F0C0CC4C89123B163C70E141616E2C68D1BC8CBCB23E980B95C2EE8743AA2A3A3616F6F8F989818AC5DBB165A5AC27A0251424D5D5D1D2F5FBEC4DF7FFF8D61C386E1D8B16300849D04016116B5F29C80D0D0A0EA1C80B0395E9326422F75369B0D5B5B5B346BD60C3B77EE24E6F8DA39D2C442A7D33160C0009C3D7B9620C8DDBB7787A5A52576EDDA85050B1650629326FECAA89A70D4D0D0A0106D59A2AA46BC724318B9AD29F715BE203F3F9FA2CFD1D5AD3ED3F02BC3C4842C73905785AB2C3079F264CA16C9D9BD67F130EAA1CCD7FEB572920000200049444154D26FA88F1E5EE476DC9F3F5760F2B40BBF85BD5E3D7E1E4C1CDF8EE2FF1DBBE31904BC1FFF9E15A6142376DB531C743D85931EE729C7396C2EF2130A2566C679153CE04B08BC721EB29FE7829D4B6E6222890C0B780214A57F225A908BC0FF92A9A657F229AF6E0E59E1F9616AA158FFBEF269AAB069EB5D3CACD2FEDCA4B109BA0CEA52E3751ADA1AE832A80BC28F84E3ECBEB3E837A21FC9CD834EA713193691A387E7244F84A78763CACA2904A17EFBF42D2115696AD7141929198838198101A307C0BC9939040201C20F87A3B8A0181DFB7624E677F371C3C07103D17F547FF4F4EE89A676F293C6FC3F80CFE3E39F45FF50EE1353A64C91CACD81C160C0C3C303E1E1E130333343F3E6CD111414441C4F4C4C446A6A2A7C7C7CB064C91258585860E7CE9D58B66C19FCFDFD49738D1A358AA80573717141464606E1A6555C5C0C25252530994C9C3B770E028100AB56AD22AE1565655555C5492491FC444949893247552C58B000EFDFBFC7B163C7A0A6A646395EDD39D2C4A2A0A000333333121135313181A3A32321DD9514DBB7C45F955457E54AB246558E595454041E4FBE7D186A8D544B7A42A827D5750F4D4D4DAC58B18234C6E7F3F197D75F789728FBAD92090113A0C0246F909CBBF0069BB7DDABE68A7A7C2B32328BB16AED6D898D626A13791FD9484AFEF656D2B288BFA18906C54125EF4D3E9E1FA1124269919F5888435D43B0BDE97E5C9D7D0BD9CF73117F3119DC4A1D28A3031F60A3E1BFF8A7F941FCADFF2F0E750941F13BF18DE4A0EB29DCFDFB116256C762A3D16EEC6D1B8CDDAD8F1219E7844B29D86EB91FBC72F10FFF832D4FB0C9640FB6350EC206BD7F71BCFF598288F3B9C2CF88AE20CE124B9A4356284C29C68B2364E987A1811A06B9D7DC69F27B70EFFE3B2C5946D540CED93A072CA5AF3F340C18330039EF7250F4B1083E337D48C7982C26B815C2BF9B4D7B1B185B1823263C068F6E3EC2C7EC8F887F1E8F036B0E604C8731880C8D0400B4746A8917775F203B3D1BBD7D7BC3A4B109D434D57074D351E818E8A045FB9AEDC8EAF1FDD83E7F3B9EDF794E1A6BD0A001264D9A24F51CA1A1A1888989C1F2E5CBA1A0A080F1E3C763D3A64D004064AC3D3D3DB163C70E4C9F3E1DA9A9A958BC7831C549A9AA9CD3D0506CED585E5E0E4545A1AD62767636141515616161411C1765B42B1357369B0D3A9D4E647A2BCF5119972E5DC2B66DDBB07CF972B4692359BB5FDD39D2C4C2643225EA9B69341A418625C5266DFC80907057466D936A3E9F8F8282826ACE960DEA49B51C606C4CD616A6A6A6129AAB9F1113264CA0581215E717638EC71C94145375513F8246D68D30721ED56A67FEA26B9462A47A00D9399F31726C18FE7B25BD3EF66A442296AE882208EDF7CC210BCC9875492229AA8AAAF1558D5FD239D260CEAC8EA8EA2C786DEE6D7CCEFABEEFF4E9A1E1C878900D97050E981237123E67DDA169AA0EC197FBD0D3FDFFE1E6B27BB01F6D03DFF041E8BBA31B3E2614E0EEDF621BA74F5925B8B9EC1EEE6C7884B693EDE0B2C0019FB34B50982ABCD9E4BDCA47616A312ABEB4FC8E9C1F8D8839B7D1D0C908DE6103E0E8DF0689575291F54468F52672FDA055925E549D4396B83AFB26F10020C29CD91DC16231AAB9E2FB90949C0FCFA127C0E190D7EAE1D5039DFA53ABFA25C1B1A7A3B038B1BB031AB7205B79995999C1A891110061D1E3960B5BA0A6A986D9EEB3D1CBA8177C5BF962EF8ABD18347E10213571E9E7022E878B4EFD3B415B4F1B743A1D2EFD5C90999289816307FEF21D627F565C3C749122FB0080BD7BF7A241830652CF43A3D1D0B16347040404E0D9B36768D3A60D0E1E3C08402C5598346912D2D3D3B172E54A829F3C7DFA949461AD6957B5F20E88B6B636CACBCB093D322026E095F9109BCD26B2BC55E710213E3E1E7E7E7EE8D8B123E6CD9B2771ED9ACE912616168B4559F7DDBB77888D8D45BB76EDAA8D4D9AF801A17EFAF973F28391919191C4F7222B48E298F29680D4936A39C0DCDC9CF45A2010D48A95CBF782C16020282888A26D4A8A4BC21FBDFF9039B19EBC7C3251852F029F2FC0C8B161B8792B45A66BFDEA484929C089532FF1E46996D4D77079C21F34D14DFE7BE6900552D30AA1A2F2F5ADD9AAF1558D5FD239D2A06D1B63F8F9922D3BCB0ACA716D2ED592EB6B10F004C87E918BC63DCCD076A22D1A58EBA0515753CC481E07A68A02043C0162563F80DD88E6E8B3AD2B4C1C8D5098560C765E29B42DC4992D3E970F1A9D86D1B7BCD07DB50B2C7B37028D4E231AD3947F16BA0828AAB3F0212E0FF7363E464B9F66187AD61DCDDC9B40D74AE86CD2C05A87980F001895486DE5396489075B9F22FE02D9F5A39955034C9BEC50CD15DF870FB925E83F28181F72C9BF3B46E64658B85BFA5A0F3A9D8E7FA3FEC5D2034B29C7864C1982D0D7624FE9C6368D7128F6108E3D3B860D611BF04FC43F88FC1089793BE611DA6B2B7B2BCCDE3C1B73B6CE21AE9BB67A1A7C67F962CC8231DFFA36EB21056E9CB981C0098194F149932661D0A04112AE908CDDBB77C3DBDB1BD1D1D1484A4A42545414F2F3F3892C6DFBF6ED61616181F0F070DCBC7913D9D9D978FEFC39D6AC59830E1D3A203454FC5DA98954B3582CC209C4D5D51500B07CF972545454A0B0B01061616100C8D66E6565654496B7EA1C80D04DAC4F9F3E282C2C84B7B737C2C3C3F1EAD5AB6F3A479A5868341A22232311141484C78F1FE3CC993370737383929212A64E9D2A313669E217E1FEFDFBF8FC99DC29B851A346D57E96B2405D90EA5A2B54945409AAA2A222E1CC5F1F3D7BF6048D4623FDE3BB7EFD3AC68D1B578751D50C070707ECDFBF1FBEBEBEA4B85FDC7B813F7AFF81ED57B64BEC40F63DA033E85873620D463A8C4446B2581A5356C6457F8F601C0A1A0C4F8FFAAD5440D891312F733E34BEA175B8A8ED39F34BF1DAF7CC210BF0787CA98AD7AAC657357E49E7488BF56BDC70E56A22A97148DC89B7B0E86E8656636CA49E87C6A0C17A9025DE9C49C4568B2034B0D681D3ECB6683D5638477E62210A538BD1674737DC5C7A170FFF790E3E978FCE011DE03893BC556B3FB2050CEC84750CA61D8DE19F3E1EAAFAC2DFC2F2E20A28282980CEA4E3EDB9644000745D29D6EA8A241D4C55E1C30AB7FC8B9D955225525D690E59E1435C1EAE2F88A18CAF5FE30626537659EAE49402F41F74140989E41B1F93C54460702034B4BFAD899671A3EA1D49AA669669341AACECADAA6D2A0300BEFEBEA4D746E64698BD69F637C5540FE970E3CC0D2C18BA005C0E9734DEB2654B42B6212D984C26C2C2C2101212428C29292961CB962D00847AE20B172E60F4E8D1707777279D337EFC78F8FA0AFFEE0C06A3C606295656560451ECD9B327860D1B862D5BB660FBF6EDE0F17868D4A811CCCDCD71F0E0414C9E3C9988AD72C6BDF21C0281003D7BF64472B2F06176E6CC99C479EDDAB5C3C3870FA53A479A58582C16323333317EFC78E27A7373735CBA7489C86A578EADF2675B5DFC952129B1E8E6E656ED67290B54D6AE8B5095D8CB1AB546AAB5B5A9DEB1F2D6B6D4150C0D0D616F6F4FF2E58E8A8A824020F8A9B7087D7C7C90909080808000D2F88B7B2F30CD6D1A369DDF041D7DD974DBD3D4D5C4F6CBDB31CE651C0A72C5DF83B2322E868D08C1DA553D317BA6B34CD6AA0DA4A416E042F85B8486BD82AE8E32CE840C231D67B339C8C82C86AEAE0A74B4ABDA0AF1C064D241A3D1505ECEC59BB779303656271C51AA23923C1E1F19999FA0A9A9486AF72EF2FEAE4C76AACE919B5782D4D442E8EBAB42458589D2522E8A8BCB40A3D160D342FFABC7A589432000E85FBEEFD9399F515C5C8EA6963A12FF0D548E4F52FC357D0E3541AF812A36AC75C3E8F16748E3E153AF43495B11D6832CA59ECBEB547FBCBB978994EBEFF03A341E17275E437951399C66B54151BA50BE11E275110A8A0CB49F660FC7196DA0ACAB44994751939C41563314FFF0F3CA7960280ADFF7E79C12301419D0B210134951465B24F7E0B0B9A0D169A44C75E5396481CFD92538ED738922FB18D0AF19FAF5915D81E283D8F718EC7D02391FC8373D268B8975A1EB60DFF1F76B14560FC938B3F70CD64D5B4721D47A7A7A387FFEFC3727E4C68E1D8B5EBD7A212A2A0AB9B9B930303040EFDEBD49994C1B1B1BC4C6C6E2C58B17484E4E869A9A1A9C9C9C482E161B376E44AB56ADAA5D67CA94290459068063C78EC1DFDF1F2F5EBC80A9A929BA77EF8ECCCC4C5267BF65CB96916C012BCF41A3D1E0EDED0D0068DAB429B4B5B5C1643291949444D8E14A738E34B11C3C78100A0A0AC8CACA42626222B4B4B4E0E8E8482A38ACFAFEBE16BF087C3E9F62A9ACA9A9094747C76A3F4B594052031F1D1DF9760CAE35522DE98DE4E5C9C70FF96740AF5EBD48A43A272707515151942E863F1B162F5E8C8F1F3F62EBD6ADA4F1B8077118E5300A9B2F6C86A5ADF444A42698599961CBC52D98D27D0AD89FC56DA4F97C01E62D88C0CBB81CECDA3E004A4A3FAF977962523E264C3987E81861A18BAA2A0B6C360765655C22EEC035B7B07E630CD86CA1C6D5A5A3398E1C180CD3864259806BF7FDF0F468010E8787BF37DF417171390C0DD490FC761622A3923063D625FCF76C3A1415C59FC396EDF7B0767D34F23EB241A7D3E0D6C31207F60D825E035582948ADC2F2E5D89A7CC3176C2595CBE2AB9214A41CE82AF1E575757FC6A1C00F0263E0F4E9DF6E2D163E18E44630B6D1CDE3F184E8EE22EA355E3AB1A7F75EF415A0C1F66877FF73EC2FD07E2C25B3E878FD3C32EC1F3785FE989350D30753686A9B3313A2D744090D3713C3FF40A4EB3DA80F5456AD176A22DBA2CEB40BC0680EC671FA0D3444B3C5643FD258D4E2374D2CADA8AE095F35056584E90693543219928FD5806651D2570D85C5296BAEA1C3F8ACFD92538D2F334F2DE906F4E86066AD8B9BD7F35577D1BF87C01366CBA83652B6F5034D42242ED3AC055266BD5E3E706FB331BCBC72CC7F5506A56B3418306888C8C2415DB7D0B4C4C4C3062C4881ACFA1D168B0B7B7AFB6D3B38F8F8FC4F1AA7354868383031C1CC4122933333312D9353636A6D461559E63F9F2E55F5D539A73BE168BE801435353B346BBE3AAEFEF6BF103C0952B57F0F021D951AC5BB76E5239B7FC0824493DE44DAA6B4D535D17DA96BA84AFAF2FE58BB566CD9A3A8A467AD068346CDEBC9962230408FD5CC7B98CC3DDCB7765B69E8D830D365FD80C6555AA57E591E0E7E8EA7600A9698512AEFC393074F8293C887D8F05F33A21EEE9749C0D1906D386FF63EFBCC39A3ADB387C93B00504943D1505072A8803C43DEA56D462DDD5DA5AABB6765A5B6DD56AABD6DAD6D5D6B65A67DD5A07DA2AA828286E5C88082A7BCADE2BDF1FF98806028242189EFBBACE95E47DCF79CF1308E1779EF30C3D59E58ACD5BAEB378E919A64E76C6EBF024D6AF19CA83074FF8E1477FD91AB1B1192C5E7A86553FFA33F39DCE7C31AF0771F1993C0E4F25E85E228FC353C9CA7E9A74367FC1293EFDFC3F5CBB5A7170EF383E7CDF8D7F4F3E90C51B979CBB24F442D11A3FAF1ECCE6DF3D58B562208BBFEA23AB94316942077475359E3B5F193B5454C0CF3F1C3535115B378DE6AF3F46A1AE2E66C4E8BF494D7B5A6EAEB47DA5ED2FEF3D541615151576EFF0C4CC54BE6E6A89B00EFE27F4B96B5CFFFD3607C67911E1174D4A581A8FCE449293922BF3189B773241BF991E0F8E3FE2B16F14997159C4DF4AC47FC51536BBEF21E8C0D30B948A6232C5EA229947D8BA87B48BDFB9A50114E54BC5F5BD43525B1F9D8E00A030B750CE4B5D7A8D9721332E8BEDFD0F90744F5E506B6AAA7260CFB8323FCF1721362E8341C3B7B3E06B6F4150BFE2C447C633A3D78C7205B58F8F0FEDDBD7ED3AF3028AD9B0614399B1D21D9D6B02458EDB9ACEE5539A0BF05513D5EDDBB767C080019C3CF9B471818F8F0F172F5EC4CDCDAD162D7B3E2A2A2AFCF8E38F88C56256AF5E2D3797959EC5DCA173193E75387357CD956B90F0A2B8F476E1E7633FF3E1B00FC9C992AFD97BE56A342E5D7FE3B70DC3F11C53F9185865505454CCADDBF10C1ED892196F77C2CAB231AD1C9AF2F0FE47B2F9EF569E63F2C40EACFD6908A969B99CF57D44D2936CB956DA8585D2D8635FEF69B46F678AFF850856FEE087BEBE2699FF4F3AD3D5917A39EFDC8D67F5CF171837B61D3BB68C01902574B572682A5B0F40FDFFE113A5D700B06B6E885D73E9157B7676014E9D7FC1C1BE29EB7F1E5AA9F9CAD82112A9306C880307F78E9309E4BE7D9AE1E0B896DF7EBFC2FCCF7A28B4AFB4FDE5BD87AA6069A1C7C1BDE3E83B700B39394F857989B01EF65B7F3ABC597E1CBF484DC4BD43A104ED7F2A8E55355579ED4769AB6C91AA887187477278DA49F6781C91DBC779BA23EDC64B3D3F22B18A5CA58ED234696980BEAD34DCA3797F6B1CC7397069CD0D598D6D7D5B3D1ADBE871736B102EEFB647AC2642BBA956B96BBC288941C9EC1F7BAC8C875A4505366E1841D72E962FB53E48EF3E4C9F71582EDEBD04750D7556EC5B2108EA5780E2E262F6FFBA9F0D5F6E5098146F6C6CCCA953A704415D4F090B0BE3DF7FFF951B6BD6AC5995124D5F94D21A535555B54CABF4EA4669A2BA71E3C688C562B9C2DBA53B2C36343EFAE82339510DB074E9528E1F3F5E4B16551E1515157EF8E107BA75EBC6F4E9D3E54AF14824128EFC75848093017CBBEB5B9C7B3857B052E570E9EDC2C6331B993F763E318F63E4E6D2D273193F791F070E05B1E2DB01D8DAE8BFF4F9AA03B15884C788561C3A7C8F66F621B47268CAC773BBF1D65469625A6858328FC35359BF66288BBE39CD865F2F535854CCD70B7A33778EABDC5A532676A07D3B6932887B376B22C23EC1D8A811E9E979686AAACAE28B0F1FBD8F442261E9E2BEB263F3FE9FBCD6A851499D50691C6249F849E9354AB3E06B6FA2A2D3F13FFB363A0A44ABA2F9CAD8A1AA2AC2DAAAB19CC7D9C25C8F2E9D2DB979EB6997D1D2F695B6BF32EFA13274EE64C1D64DA3983065BF4CB88354581F997E92F8DB49F45FDE5D61829FD3B4B6D8BD66C3A333916427E6D0C8449B16036DE562A68DDA34E1ED80F1C4DF4E24E5611AEA3AEA587635950B0519B0AA27261D8CCAAC5F82CBCCF6B8BCFB543C8CDA3198AE739D89BF95849E952ECDFA5A91119345EC356949BD9E5FBBD1F9FDDC0AD7A81212B8B4E63AA7175E90ABBF5DC2F265039838FEE5C44D4C6C060B17F9B07D67208A9CF6E6CDCC59B1674583ABFB9C109DC0D1BF8E32EDCB691526BBD534A949A964A665626957F50BA3EA7E0F2989292C9AB2880BFF2ABEFBD9B2654BBCBCBC68D952689E535FF9F1C71FCB94D8FBF0C30F118BABB70CA722D2D2D2E45E1B1A2ACEE9A94E94F6972D1289CAC4E9DCBA754B59A7AF15060D1A54E6EAFAC48913ECDAB5AB962CAA3AA3478FC6CFCF4F61366F42740233FBCEE4A74F7E223D25BDECC155A44DE736ECB8BEA3DC6E69FB0FDEC5D1793D0B17F9C83C97B5CDDEBFC772CEE72D162DEC83582C62C6AC23B246361111D23F68CFF17BD9F0EB6566BFD785B0E00F5930BFA7828602F2096DA626D24E5879798568A83F1597F1F1996868A8D2CCF6A9A75BFFFFC79688D7ECEC0244221559EDE0D26B3CCB89FF1EB0EE974B2C5AD80767A7B23543CB9BAF8C1D6A6A62850D5C54542023E3E9EFAFB47DA5ED7FDE7BA80AA33DDAB063CB188575952FFD7C9D2DBDF79116AEF8B3AC6BA143FB49AD71FDA823ED26B4529884880A98B437A295470B9AF7B79613D4006DDF709095C32B9752DFF9E69D4D719EEE88DD6B3688544534B6D6A5D528691CB8AE79238CDB2AB89DF902FF377253F2D833FA08273F3DA750507FB7B43F9F7EE4AEE0C8CA919353C0B72BCED1A6C33AB6ED502CA8FB8CEAC3CEEB3BEBBCA07E12F784AF267D45D89DB04A1F73F1DF8BFCFAD5AF448545BDF01AD5C1F773BEE79705BF3C773F45F655D77B282E2EE6E896A38C6B3FAE5C413D76EC58AE5EBD2A08EA7ACCC58B17D9B871A3DC98BEBE3E6FBDF59652CE5FFAFFAC32CA382BF57279E4C89172AF434343E53CA00D914F3FFDB4CCD8871F7E58AF9234DBB66D4B40400043860C2933575458C4CE1F77E2D1C283BF7FFE9B82FC976B38A167A0C7AA83AB98FFCB7C8571D6B9B985AC58759ED6EDD7F1D7D61BB5DE35504545856E6ED67CF5652FAE5F9A89B393195BB74B135475FF2FA8664C77E151C8472CF9BA2F4D0CA58966813763C9C878DA72BABC385B914885E267E60C0C34C9CB2B948B492E11E04F9E48933DB3B30BE4BCBCA5D72821E4C113A64C3B4837376B3EFBB8AC58AA68BE3276A8AB9715D59151695CB91A4D2797A7892DA5ED2B6D7F45EFE145787D745B4E7A4D9125533E4BF4A558FEE8FC373736DFADB664BFFA40C8D187FCDE6967993AD420BD085ABE6C00F33EE9FE426B4B2412F6ECBB83A3F306167D735AE105B1B6AE360BFF58C8AA83ABD0D57FF958ED9A26FA6134FFEDFA8FE0EBC1953EA6A8507A27A7E41FFD8BAC511DC43C8E41535BC105612914D9571DEFE1DEB57B4CEE349925D396F024AE6C08A8A6A6261B366C60CF9E3D357EAB5EA0E6C8C9C961EAD4A965DA82CF9D3BB7DC16EBD5495151110101017263E525A056274A15D5A5CBA74824126EDCB8A14C1394CEE4C993CB5C4C242424F0D1471FD592452F868989095E5E5EFCF5D75F7225864A484F4EE7C78F7EC4B38D27BE877D5FEA5C2A2A2ABCFEDEEBECBCB19376AEED14EE131B97C13BEF1DA66BF7DFF1F651AEA7A784DF375D65DCA47DF8F98713F6309933671F91929223F3D47672B1A099AD01C7FF7D80EFF9C7C4C56772EB761C2B569DC7BDF7260E1C7ADA41B23CBDA8AE2E96D56D06E8E12E6D2CB4F4DBB3E4E717919A96CBA1C3D2B6D1A7CF4A1BE7E4E615CAC523975E03202A3A9D611E3B484DCBC5734C5B8EFF1B42D0BD44D97ECF9BAF8C1D2A2AE073E6219BB75CE7FA8D18FE39728FC1C3B7A3A9A1CACC199DCBB5AFB4FDE5BD8797A1BBBB0D7E67A7CBE2BF9F2527399763334EF167975D849F8BAAB673D64512EE24B1E3B503EC197544A1875E4B4B8D6D9BC728BCE8AA0C019722E9D96F3313DFDC4F788462078A5377277605EEC2E3ED9A8FB1AC2EDA776BCF9994330C9D32B4D2C794381C54D5545F788DEAA0B8A8B8C2B8FE1214D9F732EF213B239B0D5F6E60AAEB54EEDFB8AF701F0707072E5CB8206B3622507F59B060012121217263CECECE2C58B04029E7BF79F3A65C274C005757D772F6AE3E945AAB4CD11BBA76ED1A7DFAF451A6194A67FDFAF59C3E7D5AEE17BC63C70E060E1CC8A449936AD1B2AA3375EA54DCDDDD193B76AC5CC9C012A2C2A2F8C4E313DC87B8F3C94F9F606D6FAD6095CA61DDD29A3FCFFFC9818D07D8B86823694FD2CAEC7323309641C3B7E3D8D6840F667765C2B8F64A2BC1A7A62AE6D0E17BEC3F785736A6A9A9CA8FABA46D8D5555451C3E309E69EFFC83C7EBBBE4F6993EB523E3DF905E3088C52AE5364969D9B2895C0C79FF7E768C1BDB8E35EB0358FFEB658A8A8AB1B5D1C7C65A9FADDB0379F7ED4EA8A98A69DA54BBDC3524120983866DE3E123697DF08F3E7D5A3FD4A5A33901E7DFA970FE92DF8C4AD9A1AE262626368319B39E26EED958EB73EC9F8932AFB622FB4ADBAF689FEAC0AEB921FEBE6FF3C147C7D9B9AB6C285A5C6002DBFAEEC76EA02DEEF33A61D3EBE593F3EA0AE99119F87E13C0CD6D41488A145FD139B63561E7D63165EA9257864B97A3F8E6DBB3FC77AAFCCA2ADABADACCFE76369EB33D6B2CC638E6510CBE477CF1DEE74DE3268DF9F1B07CD390DCEC5C12A213D06FA28F9EA1BC57B420BF00553555545454C8CFCBE7F1BDC71859186160240D792AAF195671513109D109E834D641A7F1D3CF798997B744902A5A23253185984731189A18A2A9AD495E4E1E996999A8A8A860E768F7DCF9CAD8219148643FEF27714FC84ACFC2AAA595C258D3D2F655E63D94263B239B3DEBF7B063F50E85DFE1206DAAF2E1871FB274E9D2329D7D05EA1FDEDEDE65CAF26A6868B06DDBB61A2FA35782BFBF7F993165148950915454DFA906B0B5B5253C3C5CF67ADCB871F52AC6F84559BB76AD5CA72390DEE63A73E68C52AE9EAA9BFCFC7C7EFCF147962D5BA6B05B26805855CCA0098398BE60FA4B896B80F49474FE58F207FB7ED957A621C0B318356DC4ECF7BA306B6697324D566A82E89874CE9C7D4462523626C68D18F85A0B59884709128984DB77E279F828059D46EA74ED62292B4B07B067DF1D3AB43755E8352D39BEF43FBC2B57A3B975271E2B4B3DFAF66E4E4C6C06D7AEC7306A646B6262334849C9911343A5D758B2EC0C002DEC9A6060A0899AAA98B047C9585B3566C820FBE7CE57C68E27C9D9A8AA8A888DCD24EC6132FA8D35E9D2D94261B2E1B3F629B2BFBC9F437571E05010B3DE3FC693E4EC72F7B1E8624AB7CF3AE130C20E1571DD6DE25411D98939F8AFBACAD55F6E2A8C9B06E91D8639EF7565F9B20155BA402D2E9670CA278C35EB0238E95D7199C2EE43BB33FF97F9985A9B56C9FECA12191AC9D2E94BB97EEE3A005A8DB4C8CDCEC53FDB1F754D6958D69F4BFF64CB8A2DE4664B43989C7B38B36CE7324CAC4C0098D2650AFD5FEF4F6141215BBFDF4A567A164D4C9B702CFC18974E5DE2FB39DFB33F78BFAC8D39C0DF3FFDCDE6EF36939A948A4824C275A02B4BB62EC1C0C8806DABB6B176DE5A4EC69FC4D0D8103F2FBF326BCC1D3A17FFE365C500C0B9F4737C31EE8B0AE7B575B59F6BC7E44E93A5823C378FA02BD2BB6516CD2D58BA6329EDDD9EE60029B2AF32EFA184CA886990D64EDEB061039D3A752A771F81FAC3A3478FE8D2A54B9910D7EFBEFB8E2FBEF84269768C1B378E3D7BF6C85E6B6A6A92969626D752BD2650BAA87EE38D37D8BB77AFECB59595158F1F3FAED56C6865505C5C4CB76EDDB874E992DCB899991957AE5CC1C2C2A2962C7B3922232379F7DD77CB744B7A169148446F8FDE4CFA7492DC97F68B101516C5AF5FFDCAA93DA7CA64143F8B8E8E3AEFBCE5C2871FB861612EC4E5093C9FB8F84C3E99F72F7BF6DDA9703FFD667A7499ED84D3B4B66834566EEBF717A1B8B098D07F1F736B5B1021C71E5558C3BA4D6B63D6FD34845E3D6D2BBD7ED2936CB66CBBC11F9BAE11F6B06C07B36769EDD29A39CBE7D07540CD76529BE03C8147418F98FCE964864C1E42624C224BA62D61FFBDFD686A6B7278D36196BEBD94B1B3C7D27D5877621EC5F0FB92DFE9EFD99F79EBE60130C47208A949A9A8AAABE239CB13B158CCE6EF3673F0FE41CE1E3ECBDA796B39FDE4B4CCC3BD76DE5AB6ADDA46CFE13D19397D2437CEDF60C7EA1DAC3DB1966E83BAB175E556D6CD5F8777A237FA4DF56502F5D935A2C2A208F40B24ED491A39593984048670FAE069864C1EC237DBBE79EE7C65EC98D2790A41578368DFAD3DAFBFF73A9262097F2DFF8BE484640E871D96C5B48B3DEBA900002000494441542BB2AF32EF21213A81DD6B7773E8F74364A4CADF7E7F16737373962E5DCAD4A9531BFCFFFF5785B4B434DCDCDCB877EF9EDC78E7CE9DB970E102AAAACAB98B5C5C5C8C95951531314F2B89B9BBBBE3E7E757E3E7567AABBAAE5DBBCA89EAC8C848CE9F3F4FAF5EBD946D8A52118944ECDAB58BAE5DBBCA95128C8D8DC5C3C38373E7CED5CBDB5E5656561C3F7E9C2D5BB6F0D5575F1115553606B5B8B898D3074F73FAE069DA746E83E72C4F068E1B28F31855054B3B4BBEFDFB5BA67C36855FBFFA15FFE3FE0A93FC3233F3F969ED45D6FF7A9921835A327D5A47060E6881582C7C790B28C6D444879D5B5FE7CDC94ECC99EB250B7F294DEAA3744E7E7A8EB34B02B01FDA8C96439B61F79AADE26A20B5447E66018F7C227870FC1121C71E92155FBE071E40575783AFBEECC5FBB3BA56AA6C6171B184D3671EB279EB0D0E1F0D9695412C8FE66D9AF3CEA277E8EFD9BFC64B5A151715F3E0E603DC87B83366E6184CAC4CB06D65CBB1F063B2F94DCB363174CA50E6AD9F47466A0657CF5C25352915CBE64F437C0A0BA52DE0FF3CFF27F61DEC09F40B64CB8A2DE8E8EB909D21FD79967886436F87B2FD87ED0C1C3F906FFFFE1680E404E90546B3D6D20E8025A1136AEAD2DBDFA5D700E9F75B49A9BBDCEC5CDE68F706360E36CCFF657EA5E62B63878A48859EC37BF2C33F3FC8C46CE77E9DF168E1C1FE5FF733ED8B69E5DA57D17B08BD1DCA8ED53BF86FD77F1526ACEBE8E8F0D9679FF1C9279FD0A851C5A12302F587A2A222264C985046503769D284BD7BF72A4D50039C3C79524E508354542B03A58BEA51A346F1E9A79FCA09A19D3B773678510DD282E7070F1EA47FFFFEE4E53DADFC70F5EA55468C18C1912347EAA5B00669ACF5C48913D9B56B172B56AC28F3875542D09520964C5BC29ACFD6E039CB13CFD99E181A57BD6DA883B3033F1FFB9907B71EB075E5564EED3D25FBC27F968282220E1F0DE6F0D1602CCCF57873B213932674C0BE65CD97D611A89FBCD6BF0537AFCEE2978D57F8E5B7CBE526D8E567E47367F77DEEECBE8F8A58058B2EA658F7B0C0D2D50CCBAE663432D156785C4D90979647D4A538A2026289F48F21C22F9AA2BCE72776EA37D664E68CCE7C30C71563A3E70B9CC7E1A96CDF7993ADDB6F54AAD3693BD7764C9D3F951EC37B28CD1B29128BE833AA0FA70F9E66A8F5506C5BD932F9D3C98C9C2E4D188F0C8D24E6710CF37F99CFAF5FFDCADEF57B292A2CE2DDC5EF32FEC3F1726B0D7B7318F61DA4E14E4EDD9D38117D02436343B2D2B350D75497C516FB1EF645229130FBDBD9B2630BF2A4C2B2A48A515EAEF43BBFC499507A8DD2ACFF623D095109FC75F12FB475CA7E9614CD57C60EB1AA18536B53B9DF87B185318E5D1D09097C9A58A6C8BED2EF212335035535553E18F201577CAE54D82D54434383E9D3A7F3F5D75F63626252EE7E02F58FC2C242DE7AEBAD323D38C462317FFFFDB7C292BC35C9EFBFFF5E66EC8D37DE50CAB9952EAA9B356B56C60DBF77EF5ED6AC59536F056555E8DEBD3BBFFFFE3B6FBEF9A6DCB8B7B73783060DE2F8F1E3F5F6EA5D4D4D8D2953A6307EFC78D6AE5DCB92254BCA64DF96909A94CA1FDFFCC1D6EFB73260EC0046BE3512E79ECE55F662B56CDF92653B97316BD92CB6FFB09D237F1D212F274FE1BED131E97CB7F21CDFAD3C876B572B264D68CF1B9E8E18E837FCCF9D40D5D0D252E3930FBB31778E2B878F06B3764300FE1722CADD5F522421EA622C511763656306CD1B63D1C514F3CEA6987736C1CCD91855AD97FFCA2D2E2826FE76123197E388BE1247CC9538928253AA5402D0CC54970FE6B8F2EEDB9DD0D3AB3884253D3D8F038782D8FEF74DCEFB3D2EB752CDB3B80D7463EAFCA9B8F476A9B44DD5C9CAFD2BB975E116977D2EE3BDCF9BA56F2F25332D93891F4F24365CFA3BFA6CCC67A86BA83376CE58267C38416177D86713FC009A984A2FC6F3F3F2E562889FC43D415D431DF3664F4B45EAE84B8F2D11AFB9D9B98844229997B7F41ACFE27FDC9FDD6B773367F91C5A756C55E9F9CAD8A1AAA6AA30744E454585AC8CA7F9318AEC2B790FE9C9E9FCF3E73F1CD97C84C282422E7B5F56F83E000C0C0C98356B1673E6CCC1D4B46662E8056A8FFCFC7C264C98C0810307CACC2D5BB68CD75E7B4DA9F6C4C5C571ECD831B9B1B66DDBD2B16347A59C5FE9A21A60CA942972A23A2D2D8DE3C78F3366CC98DA3047E94C993285E0E060962F5F2E377EEEDC393C3C3CEAB5C71AA4E2FA934F3EE1CD37DF64D3A64DFCF6DB6F3C7EFC58E1BEF9B9F9786DF3C26B9B179676968C7E773423DF1A59E5F6E7E6CDCCF97CC3E7BCF3F53BEC5AB38B7DBFEC23332DB3DCFD032E45127029924FE6FDC7A0D75A306E6C3B860DB1474B4B3999C902F5035555116346B561CCA83604DD4BE4AFADD7D9F1F72D85ADB54B93F2308D948769DCD92D2D1F265215A16BA1839E850EBAE68DD031D74155B312A11605C564C665931E9941466C26E9519995F242974645057AF56CC6CC773A317278AB0AC33CF2F20AF9F76428BBF7DEE6D8F110B9D6EEE521128BE837A61F53E74FC5C1D9A1CAF655272A2A2A7470EF4007F70E4C5F309D295DA67074CB51267E3C5116CE30E6DD31CCFC66A65C78C3FD1BF7B16A61251B2BBF7EBC484E98EA1AE8929F974F466A862C26B9A9A934F138F5492A7A867AE466E7CA85BC955EA384889008BE9AF4151DDC3B3065DE942ACD57C60E3575B532E78D8F8CE7EEE5BB4CFAE46935AAD2F6151717137E3F1C15151586D90C7B6E4F024D4D4DE6CC99C3975F7E8981814185FB0AD44FB2B2B218356A14A74E9D2A33376AD4283EFFFC73A5DBF4E79F7F525020FFD99C3A75AAD2CE5F2BA27AECD8B1CC9D3B979C9C1CD9D8F6EDDB5F19510DD22BB8B8B838FEFAEB2FB9716F6F6F860F1FCEC18307EB7DE1FBA64D9BF2F9E79FF3D9679F71E4C81156AF5E5D61A2405458146BE7ADE5B7AF7F63C0D8010C9D3C944E7D3A21AA421CB4A18921B3BF9BCDD4F953F96FF77F786DF3E2D6855BE5FE73CCCB2B948587E8EA6A30629803A33DDAD0AF4F73852DBB055E5DDAB43662D58A817CFB4D7F8E1DBFCF9E7D7738F1DF03B2B32BD7F0A8B8B098B4F0F4723B36D614AD5B193172782B268E6F4FEB56E5B748CFCE2EC0F7FC630EFE13C4A17FEEC935F6A908F366E60C9D3C94616F0EC3A279ED275C1FDC7890CB3E9779E3FD3730323722FA6134E9C9E932AF73DBCE6D316F668E9F971F9DFA76A26DE7B63C897F82FF717FFE58F207F37F9DCF886923A48B95E395575357A330FF691C79C79E1DD9C426FE58F207EFAF7C9FDCEC5C4E1F3C0DC0159F2B58B7B4263F375FE6A556B40640425402EF0F7E9F8CD40C068C1D809F971F96769658B5B0424D5DEDB9F395B143454585CBDE9739BCE930F64EF6C445C4B1E1CB0DA86BAAE339CBB38C7D318F6338B6E51847FE3A425C441C4099861ECF626C6CCCDB6FBFCDCC9933B1B2B2AAE46F4DA0BEF1E4C913468C18C1850B653B620E1932849D3B77D678FE44698A8B8BD9B46993DC98582C66C284094AB341E9D53F4A183F7E3CBB77EF96BD168BC5DCBA758B366DEA767BDAEA442291306BD62C7EFBEDB732732D5BB6E49F7FFE69703F8F4B972EF1C71F7FB077EFDE7243439EA5A95953068E1FC8886923CAD461AD2C91A1911CDF7E9C635B8FC96EFD3E0F757531DDDD6D1838A0058307B6A04DEBAAD7EA1568F86465E573FCDF071C3814C4E9330F494EC979FE41358CAAAA882E9D2D193AD81E8F11AD70B0575CAA11E041E813FE3D19CA897F1F70CEEF31B9E594D92B8DAEBE2E7DC7F465E894A138F7A87AD8564D7264F31196CD584671D1532FABBAA63ACB772FA7D74869EECEC3BB0F593C7531415783E4F6F198EEC187AB3F445D439DC1168319327908EFAF78BFCC39F6FFBA9F5D6B767120F8E92DEF051316F0DFAEFF108945141715636E6B8E4422A1896913B6046CE1DB19DF72F5CC550E3D38A4700D894482671B4F1E073F2E73BE369DDAB0F5F2D60AE7B75DD956293B3E1AFE11977D2ECB85C999D998B17CCF721CBB3A02909D99CDF773BEC77B9F37F9B9F915565A2AA15BB76ECC9E3D9B3163C6A0A151F7ABE208BC386161610C1B368CE0E0B29D34478E1CC99E3D7B6AE53370E8D021468F1E2D373668D0A00AAB935537B526AAFFFDF75F060F1E2C373666CC18F6EFDF5F1BE6D41A15096B5D5D5DB66CD952E643D210C8CCCCE4EFBFFF66C58A153C7AF4A852C7B4EDD296E15387D3774CDF174A6E2C2E2EE6EAE9AB1CFCFD2067FF395B61BDEBD29818EBD0A3BB0DFDFA3667403FBB6A6F442250FF292E96702330169F330F39E3FB885BB7E2894F283F04A9BAD0D252C3C1BE293DFFFFF9ECD9DD46AE0EFAB36466E673E97214C78EDFE7D8F1101E3D565CE14411EA9AEA74EDDF95FE9EFDE9F77ABF4AB5BAAE2D12A213B87AFA2A298929189A18D26D50B732216512898407B71E10FD301A6D1D6DDAB9B6930B0539B9FB24F64EF6D8B6B255780E4575D3EF5EBECB835B0F30B132A14BBF2E24C62412743588BEA3FB921893487A72BA9C73A0F41A1B176D04C0AAA5157A067AA8AAA912151685A9B529DD87767FEE7C65EC487B928658554C526C1291A191E8EAEBCAC474C0C9004EEC3C81EF615F59FDEE8A1089448C1D3B9679F3E6E1ECECFCDCFD05EA3FFEFEFE8C1A354AAE8A590913274E64CB962D4AADF4F12C9D3B77E6EAD5AB72637BF7EEC5D3D3B39C23AA9F5A13D5128904171717B936E52A2A2A040404D0A54B97DA30A9D6282E2EE6EDB7DF2E130A02D29FC9A2458BF8FAEBAFEB9437A8BA28282860DBB66DAC5EBDBADC8A21A511894574EADD89FE9EFDE93EAC3BC61655F722274427E0B5CD0BDFC3BE045D09AA9427E6595AB668827B376BBA74B6C0B58B256DDB180BE5FA04CA90919147D8C36442C39279F82885D8D80CE2E233898DCB24212193C4C46CB2B2F3CB6DC1AEA7A781B6961A46468DB030D7C3D8B811E666BA585AEAD1D2AE092D5B36C1CA524FE177834422E141683257AF4573F55A0C0197A3B8763D86A2A2CA7FD6D535D4711DE84A7FCFFEF41ED95B4E740AD47F0AF20BB87DF136DEFBBD39B5E714298995BBC8D2D0D060CC98312C58B0A0C1DD4D15289F2D5BB6F0EEBBEF929F9F5F66EEFDF7DF67CD9A35B5A65314396ADBB66DCBAD5BB7945A07BDD6443580979717C3860D931B1B3C787099B22CAF02C5C5C52C58B080952B572A8CFF1D3870209B376FC6DCDC5CC1D10D830B172EB079F366F6EDDB477A7AE5E34E5BB66F89DB2037FA8CEA836357C72AFF5127C727E3E7E5C7F963E7B9F8DFC54A79684AD3A8913A2E1DCDE9E16E4DCFEEB6B8B95AA1AD2D243D0A548EC2C2623232F3484FCF435B5B0D2D4DB52AC7F4E7E61672F94A1467CF3DC6FF6204D7AEC5543A2EFA599E15D2BD46F47A6E1B6A81FA455C441CA70F9EE6D2A94B5CF7BD4E4E56E543969C9C9C98366D1A13274EA44913A12CE9AB425E5E1EF3E7CFE7E79F7F2E3327128958BE7C39F3E6CDAB05CB9ED2B3674FCE9F3F2F3776F0E041468D1AA5543B6A555403F4EAD58B73E7CEC98D9D3D7BF695A85BAD88BD7BF7F2D65B6F296CFDADAFAFCFFAF5EB993871622D58A63C727272387AF4283B77EEE4BFFFFE93ABE9FD3C4CAD4DE9F77A3F7A8DE885A3AB63B925ABCA232F278F8BFF5DE4CCA1339C3F769EF4E4174B2A535717D3B99305BD7BDAD2CDCD1A978EE6346D2278F904AA8F94D41CAE5F8FC5FF6204BEE71F73E97254A563A24BA3AEA98EEB6B82906EA83C0E7E8C9F971F3EFB7DB873E94E85F5A44B636363C3F8F1E3993871228E8E8E3568A5405DE4EEDDBB4C9A3489C0C0C032739A9A9AFCF5D75F8C1B37AE162C7BCAC58B17E9D6AD9BDC988B8B0B57AE5C51BAE7BCD645F5993367E8DBB7AFDC98ABAB2BFEFEFEAF6CEBD25BB76EE1E1E1516EACB1A7A7271B376E7C25CA14656565E1E3E3C3891327387AF428D1D1D1953E565D539DF66EEDE9D8AB239D7A77C2B1AB6395BA3816151671EDEC35024E0670E5F415EEDFB85FE5309167B1B1D6A7A3B3191D9DCD71E968469BD6C6585AD4EF0A2F02CA21362E83A0A044AEDD88E1FA8D58AEDF8829B7E3636531B735A753DF4EB80E70C57D88BB20A41B10F191F15C3B7B8D2BA7AF70C9FB12095109953E562C16D3B3674F060F1ECCE0C1830521FD8A22914858BB762D9F7FFEB942C756D3A64DF9E79F7F94D6A9B03C241209FDFBF7E7F4E9D372E3274E9C60D0A0414AB7A7D6453540FFFEFDF1F1F1911B5BBD7A351F7FFC712D5954FB2426263276EC58CE9E3DAB70DEC6C6864D9B36D1AF5F3FE51A568B14171773F6EC5976EEDCC9C18307494D7D7E47B76751D754A79D6B3BBAF6EF4A6F8FDE346FDBBC4AC7A727A773F5EC55AEF85CE1CAE92B0AB3F0AB8A9E9E06F62D9BD2A6B511AD1CA48FED1C4DB0B11612215F45A263D2B9753B9EBB4109DC0F4922E85E22F7EF27BD501847699A9836C1A5B70B9DFB76A673DFCEB276D702F59FDCEC5C024E0670FED879AE9DBD46545854958E178BC5F4EEDD1B4F4F4F468F1E8D9151F9A517051A3E8F1E3DE2CD37DF2C134E5182A3A323478F1E557AA744456CD8B0813973E6C88D956E30A84CEA84A8BE74E9126E6E6E72B7A4B4B4B4080C0CC4DEDEBE162DAB5D8A8B8B59B76E5DB9578A00C3860DE3B7DF7EC3C2A2F6EBC32A93BCBC3C4E9D3AC5DEBD7B3972E408696969555EC3AA8515BD3D7AD3A94F273AB87728D33DED79244427C804F6659FCB55F2063D0F037D2DDAB737A1433B53DAB733A14D6B232C2D1B636AA28348D4F012565F2524120971F1994447A7137C3F895BB7E309BC15C7AD5B71243DC9AEB6F334316D824B2F175C7ABBD0B157479AB56E566D6B0BD42E128984C7C18FB971FE06174E5C20E064C00BE582B8B8B83071E244C68D1B879999590D582A509F282C2C64C3860D2C5CB890CC4CC5958B264F9ECCAFBFFE5A273A3FDFBB778F4E9D3A919DFDF47B532412E1EBEB4BF7EEDD2B38B2E6A813A21A60E6CC996CDCB8516ECCD5D5153F3F3FC4E2E7771D6BC8040505F1E69B6F9629155382BEBE3E8B172F66CE9C39AFE4CFAAB0B0902B57AEE0EBEBCBD9B3673977EE9C5C63A1CA201289B073B4C3B987331DDC3BE0DCC31963CBAA551549884AE0DEB57B725B727C7295D6781E6A6A62CC4C75B0B46C8C95A51E36D6FAD8D919D2A2B9217676864238491D21362E83D05069D58FB087C94444A61111994674743AD131E9E556FB7851B475B469E5D28AB69DDBD2A6731B598313818641614121415783B8E97F9340BF406EFADF2435A96A77EA00ECECECE8DBB72FBD7AF5A24F9F3E0D3AF15DA06AF8F9F9F1DE7BEF71E7CE1D85F3464646FCF1C71F8C1C3952C99629A6A0A000777777AE5CB92237FED1471FF1E38F3FD69255754854A7A7A7E3E8E8486464A4DCF8AB1E065242616121AB57AFE6EBAFBF5658CE06A063C78EFCFAEBAFAF5C49C2D2646565E1E5E5C5BE7DFB387EFCB8DC556C5530B331C3A9BB936C6BD6A65995E3FC9F15DAC1D783B977ED1E4FE29EBC903D95414B4B0DBBE686346F668095A51E26263A585AE8616EA68BB9B92EE6E67AE837AEBBF585EB03E9E97944C7A4131B9B41744C06D131E9C4C56512159DCEA3C729843D4C263353F1DF6875A067A047AB8EAD707076906D36F63655EA3C2A50B7C94ACFE2E6859BDCF4BFC98DF337B87BF9AE5CB396AA606F6F8FA7A7279E9E9E74E8D0A19A2D15A8EFA4A4A4B078F162D6AF5F5F6ECED0800103D8B2654B9DBA089B376F1EAB56AD921B6BDDBA35D7AE5D434B4BAB96ACAA43A21AE0F8F1E30C1D3A546E4C4B4B8BAB57AF0AB530FFCFB56BD778EBADB7B875EB96C279B158CC3BEFBCC3E2C58B31313151B275758FBCBC3C2E5DBAC4993367F0F5F5E5C2850B55AA26F22C7A067AB4726945F336CD69DEB639CDDB34C7BE837D956BF7264427107C3D98FB37EECBB6CA767AAC0E545545181A686150B2E96B6268A845D326DA9899E9626AA28385B954905B58E8D258AFE189F09C9C02525273494DCD2125259794671E5353734949C921253597E4E49CFFCF49E79353722828A85E2F7345185B18CB8967076707CC6DEBCE3F368197272A2C8AD0DBA13CBAF788B03B61D2ED6E985C47C8AAD0B66D5B7AF6EC89BBBB3B3D7AF4C0DADABA9A2D166808E4E7E7F3C71F7FB068D1229E3C51ECE8D1D5D5E5BBEFBE63F6ECD975AA4FC6E9D3A719306080DC45809A9A1A01010174ECD8B1162DAB63A21A60CA94296CDFBE5D6EAC59B3665CBE7C99A64DCB6FB7FB2A515C5CCC8E1D3BF8E4934F484A4A52B84FA3468D9833670E0B162C40575757C916D65D3233333975EA14C78F1FE7F8F1E3C4C4C4BCD47A22B18866AD9BE1D8D59176AEED70ECEA48F336CDABEC354C4F4E27F87A30E121E1448444C81E63C363292A549E88538496961A3A8DD4D1D555475555848E8E06AAAA22E96BB1085D5D0DC46215F47435505151415F5F2AC29F7D545151A1B19E0622910A7A7A1A885FB0B28F442221352D17890459F25ECAFF5B83A7FD7F3C3D3D8FA2A2623232F3292C2C2633339FF48C3C3901FDA2A5E76A02915884A9B529D62DADB1B6B7C6C6DE061B071BEC9DEC5FA873A840DD253D259DBB97EF72E7D21DEE5CBAC3DDCB775F288CE359C46231DDBB7767E4C891787878D0AC99103B2F503EC5C5C51C3870802FBEF882B0B0B072F71B366C181B366CA8731765E1E1E174E9D2858404F91CA66FBFFD962FBFFCB296AC7A4A9D13D5C9C9C9B46DDB96B8B838B9F11E3D7AE0EDED8DBA7AD5EA0E376492939359B264091B366CA0A848B1F032373767D1A2454C9F3EFD958CB77E1E212121F8FBFB73FEFC79FCFDFD09090979E935B575B469DDA935ED5CDBD1DAA5350ECE0E5834B778A12BFD82FC02621EC510F12082C80791D2C7D048224323898B887B616F9680F2313431C4D6C1166B7B6BAC5B5A63D5D20A1B071B2CED2CAB5C4F5DA0EE939D914DE8ED50EE07DE9789E88890882AD5885684B6B6365DBB76A5478F1EB8BBBBE3E6E626384E049E4B89985EB8706185FFE73A74E8C0BA75EBE8D1A38712ADAB1C999999B8BBBB97B953EFE6E6C6F9F3E7EB84C6A973A21AE0F0E1C38C1A35AACC97CFBBEFBECB6FBFFD564B56D55D2E5FBECC9C3973CA04EC3F4BFBF6ED59BE7C3943860C51A265F58FF8F87899C8BE70E102376EDCA0A0A0E0A5D7D5D6D5A645BB16D877B0976E4EF6D839DAA1D5E8C563BF0AF20B488C4E24213A81F8C878126312898F8C27213A81C4984412A313498A4DA220FFE5ED17281F1515150C4D0C313237C2D8C218634B639A9A35C5D4DA142373238C2C8C30B536455B4768FED350890D8FE5C1CD073CB8F580909B2184048610FD30FAA5EADA97606262829B9B9B4C4477ECD8113535A15BAB40E59048241C3A7488458B16959B8408606060C037DF7CC37BEFBD5727C469698A8B8BF1F0F0E0E8D1A372E30606065CB972053B3BBB5AB24C9E3A29AA01962D5BC6575F7D55667CEDDAB5BCFFFEFBB56051DDA6B8B898EDDBB7B370E142A2A2CAAF51EAECECCCE79F7FCEEBAFBF5E27FF70EA1A3939395CBB768D8080002E5CB840404000B1B1D513FF2C1289B0B4B3C4B6B52DB60EB6D838486FFBDBB6B245BF69F5D5A94E4E482629368984A804E963740249314924C6480579526C12C9F1C92FED416B88181A1B62686288B1A5314D4C9A6064614453D3A6D2D7A64D30B134C1D0C4105535D5DA3655A086C9CFCB27F241A42C342BE24104E1F7C37914F488F49417EBBC5A1A5555559C9C9C707575C5D5D5153737379A37AF5A3D7D010180A2A222F6EEDDCB77DF7D57A198D6D0D0E0BDF7DE63C18205753AC4565162A24824E2D8B1630C1E3CB896AC2A4B9D15D5128984C99327B373E74EB971555555BCBCBC78EDB5D76AC9B2BA4D4E4E0E6BD7AE65F9F2E515D66E6ED6AC1973E7CE65C68C19B59A295B1F898888E0C2850B5CB97285C0C0406EDCB8414ACACB75B72B8D9EA11EB60EB6D8B6920F17B06E698D869646B59E0BA425BBD253D2C948C9907B2C799E912A7D9D999A291D4BCD20232583CCB44C0A0B0AC9CEACBEFACAD589A6B626EA1AEA34D26B84AE812EBAFABAE819E8A1ABAF8B8EBE0E7A067AD2D706BA728F25CFD5D4058FE0AB44715131B1E1B1B270AB67731CE2C2E3AAC5F35C82582CA665CB96383939D1B163475C5D5D717171415B5BB8A321F0E2141414B06BD72E962F5F4E707070B9FB894422C68C19C38A152BEAFC85DBD6AD5B993A756A99F155AB56F1E9A79F2ADFA00AA8B3A21A20373797BE7DFB72F1E245B9715D5D5D4E9E3C89ABAB6B2D5956F779F2E409AB56ADE2E79F7FAEB0DA85B1B131EFBDF71E73E7CE7D25DA9ED714E1E1E1040606CA4476606020E1E1E1D57E1E1515154CAC4CE444B6B5BD3516CD2D30B7354753BBF62A759488EBA2C222B233B2292E2E26334DDA402023250380CCF4CC6A8903D7D5D7454545059DC63AA8885468A4DB08B1AA182D1D2D54D554D16AA4250862018514151691109D40F4C368B95C85889008A2C2A26A245C4A4B4B0B4747479C9D9D717272C2D9D99976EDDAD589061A020D83FCFC7C76EFDECDD2A54B090D0DAD70DFFEFDFBB36AD52A9C9C9C9464DD8BE3E5E5C5E8D1A3CB94129E30614219A76B5DA04E8B6A80A4A4245C5D5DCB64A9366EDC181F1F1F5C5C5C6AC9B2FA414848085F7EF925870E1DAAD0CBA2A7A7C7A4499378EFBDF770747454A2850D979494146EDEBCC9CD9B37B975EB16818181DCBD7BF7854BFA5506FDA6FA985A9BCA36331B33B9D74D4C9BD4D8B90504EA0259E959C447C613F33886B88838D9161B1E4B6C782C49B149359AE06B636343FBF6ED69D7AE1D1D3A74A05DBB76B46CD9125555214448A0FA494C4CE4B7DF7EE3975F7E2953E0A134BD7AF5E2BBEFBEA35BB76E4AB2EEE5F8F7DF7F19356A14B9B9F2DD429D9C9CF0F7F7AF937775EABCA8066947C16EDDBA95096768DAB42967CF9EA56DDBB6B56459FDE1EEDDBBAC5CB9925DBB7651585871393117171766CC98C1E4C99385D0906AA6B0B090E0E0606EDDBAC5CD9B37090E0EE6FEFDFB3C7CF8B05A12229F87BA863A265626985A9B62626582998D19265626B231331BB35AF5760B0854446141A12C2137E6710CF191F1B22D363C96F8C87832523394628B999919AD5AB5C2C1C18176EDDAD1AE5D3BDAB76F4FE3C68D95727E81579B909010366CD8C09F7FFEF9DC0667EEEEEE7CFEF9E70C1F3E5C49D6BD3CE509EA264D9A70E5CA953A5B3AB25E886A90B6D01C3C7870997EF4C6C6C6F8FAFAD2AA55AB5AB2AC7EF1E8D1237EFEF967366EDCF85C8FA981810193274FE6C30F3FACB31FE086426161218F1E3D22242484FBF7EF13121222DBA2A3A3956A8B9EA11EC616C6985A9B626C69ACF0B920BC05AA1B8944C293B82752911C2515CA711171D28A365109C445C4911457B35EE6D2686A6A626F6F8FBDBD3D0E0E0E3211EDE0E0809E9E9ED2EC101028C1CFCF8F952B57E2E5E5F5DCE4F2FA0D40E075000020004944415428A6A17C41ADA7A787B7B7379D3B77AE25CB9E4FBD11D550BEB0B6B2B2C2D7D757107E55203C3C9C952B57B279F3E6E78A6B9148C490214398356B1603070EAC72AB6E8197232B2B8B070F1EC86D2121213C78F080C4C4C45AB149CF508FA6A64D313036A0A959530C8C0C303436A4A95953F48DF465CF0D8C0C6A24B152A0FE909A944A724232A989A9D24A3309C9A424A690149B444A420A29892924C624F224EE49AD947FD4D2D2A2458B16725BCB962D69D1A20596969675AA939CC0AB496262223B77EE64E3C68D15261F96D0B3674F162F5E4C9F3E7D94605DF5529EA0D6D6D6E6C48913F4ECD9B3962CAB1CF54A5403F8FAFA3274E850B2B2B2E4C69B356BC6F1E3C7058F751589898961FDFAF56CDCB891E4E4E4E7EE6F6767C7CC993379EBADB7303414BABDD536A9A9A93C78F080D0D050C2C2C2080D0D953D7F5E7C9DB2D0D4D644575FF769858DFF3F7FB612C7B3AF75F47564CF1BE909895CB54D5E4E9E5CF59792E719A919B2D7B2ED994A3125F3D55931E3457956389708E6924D10CE0275918282024E9C38C15F7FFD859797D773C303C562311E1E1E7CF0C107755E7896C7DEBD7B9932654A19479FA6A626C78E1DA35FBF7EB56459E5A977A21AA41EEB2143869091211F3BA7ABABCB9E3D7BEA54CDC2FA425E5E1E7BF6ECE1FBEFBFE7EEDDBBCFDD5F4343831123463077EE5CDCDDDD9560A14055C9CCCC9413DA8F1F3F26323292F0F070222222484FAF9EDABA358948249295BE7B567C6B6869A0A9A5894E631DD434D4D0D6D1464B470B750D75741AEBA0AEA98EA696269A8D34655540D4D4D564CD76545454D0D1D7919DA7A47A487D2233EDA960CDCDCEA5204FFA4FB77489C38C940C8A8A8AC84ACF22373B97FCBC7C325232C8CFCB27373B97ACF42C0AF20BC84ACF223B335B268C4B44727E5EBEC2F3D725C46231666666D8D8D860656585B5B5B5209C05EA25F7EEDD63EBD6AD6CD9B285F8F8F8E7EEDFB87163DE7CF34D3EFAE8236C6D6D6BDEC01A62CD9A357CFCF1C7652EC2D5D4D43878F020C3860DAB25CBAA46BD14D550BEB056555565CD9A35CC9A35AB962CABDF4824124E9C38C14F3FFD848F8F4FA51A8274E9D285A953A7327AF4684C4C4C9460A540759096962613D9919191444444101919497C7C3C717171242626929898485151516D9BAA544A043980482C92F396EB34D691853F696869A0AE296D2F2E168BE5F66BA4D7A84C73A59CAC1C59784369E19B999A29FB5B7B76BF82BC0272B3A5B7414B84F1AB46A3468D303131C1C4C4046363632C2C2CB0B2B2C2CACA0A1B1B1BACADAD31373717AA6B08D45BA2A2A23870E0003B76ECE0EAD5AB953AA643870ECC993387891327D6EB8202128984F9F3E7F3FDF7DF9799138BC5ECDCB99337DE78A3162C7B31EAADA8063877EE1C23478E243535B5CCDCBC79F358BE7CB910FFFB12DCBE7D9BF5EBD7B367CF9E0A1BC99420168BE9D9B3279E9E9E82C06E204824121213134948482021214126B6131212888D8D2DF3BC741C9C8080228C8C8C649B999999ECB9A9A92926262672CFEB62D92C018197A54448EFDBB78F8B172F562A4C4A5353130F0F0F66CE9C49AF5EBD946065CD929B9BCBE4C993D9BF7F7F9939757575B66EDDCAB871E36AC1B217A75E8B6A80070F1E3074E8501E3C7850666ED4A851ECD8B143F8527E49727373397AF428DBB66DE3C4891395F25C8A4422DCDCDCF0F4F464ECD8B198999929C15281DA262D2D4D26BC9FF578272525C979BF4BC604EA378D1A35C2C0C0007D7D7D0C0C0C64DBB3AF9B346982B1B1B14C2C1B1919095E658157921711D2006DDAB461CA94294C9F3EBD4EB712AF0A29292978787870EEDCB932730606061C3870A05E265AD67B510D101F1FCFC89123B974E95299B98E1D3BB277EF5EECECEC6AC1B286477878385BB76E65EBD6AD3C7CF8B052C788C5627AF4E88187870723478EACD7715F02D5476161A14C5C272626929C9C4C5E5E1E595959A4A7A793979747464606595959E4E6E6929696464E4E0EB9B9B9A4A6A6929F9F4F666626595959E4E5E529BC6325A0182D2D2D343535D1D7D747434383468D1AA1A3A343A3468DD0D7D7A771E3C6E8EBEBCBB612A15C7A4E5D5DBDB6DF8A80409D263636967DFBF6B177EF5E2E5CB850A9904A00131313264D9AC4B469D31A5C2F8E7BF7EE317AF46885954CECECECF0F2F2C2C1C1A1162C7B791A84A80669A2DD5B6FBDC5DF7FFF5D664E5757975F7EF985499326D582650D138944C2B973E7D8B2650B070F1EAC52D25B870E1D1839722423468CA063C78E42029140B591979747767636191919E4E7E7CB09F1B4B434F2F3F3C9C8C8203B3B9BBCBC3C525252C8CFCF272B2B0B89442227CC3333336519F725FB280B914824D74444575757E6DD555757A751A346B27D343535D1D2D2A271E3C6A8ABABA3ABAB8BB6B6361A1A1A6544B3868686D09C4440A086494A4A62FFFEFDECD9B38773E7CE55DA23ADA9A9C990214378F3CD37193C78306A6A6A356CA9F23974E810D3A64D531852EAEAEACAE1C387313636AE05CBAA870623AA412AF4962C59C292254B14CE4F9E3C995F7EF9051D1D1D85F3022F465E5E1E274F9E64DFBE7D1C3C78B04AE2C3D8D898810307E2E9E9C9C0810305CF978080808040BD2335359523478EB06FDF3EFEFBEFBF4A77C87D365472E2C4890D26BCA3348585852C5CB890952B572A9CF7F4F464EBD6ADF53AE9121A98A82E61D3A64DCC9A358BFCFCB2A5A05AB56AC5EEDDBBE9D0A1432D58D6F0494B4BE3D0A143ECDAB50B1F1F9F2A558ED0D7D767D0A0410C1F3E9CC183076360605083960A0808080808BC386161619C3C7992E3C78F73F2E449859A43112A2A2AB8BABA327EFC78C68E1DDBE093FAC3C3C3193B762C972F5F2E33A7A2A2C2C2850B59B2644983B86BDD204535C0D5AB5779FDF5D7090F0F2F33A7A1A1C1CA952BF9E0830F1AC42FB1AE121F1FCFBE7DFBD8B3670F172F5EAC92C0565555A5478F1E0C1B368C112346D0A2458B1AB4544040404040A062525353397DFA34A74E9DE2E4C99395CE2B2AC1C9C9094F4F4FC68F1FFFCA7480F6F1F161C2840924242494996BD2A4095BB66CA93735A82B438315D5000909098C1F3F9ED3A74F2B9C1F3E7C387FFEF967BD8EDFA92F3C79F2042F2F2F8E1D3BC6891327CAB49A7F1ECD9B3767D8B0610C1F3E9C5EBD7A35C858330101010181BA43515111818181787B7BE3EDED8DAFAF6FA5C33A409AA4EFEAEACAF0E1C319356A14F6F6F635686DDD22373797458B16F1C30F3F288C29EFDEBD3BBB76EDC2D2D2B216ACAB391AB4A806E91FC5D2A54B59BA74A9C25FAC9191117FFCF10723478EAC05EB5E4D727272F0F6F6E6D8B1631C3D7A94D8D8D82A1DAFA3A383ABAB2BFDFBF7A77FFFFE42B2A38080808040B5F0F0E1439988F6F6F6262525A54AC76B6B6BD3B76F5F860F1F8E8787C72BE9B40B0C0C64DAB4690406069699535151E1FDF7DFE7871F7E6890CEB1062FAA4B3876EC1853A64C29F70F444862AC1D8A8A8AF0F7F7E7C891231C3B768CFBF7EF57790D737373FAF5EB47BF7EFDE8DBB72F5656563560A9808080804043232E2E0E1F1F1FBCBDBD3975EA14D1D1D1555EC3CACA8A2143863072E448FAF6ED8B8686460D585AF7C9CDCD65F1E2C5FCF0C30F0AC33D8D8C8CD8B66D1B83060DAA05EB94C32B23AA419A543066CC186EDEBCA970DECECE8EEDDBB7E3E6E6A664CB044A080D0DE5D8B16378797971EEDCB94A277E3C8BBDBD3D7DFBF6A54F9F3E74EFDE1D7373F31AB05440404040A0BE919E9ECEF9F3E76542FACE9D3B95AE1D5D824824A26BD7AE0C1B368C214386E0E4E45443D6D61F2E5FBECCB469D3080A0A5238DFAF5F3F76ECD881A9A9A9922D532EAF94A80669E8C1A2458BF8E9A79F282C2C2C332F168BF9E28B2FF8FAEBAF1BE4AD89FA447676363E3E3E3291FD221E0400333333BA77EF8EBBBB3B2E2E2E74EDDA55F8DD0A080808BC0264666612101080B7B7377E7E7E5CBE7CB94A71D125346AD4883E7DFA307CF870860F1F2E7409FE3FCFF34E6B6969B17CF972DE7FFF7D4422512D58A85C5E39515DC2B56BD7983E7D7AB95E6B676767D6AD5B87BBBBBB922D135044717131D7AE5DE3C48913F8F8F8101010F0425E6C003D3D3D5C5D5DE9D6AD1BDDBA75C3D5D5155D5DDD6AB6584040404040D9A4A5A571FEFC797C7D7D397BF62C376EDCA852E5A912C46231CECECEF4EBD78F810307D2BD7B77C119538A13274EF0F1C71F2BEC8C08E0E6E6C6962D5B5EA904CD57565483B418F9EAD5AB59BC7831B9B9B90AF719366C18EBD7AFC7C6C646C9D60954445656167E7E7EF8F8F870FAF4696EDCB851E9AE55A5118BC5383A3AD2AD5B37DCDCDC707373134AF809080808D4710A0B0BB977EF1ED7AE5DE3DAB56B040404BCB0880668DDBAB52C37A777EFDE42AF8472B87FFF3E9F7EFA29C78E1D5338AFA6A6C6975F7EC9575F7D85582C56B275B5CB2B2DAA4B080D0D65C68C199C397346E1BCB6B6369F7DF619F3E7CF47535353C9D60954868C8C0C2E5DBA24CBD8BE7EFD7A95E3E49EA571E3C674EEDC19777777BA77EF4EB76EDDD0D6D6AE468B05040404042A4B515111C1C1C132017DEDDA35020303ABD4C1B734A6A6A6F4E8D183FEFDFB3368D020ACADADABD1E286477272324B962CE1975F7E51183E0BD0BE7D7BB66EDDFACAC6990BA2FAFF141717F3EBAFBFF2C5175F909191A1709FE6CD9BB37AF56A3C3C3C946C9D4055898989E1CC9933F8FAFAE2EBEB4B4848C84BADA7A6A6869393136E6E6E74EAD4096767675AB56A85AAAA6A35592C2020202000520F74505010D7AF5FE7FAF5EB32019D9D9DFD52EB5A5858D0A74F1F7AF5EA45EFDEBD853B9295243F3F9F75EBD6B16CD93252535315EEA3A6A6C6C2850BF9F2CB2F5FE9FF8B82A82E457474349F7EFA29BB77EF2E779F010306F0F3CF3FD3A64D1B255A26F032C4C7C773EEDC39FCFCFCF0F7F77F694F3648BF445AB66C898B8B8B6CEBD8B1A3E0D116101010A824050505848484C879A06FDCB8F1D2021AE43DD1EEEEEEB46DDBB61A2C7EB53874E810F3E6CD233434B4DC7DFAF5EBC7DAB56B054D8420AACBE5DCB973CC993387DBB76F2B9C1789448C193386EFBFFF1E5B5B5BE51A27F0D2C4C4C470F6EC597C7D7DF1F3F3233838F88563B29F4555559556AD5AE1ECEC8CB3B3334E4E4E383B3BA3AFAF5F0D560B080808D45F323333B97DFB36D7AF5FE7C68D1B5CBF7E9D3B77EEBC50350E45346BD60C7777777AF7EE4DAF5EBD044FF44B101010C0FCF9F3F1F5F52D771F737373962F5FCE942953946859DD4610D515505858C8860D1B58B468116969690AF751575767E6CC992C5EBC58486AA8C764646470F3E64DFCFDFDF1F3F323202080A4A4A46A5BDFCCCC0C171717DAB66D4B9B366D707171A14D9B3642274801018106494C4C0C414141DCBD7B57E681AE2EE705484BDC393939E1E2E242F7EEDDE9D9B327262626D5B2F6AB4C7070305F7FFD35FBF7EF2FF76EAE9A9A1AEFBDF71ECB962D132A67954210D595E0C993277CF3CD37AC5FBFBEDC2F040303033EFFFC733EF8E003B4B4B4946CA14075239148B87FFF3E01010104040470F1E245EEDEBDFBC259E58A3030309079B34BB656AD5A09659B040404EA0DF9F9F904050571F3E64DD916181848727272B59EC7DEDE1E5757575C5D5D717373C3D1D1F1958EDDAD6EA2A2A258BA74299B376F2E370911A4A11EEBD6ADA375EBD64AB4AEFE2088EA2A70F1E245E6CC99C3F5EBD7CBDDC7CACA8A254B963065CA9457AE944C432723234376DBF2C68D1B04060612141454E1175055515353A3458B16B46EDD9A56AD5AD1A64D1BD97321565B4040A0B6C8C9C9213838987BF7EE71F7EE5D828383B973E70E0F1F3EACD6EF409148448B162D642174CECECEB8B8B8D0A449936A3B87C05352525258BE7C39EBD7AF272727A7DCFD9A376FCE4F3FFDC488112394685DFD4310D555A4B8B898AD5BB7B270E142626262CADDAF6DDBB62C5EBC98D1A347BF125D845E55727373B973E78E9CD8BE7DFB76B524D93C8B8A8A0A36363632A1FDECA3F0CF464040A0BA484F4FE7FEFDFBDCBD7B977BF7EE111414445050108F1F3FAEB6D08D12D4D4D470747494E59E383B3BD3A1430721A44009A4A7A7B37EFD7A7EF8E107525252CADDCFD0D090850B17327BF66CD4D5D5956861FD4410D52F48767636EBD6ADE3DB6FBF2DB7041F48AFEE3EF8E00366CE9C89868686122D14A82D8A8A8AB87FFF3E818181DCB973471657F8E8D1A36A0D1F29C1D0D090162D5AD0A2450B5AB66C49CB962D65AF05C12D2020509AE4E464424343090B0B233434546E4B4848A89173DAD8D8D0BA756B1C1D1D69D3A60D1D3A74C0D1D151106A4A26292989F5EBD7B376EDDA0AC5B4BABA3A53A74E65D9B26518191929D1C2FA8D20AA5F92E8E868BEF9E61B366DDA54A160B2B6B6E6E38F3FE69D77DE116EE3BFA2E4E6E6CA3C3F77EFDEAD71B10D6505778B162DB0B5B5C5C6C60673737321444940A001525858484C4C0CE1E1E13C7AF4484E34878585557BBCF3B33C2B9E9F7D14BCCFB54B5C5C1C3FFFFC33EBD6ADABF04EAA8A8A0AAFBFFE3A2B56ACA079F3E64AB4B0612088EA6AE2DAB56B7CF2C92715969F0130323262D6AC59CC9D3B57A81622003C15DB25823B383898A0A020424343ABADD49422545555B1B0B0C0CACA0A5B5B5BACADADE5361B1B1B7474746AECFC0202022F464E4E0EE1E1E1848787131111217B7CFCF831E1E1E1C4C4C4546B9C7369C46231B6B6B6B46EDD5A96F32188E7BAC9C3870F59B3660DBFFFFE3BB9B9B915EEDBB76F5F56AD5A45C78E1D95645DC34310D5D5CC81030758B87021C1C1C115EEA7AFAFCFECD9B3993B77AE706B454021050505848585C909EDE0E0608283835FAA356F55303434C4DADA1A4B4B4B4C4D4DB1B0B028F3686C6C2C64E10B085403128984F8F878E2E2E2888E8E2EF3181313434444448D856894465D5D1D0707075AB56A45EBD6AD65791C0E0E0E686A6A2AC506811723303090152B56B07FFFFEE7DE09757272E2DB6FBF65C890214AB2AEE12288EA1AA0B8B8182F2F2F56AC58C1850B172ADC57434383B163C7326FDE3C1C1D1D9564A1407D462291101E1E4E7070300F1E3C90BBB5FBF8F163F2F3F3956A8F4824C2C4C444A1E83637379713DF42B940815791E2E26299588E8989295734C7C7C7D7A887591162B1186B6B6B5AB468819D9D9D2C54AC75EBD6346BD64CB860AE67F8F9F9B172E54ABCBCBC9EDB35D8DDDD9DCF3FFF9C61C386093D13AA094154D730C2075C4099141515111111512686B2E4F179B7FF6A121515158C8D8D313131C1D2D2126363632C2C2C3031319189703333338C8C8C84B013817A414E4E0E494949C4C4C4101F1F2F13C825C239363696D8D858E2E3E36B2C6FA232A8A9A9616B6B2BCBAF28D9ECECEC68D6AC99902C58CF292828E09F7FFE61D5AA555CB972A5C27D45221143860C61C18205B8BABA2AC9C2570741542B89DBB76FB36AD52A76EFDEFDDC38597B7B7B66CD9AC58C193384463202D586442221262686C7FF6BEF5E9F9ABAF33F80BF0512722137E47E514BE52288322A6D05B6B642EB684B6B3B752D3BD3696D3B3E6BFBA0337DD03FA20FDAD9996E6FDB32E3EE7670773A42152D6A3B02EDEA22D40262B1521308910472CF4148E8EF8173CE2F1134080921E1FD9A39938BE79C7C7D60F2F67B3E9FEFF9FD77188D46188D46984CA690DACC7BDD3974A529140A64646460FDFAF5C8CACA42666626D6AF5F8F8C8C0C69CBCACA0A798FB3E0B41C814000939393B0D96CB0D96C989C9CC4C4C404AC566BC8FB369B0D131313989C9C5CB132AC70542A95D41751585828F5446CDCB8512ADFE28C73E271BBDDF8E28B2FF0C1071FC06834DE775FB95C8EC3870FE3FDF7DF475959D90A8D70ED61A85E61376FDEC4071F7C80CF3FFF3CEC17725656168E1C3982B7DF7E1B7979792B34425ACB9C4E274C26D382C1DB6834C26C36C774C6ED7ED46A35F47A3D0C0603F47AFDBCED5EEF6B341A28954ACE8EC739B7DB0D4110E0F17860B7DBE17038A4CDE97486BCBE7B733A9D70B95CB1FE2B2C68DDBA75C8C9C9911A880B0B0B430273616121323232623D4C5A41168B051F7FFC71D865F10040A3D1E0C8912378EFBDF7909F9FBF42235CBB18AA63647272129F7EFA29FEFAD7BF627474F4BEFB2A140A343535E1E8D1A3BC5C4331252ED525066E31748B2B10984C26381C8E580F73C9743A1D944A25542A15F47A3D542A15944AA5F45CA55241ABD5222D2D0D4AA5121A8D065AAD164AA5126AB57ADEF14AA592579BEEE2F3F92008029C4E27BC5E2F044180CBE582C7E381CFE783C7E381CBE5822008F07ABD703A9DD23176BB1D8220C0E7F349C7FB7CBEFBDE2B60B553ABD52101590CCDC1AF599E417FFCF1077EF8E1077CF2C927387EFC78D82BDE9B366DC25B6FBD8537DF7C135AAD768546490CD5312636357EF8E187E8E8E808BB7F5959195E7BED35BCF1C61B9C9DA055C9ED764BB3DA624DE9F8F8F8BC26AD48DF75723533180C5240D7E974F7DC4FA954865D5521353535EC5AF772B91C6AB5FABEFB783C9EB03FCC5EAF376CE3AB2008F7ADD577381C52288EE7FF703D28854211D2AC9B979717D24F50505080828202A4A7A7C77AA8B48AD9ED76B4B4B4E0A38F3E427F7F7FD8FD77EEDC89B7DF7E1B7FF9CB5F58F213030CD5ABC8E5CB97F1B7BFFD0DCDCDCD611BCA525353F1DC73CFE1E8D1A3A8AFAF676323C51DB7DB2DAD78203E5A2C1658AD56A9A6D566B3C16AB586BDC449B412341A0D32333391999929D5F2AF5FBF1E39393952A3ADB8312CD352CDCDCDE1DCB973686E6EC6F1E3C72108C27DF7179B0FDF79E71D343434ACD02869210CD5ABD0AD5BB7F0E5975FE2C30F3F84D96C0EBB7F4949095E7FFD751C3972045959592B3042A295E5F7FB431AC5C46631317C4F4D4D2D582BEBF178623D745A85C4F21C9D4E17525F9F9E9E1E1296EF6E924D4D4D8DF5D02981592C167CF5D557F8F4D34FF1DB6FBF85DD5FA3D1A0A9A909EFBEFB2E4A4A4A566084140E43F52A363D3D8D7FFCE31FF8F8E38FC32E9303DC99BD3E78F0205E7DF5553CF5D453BCF4436B9EDFEF0F69545BA8814D1004B8DDEE9046B7BB6B7AC53A5E8A1D854201A5520983C120D5AA07D7BDEB743AA8D56AE9F9424DA9E2C61A655A2D66666670EAD4297CF9E597686B6B5BD43AE5656565387AF428DE78E30DD64BAF320CD571E2EAD5ABF8EAABAFF0D9679F61727232ECFEE9E9E978E9A597F0CA2BAFA0B6B696E5214411E0703820088214C4FD7E3F7C3E1F6EDFBE8D99991978BD5E040201692509B16CE5EE7D454EA713737373D26BF11CC15C2E57C88A2BB3B3B3F366E0C5F38BFC7E7FD8E63D31A406D3EBF521DF1591D8472693212D2D0DEBD6AD835EAF0770A721342929096AB51A72B95C3AC7DDFB8AF5E3777F2651BCEBE9E941737333FEF9CF7FC26AB586DD9F259FF181A13ACE4C4F4FA3B5B5159F7CF209CE9E3D1BF6863200B071E346BCFCF2CB78F3CD37B179F3E6151825111111051B1A1AC2BFFEF52F1C3B760CD7AF5F5FD4315C9C20BE3054C7B16BD7AEE1EF7FFF3BBEF8E28B45FD4F17B8D319FCCA2BAFA0A9A989F5D74444445134353585E3C78FA3B9B919DDDDDD8B9A08532814686C6CC4D1A347D978186718AA13C0EDDBB7F19FFFFC079F7FFE39CE9F3F1F7239F95EE47239F6EFDF8FC3870FE3D9679F8546A35981911211112536BBDD8E13274EE0EBAFBFC677DF7DB7A83A690078F4D14771E4C811343535B1563A4E31542718B3D98C969616B4B4B4A0ABAB6B51C7A4A6A6E2A9A79E426363235E78E10564666646799444444489636A6A0A6D6D6D686969C1993367C2AEEF2EDAB469130E1F3E8CD75F7F9D2B78240086EA04363030809696163437376364646451C7242727E3B1C71EC3A14387F0F2CB2F233B3B3BCAA32422228A3F939393F8F6DB6FD1D2D282D3A74F87BD9992282F2F0F2FBDF4120E1D3AC48504120C43F51A30373787EEEE6EB4B4B4E0D8B1638B5A3D04080DD87FFEF39F919B9B1BE591121111AD5E56AB15A74E9D424B4B0BDADBDB175DDAA1D3E9F0DC73CFE1D0A143D8BF7F3F97BC4D500CD56B8C20083871E2048E1D3B863367CE842CEF753FC9C9C9A8A9A9C133CF3C8303070EA0B2B232CA232522228AAD3FFEF803BDBDBD3879F224DADADA70F1E2C545351B02805AADC6810307D0D4D48403070EF0E6416B0043F51AE6703870E2C48907AE010380ECEC6C3CFDF4D3686C6CC4BE7DFBD85441444409C1E7F3E1ECD9B3686B6BC3C99327313A3ABAE8630D06031A1A1AF0ECB3CFE2C5175F445A5A5A14474AAB0D433501B8D3ADDCDADAFAC0B5610090929282471F7D148D8D8D686C6C4479797914474A44441459376EDC404747075A5B5BF1DD77DF2DFA2A2E0064646460FFFEFD3874E810F6EDDBC73B76AE610CD534CFC4C404FEFDEF7FE3EBAFBFC6850B1716B5445FB09292123CF3CC33D8BF7F3FEAEAEAE6DD6D8D88882896BC5E2F7EF8E1079C3C7912274F9E5C7433BF68D3A64D78E18517F0E28B2FA2A6A606494949511A29C513866ABA2FB3D98CE3C78FE39B6FBE416767E703CD60037716B1AFA9A9417D7D3DEAEBEBB16BD72E2427274769B4444444F3CDCECEE2BFFFFD2FCE9E3D8BB367CFE2A79F7E7AE0DFB3CACA4A3CFFFCF33878F02076EEDC19A591523C63A8A645F3F97CE8EEEE466B6B2BBEF9E61B188DC6073E475A5A1A1E7BEC31343434A0A1A1013B76ECE0724244441471624947474707CE9C3903A7D3F940C78B2B60353636E2E0C183282D2D8DD24829513054D392DDB87103ADADAD686B6BC3850B171EA8064D949D9D8DC71F7F1C0D0D0DD8B76F1F366EDC188591121151A2339BCDE8EAEA42474707BEFDF65B8C8D8D3DF039944A25EAEBEBD1D8D888E79F7F9EF76AA007C2504D11E176BBD1D1D181F6F6769C3A750A26936949E7292929C1934F3E89279F7C124F3CF104BFD0888868416363633877EE1CBEFFFE7B9C3F7FFE81EBA245B9B9B95288DEBB772F140A4584474A6B05433545457F7F3FDADBDB71FAF4E925CF6203407979B914B2F7ECD9838C8C8C088F948888E281C5629102F4F9F3E7313C3CBCA4F3A8D56AD4D5D561EFDEBDD8BB772F76ECD8C146438A08866A8A3A4110A44B721D1D1DE8E9E959F2B98A8A8AA47AECFAFA7AA4A7A74770A44444B45AD86C36FCF8E38FD2EFC7E5CB97177DE39560292929D8BE7DBBF4DBF1A73FFD893762A1A860A8A615F7DB6FBFE1F4E9D3686F6FC7B973E7E0F57A97749EE4E464545555A1AEAE0ED5D5D578E49147B079F366363E1211C599B9B9395CBB760D172F5EC4A54B9770E1C205FCF2CB2F4B0AD1C9C9C9D8B1638734135D575707954A158551138562A8A6989A999941676727DADBDB71FEFC79F4F5F5C1EFF72FF97C0683410AD8D5D5D5A8AEAE466E6E6E04474C4444CB65329970E9D2255CBCC1A8D7D10000092E494441547811172F5E444F4F0F5C2ED792CEB56EDD3A545656E289279EC0DEBD7BB167CF1EE8F5FA088F98283C866A5A55BC5E2F7A7B7BD1D5D585CECE4E747575C16EB72FEB9CB9B9B9D8B973A7B4D5D4D460FDFAF5111A311111DD8FCBE5C2952B57D0D3D3839E9E1E7476762EB9A950249602D6D6D6A2BEBE1EF9F9F9111A2DD1D23154D3AA160804F0F3CF3F4B01BBB3B31366B37959E74C4A4A42696929AAABABB16BD72E545757A3AAAA8A1DDF4444CB244E8C5CBA7409FFFBDFFF70E9D2A5253714062B2E2E0E59192A27272702A3258A2C866A8A3B23232352C8EEEAEAC2E0E0E003DF4AFD6E32990C5BB76E954A4676EDDA85AD5BB72225252542A326224A2C333333B872E54A48801E1C1C44201058F6B9376FDE8CC71F7F5C2AE9E04C34C503866A8A7B1E8F077D7D7DD24C76777737A6A6A6967D5E994C86E2E262D4D5D5A1B6B6163B77EEC4962D5BB8F41211AD398140004343435209474F4F0F2E5FBE0C4110967D6E994C866DDBB6A1B6B616757575D8B3670FB2B2B222306AA295C5504D0927100860606000DDDDDDF8F1C71FD1DDDD8DEBD7AF47E4DC5AAD16151515D8BA752B2A2A2AA48DCD904494284C2613060707D1DFDF8FC1C141FCF2CB2F181C1C5CF24A4D77CBCFCF474D4D0D6A6A6AB07BF76EECD8B10332992C22E7268A25866A5A13262626A480DDDDDD8DDEDEDE88FD4000407A7A3AB66EDD8AF2F272E9B1B2B29237AB21A255CB62B1A0BFBF1F030303219BD3E98CD867C8E5726CDFBE1DBB77EFC6EEDDBB515B5B8BC2C2C2889D9F683561A8A635291008607878187D7D7DE8EDED456F6F2FFAFAFA60B55A23FA39999999A8ACAC447979392A2A2AB065CB16545454306C13D18AB1582C181C1CC4D5AB57A5D9E7FEFEFE8894C9054B4F4F47555515AAAAAAB07DFB7654555561CB962D9C85A63583A19A2888D96CC6E0E020060606A4BAC1A1A1A1653742DECD6030A0A8A8480ADBE2E3430F3DC49BD710D192D8ED760C0C0C48DF616278B6582C11FFACE0A54AC5EFB0F2F2727E7FD19AC6504D1486C3E1405F5F1FFAFAFAF0F3CF3FE3CA952B181818C0EDDBB723FE59068341FA7112B72D5BB6F072291101B873E741A3D188AB57AF62606000434343E8EFEFC7D0D05044CB36444AA512151515A8AAAAC2B66DDBA45968AD561BF1CF228A770CD5444BE0F7FB61341A4366B4070707313232B2A4DBEA862397CB51505080A2A2A279DBC30F3FCCBB87112510BBDD0EB3D98CF1F171DCB87123641B1A1A8A683F48B0DCDC5C69D6599C852E2B2B43727272543E8F28D13054134590CD669366B3C52D5AB3DAC1D2D3D351545484871E7A48DAC4D71B366C406A6A6A543F9F88166F7A7A1ABFFFFE3B464646303232821B376E48CF474646E07038A2FAF9C1B3CF959595D8BE7D3BB66DDB0683C110D5CF254A740CD54451E6F7FB313C3C8C6BD7AEE1D75F7FC5F0F030868787F1EBAFBF627C7C7C45C690939383FCFC7C14141460E3C68D282828404141010A0B0B51585888BCBC3C36131145C0CCCC0CC6C6C6303A3A8A9B376F62747414A3A3A3301A8DD2F3483744DF4B6E6E2E4A4B4B515C5C8C929212949494A0ACAC0C0F3FFC30679F89A280A19A2886DC6EB714B2C5E02D066EBBDDBE62E3484A4A424E4E0E366CD820056EF1795E5E1E727373919B9B0BA552B96263225A6D7C3E1FC6C6C660B15830363686B1B131188D46984C2629305B2C96A89480DD8B56AB454949098A8B8B515A5A2A85E792921268349A151B0711315413AD5A369B4D0AD8C1C1FBFAF5EB70BBDD3119935EAF475E5E1E727272A4C7FCFC7C6467674B8F05050550ABD531191FD152B85C2E8C8D8DE1D6AD5BD2E3E8E828262626303A3A2ABD1FAB7F770A85029B376F46717171C8565A5A8A9C9C9C988C8988E663A8268A43168B450ADBD7AF5F0F09DC3E9F2FD6C3835AAD46414101B2B2B2909999293D666464485B7676B6F49C35DF14498220C066B3C166B3E1D6AD5BD2739BCD8689890958AD56D86C36582C1698CDE655F16F462E97A3A8A8489A750E0ED18585855CAA8E280E3054132598D1D1D190902DD6721A8D468C8F8FC3EFF7C77A88F368349A7B066F83C110B2A5A7A7C36030F0D2F61AE1743A61B7DB43B6A9A9294C4D4D49E13838405BADD6A8AD8EB11C494949C8CECE96CAAA0A0B0B4382F3860D1B58E74C14E718AA89D6904020008BC5829B376F2ED84C65329960B158227EB39B684849499917B4170ADF6AB51A3A9D0E72B91C1A8D064AA5120A85025AAD1672B99CEBED4689C3E1C0ECEC2CDC6E370441C0F4F4349C4E27666767E172B9E0F178303535B560600E7E1D080462FD575914B104EAEE66603144E7E7E7B3199828C13154135188D9D95998CD66984C26984C26DCBA750B66B319168B05E3E3E3181F1F87C562C1E4E464AC871A310A85024AA5125AAD1632990C3A9D0EA9A9A950A954D0683448494991F601009D4E87A4A424C86432A4A5A50180B45F7272B214D4D56A35E47279C831C1542AD5BCD217B95C3EAF263D2929093A9D0EC09DB07AF7D7B6C7E3C1ECEC6CC87BD3D3D3100421E43DBFDF2FD50507FFB9D3E9C4DCDC1C666666A4595EB7DB0DBFDF8F40200097CB0500F07ABD98999991F6135F3B1C0ECCCCCCC0E3F1C0E7F3457D09C995A4D56A91979717D23710DC3F206E0A8522D64325A21863A826A225B97DFBB6D4C02536744D4C4C488D5E66B359AA674DA49045F12F252505191919C8CCCC946AFFC5A02C36E08A2BDEA854AA580F9788E204433511459D2008D2E5FCF1F17198CDE67BBE369BCD51BFF905251685421152FA232E0379AFF7B2B3B359BF4C4411C7504D44AB8ED7EB85D56AC5E4E4249C4E27DC6EB7B4B95C2E381C0E783C9EB0EFD1EAA7D7EB919696068D46038D4603AD56BBA8F7743A9DD4D0CAD964225A0D18AA892861391C0E0882004110A41A61BBDD8ED9D9D990FADFE0063AB1D658AC53166FC2E372B9100804A46381FFAF659E9B9B83D3E98CE55F3562B45A2D92939391929222ADB022D686AF5BB70E7ABD5EDA4F6CF414EBCD351A0D643219F47ABD54939E969606994C0683C120D5A0AB542AA8542A368912514261A826228AA0E0463D31902FD434B8D07BC18D82A2E04641D1424D8F62780DB65023E44201590CC04444B4740CD54444444444CB94147E172222222222BA1F866A22222222A26562A826222222225A26866A22222222A26562A826222222225A26866A22222222A26562A826222222225A26866A22222222A26562A826222222225A26866A22222222A265FA3F692A38512E4855C90000000049454E44AE426082>|png>|725px|270px||>

  <\description>
    <item*|View equivalente>Siano <math|S1> e <math|S2> due schedule
    (completi) sulle stesse transazioni. Allora <math|S1> è view-equivalent a
    <math|S2> se <math|S1> e <math|S2> hanno la stessa relazione
    <with|font-series|bold|legge-da> e le stesse
    <with|font-series|bold|scritture finali>

    <item*|View serializzabile>Uno schedule <math|S> (completo) è
    view-serializzabile se esiste uno schedule <math|S<rprime|'>> seriale che
    è view-equivalente ad <math|S>

    <item*|Conflict equivalente>Due schedule <math|S1> e <math|S2> sulle
    stesse transazioni sono conflict-equivalenti se <math|S1> può essere
    trasformato in <math|S2> mediante una sequenza di scambi (swaps) tra
    azioni consecutive non in conflitto tra loro

    <item*|Conflict serializzabile>Uno schedule <math|S> è
    conflict-serializzabile se esiste uno schedule <math|S<rprime|'>> seriale
    che è conflict-equivalente ad <math|S>. In pratica, uno schedule <math|S>
    è conflict-serializzabile se e solo se il grafo delle precedenze
    <math|P<around*|(|S|)>> associato ad <math|S> è aciclico.

    <item*|Determinare il grafo delle precedenze <math|P<around*|(|S|)> dato
    uno schedule >S su <math|T<rsub|1>\<ldots\>T<rsub|n>>>

    <\itemize>
      <item>I nodi di <math|P<around*|(|S|)>> sono le transazioni
      <math|<around*|{|T<rsub|1>\<ldots\>T<rsub|n>|}>> di <math|S>

      <item>Gli archi <math|E> di <math|P<around*|(|S|)>> sono determinati
      così: l'arco <math|T<rsub|i>\<rightarrow\>T<rsub|j>> è in <math|E> se e
      solo se esistono due azioni <math|P<rsub|i><around*|(|A|)>,Q<rsub|j><around*|(|A|)>>
      che agiscono sullo stesso oggetto <math|A> in <math|S> tali che:

      <\enumerate>
        <item><math|P<rsub|i><around*|(|A|)>\<less\><rsub|S>Q<rsub|j><around*|(|a|)>>,
        cioè <math|P<rsub|i><around*|(|A|)>> viene prima di
        <math|Q<rsub|j><around*|(|A|)>> in <math|S>, anche non
        consecutivamente

        <item>Almeno una tra <math|P<rsub|i><around*|(|A|)>> e
        <math|Q<rsub|j><around*|(|A|)>> è un'operazione di
        <with|font-shape|italic|write>
      </enumerate>
    </itemize>
  </description>

  <section|Schedule (molto teorico)>

  <subsection|VSR >

  Uno schedule viene detto <with|font-shape|italic|view-serializzabile (VSR)>
  se è view-equivalente ad uno seriale.

  Per stabilire se due schedule sono view-equivalenti bisogna verificare che
  abbiano le stesse relazioni legge-da e le stesse scritture finali.

  <subsection|CSR>

  Uno schedule <with|font-shape|italic|conflict-serializzabile> è anche
  <with|font-shape|italic|view-serializzabile>.

  Per capire se uno schedule è conflict-serializzabile è necessario che il
  grafo orientato i cui nodi rappresentazon le transazioni non contenga
  ``cicli''.

  <subsection|Locking a due fasi>

  Le due strategie viste finora non garantiscono la serializzabilità, ma la
  verificano a posteriori. Nei sistemi utilizzati in pratica si preferisce
  invece fare in modo che essa sia in qualche modo assicurata, adottando
  particolari accorgimenti e spesso strutture dati d'appoggio. Una delle
  tecniche più utilizzate si basa sul <em|locking>, che fa uso di una
  variabile di <em|lock> per descrivere lo stato di una risorsa rispetto alle
  operazioni che lo riguardano. Quando una transazione vuole utilizzare una
  risorsa deve <em|prima> richiederne il lock, attendere finché non gli viene
  concesso e rilasciarlo dopo il suo utilizzo. In particolare, nel
  <em|locking a due fasi> (2PL) una volta che una transazione ha rilasciato
  un lock qualsiasi, non può più acquisirne altri. Quindi, se una transazione
  t<rsub|i> ha bisogno del lock su una risorsa già occupata da t<rsub|j>,
  quest'ultima prima di rilasciarla dovrà acquisire il lock di tutte le
  risorse a cui deve ancora accedere, perché una volta unlockata una risorsa
  non potrà più lockarne nessuna.

  Perché ci interessano tanto gli schedule generati con questa tecnica?
  <em|Perché sono serializzabili>.

  Esistono due tipi di 2PL, a seconda della variabile di lock che viene
  utilizzata:

  <\itemize>
    <item>a <em|2 stati>: il lock può essere <em|locked> (risorsa bloccata) o
    <em|unlocked> (risorsa rilasciata o comunque disponibile)

    <item>a <em|3 stati>: il lock può essere <em|read locked>, <em|write
    locked> o <em|unlocked>. L'introduzione del read locked consente a due o
    più transazioni di condividere la stessa risorsa in lettura.
  </itemize>

  Ultima considerazione: gli schedule 2PL sono un sottoinsieme della classe
  di schedule CSR, che sono a loro volta sottoinsieme dei VSR. Ne consegue
  che se uno schedule è non view-serializzabile non è nemmeno
  conflict-serializzabile né tantomeno basato su 2PL!

  <subsubsection|Come determinare se uno schedule è generato da uno scheduer
  basato su 2PL> (esempio)

  Prendiamo lo schedule

  <\equation*>
    R<rsub|1><around*|(|x|)>,R<rsub|1><around*|(|t|)>,R<rsub|2><around*|(|z|)>,W<rsub|3><around*|(|x|)>,W<rsub|1><around*|(|x|)>,R<rsub|1><around*|(|y|)>,W<rsub|3><around*|(|t|)>,W<rsub|2><around*|(|x|)>,W<rsub|1><around*|(|y|)>
  </equation*>

  <\enumerate>
    <item>È molto utile raggruppare le operazioni per transazioni per
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
    avrà la seguente forma:

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
      bloccare tutte quelle risorse di cui in futuro avrà bisogno, quindi la
      <math|y>

      <item>A questo punto unlocko <math|x> dalla transazione 1, e qui sta il
      problema: l'operazione successiva dello schedule è
      <math|W<rsub|1><around*|(|x|)>\<nocomma\>>, ma avendo appena unlockato
      non potrò più rilockoralo.
    </itemize>
  </enumerate>

  Quindi lo schedule in esame non è 2PL. Notare che in realtà noi già
  sapevamo l'esito della verifica: dato che lo schedule non era CSR, non
  poteva in nessun modo essere nemmeno 2PL.

  <section|Pratico basi di dati>

  <subsection|Creazione di un trigger>

  <\cpp-code>
    DELIMITER $$

    \;

    CREATE TRIGGER NomeTrigger

    BEFORE INSERT ON NomeTabella FOR EACH ROW

    \ \ BEGIN

    \ \ \ \ [corpo_trigger]

    \ \ END $$

    DELIMITER ;
  </cpp-code>

  <subsection|Creazione di una stored procedure>

  Viene fornita una stringa come parametro d'ingresso

  <\cpp-code>
    <\verbatim-code>
      DROP PROCEDURE IF EXISTS NomeProcedura;

      \;

      DELIMITER <math|>$$

      CREATE PROCEDURE NomeProcedura(IN argomento VARCHAR(20))

      \ \ BEGIN

      \ \ \ \ [corpo_trigger]

      \ \ END $$

      DELIMITER;
    </verbatim-code>
  </cpp-code>
</body>

<\initial>
  <\collection>
    <associate|page-orientation|landscape>
    <associate|page-type|a5>
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3.4|1>>
    <associate|auto-100|<tuple|4.3.2|19>>
    <associate|auto-101|<tuple|4.3.2.0.3|19>>
    <associate|auto-102|<tuple|4.3.3|19>>
    <associate|auto-103|<tuple|4.3.3.0.4|20>>
    <associate|auto-104|<tuple|5|20>>
    <associate|auto-105|<tuple|6|20>>
    <associate|auto-106|<tuple|6.1|20>>
    <associate|auto-107|<tuple|6.2|20>>
    <associate|auto-108|<tuple|6.3|21>>
    <associate|auto-109|<tuple|6.3.1|21>>
    <associate|auto-11|<tuple|2.4|1>>
    <associate|auto-110|<tuple|7|21>>
    <associate|auto-111|<tuple|7.1|?>>
    <associate|auto-112|<tuple|7.2|?>>
    <associate|auto-12|<tuple|3|1>>
    <associate|auto-13|<tuple|3.1|1>>
    <associate|auto-14|<tuple|3.2|2>>
    <associate|auto-15|<tuple|1|3>>
    <associate|auto-16|<tuple|2|3>>
    <associate|auto-17|<tuple|3|3>>
    <associate|auto-18|<tuple|3.3|3>>
    <associate|auto-19|<tuple|3.3.1|3>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|4|4>>
    <associate|auto-21|<tuple|4.1|4>>
    <associate|auto-22|<tuple|4.2|4>>
    <associate|auto-23|<tuple|5|4>>
    <associate|auto-24|<tuple|5.1|4>>
    <associate|auto-25|<tuple|5.2|4>>
    <associate|auto-26|<tuple|5.2.1|5>>
    <associate|auto-27|<tuple|5.2.2|5>>
    <associate|auto-28|<tuple|5.2.3|5>>
    <associate|auto-29|<tuple|5.2.4|6>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-30|<tuple|5.2.5|6>>
    <associate|auto-31|<tuple|5.2.6|6>>
    <associate|auto-32|<tuple|5.2.7|7>>
    <associate|auto-33|<tuple|6|7>>
    <associate|auto-34|<tuple|6.1|7>>
    <associate|auto-35|<tuple|6.1.1|7>>
    <associate|auto-36|<tuple|6.1.2|7>>
    <associate|auto-37|<tuple|6.1.3|7>>
    <associate|auto-38|<tuple|6.1.4|8>>
    <associate|auto-39|<tuple|6.1.5|8>>
    <associate|auto-4|<tuple|2.1|1>>
    <associate|auto-40|<tuple|7|8>>
    <associate|auto-41|<tuple|7.1|8>>
    <associate|auto-42|<tuple|7.2|8>>
    <associate|auto-43|<tuple|7.2.1|8>>
    <associate|auto-44|<tuple|7.2.2|9>>
    <associate|auto-45|<tuple|7.2.3|9>>
    <associate|auto-46|<tuple|7.2.4|9>>
    <associate|auto-47|<tuple|8|9>>
    <associate|auto-48|<tuple|8.1|10>>
    <associate|auto-49|<tuple|8.2|10>>
    <associate|auto-5|<tuple|2.2|1>>
    <associate|auto-50|<tuple|8.2.1|10>>
    <associate|auto-51|<tuple|8.2.2|10>>
    <associate|auto-52|<tuple|8.2.3|11>>
    <associate|auto-53|<tuple|8.2.4|11>>
    <associate|auto-54|<tuple|9|11>>
    <associate|auto-55|<tuple|9.1|11>>
    <associate|auto-56|<tuple|9.1.1|12>>
    <associate|auto-57|<tuple|9.2|12>>
    <associate|auto-58|<tuple|9.2.1|12>>
    <associate|auto-59|<tuple|9.2.1.1|12>>
    <associate|auto-6|<tuple|2.3|1>>
    <associate|auto-60|<tuple|9.2.1.1.1|12>>
    <associate|auto-61|<tuple|9.2.1.2|12>>
    <associate|auto-62|<tuple|9.2.1.3|12>>
    <associate|auto-63|<tuple|10|12>>
    <associate|auto-64|<tuple|10.1|13>>
    <associate|auto-65|<tuple|10.1.1|13>>
    <associate|auto-66|<tuple|10.1.2|13>>
    <associate|auto-67|<tuple|10.2|13>>
    <associate|auto-68|<tuple|10.2.1|13>>
    <associate|auto-69|<tuple|10.2.2|13>>
    <associate|auto-7|<tuple|2.3.1|1>>
    <associate|auto-70|<tuple|10.3|13>>
    <associate|auto-71|<tuple|10.3.1|13>>
    <associate|auto-72|<tuple|11|14>>
    <associate|auto-73|<tuple|11.1|14>>
    <associate|auto-74|<tuple|12|14>>
    <associate|auto-75|<tuple|12.1|14>>
    <associate|auto-76|<tuple|12.2|14>>
    <associate|auto-77|<tuple|13|14>>
    <associate|auto-78|<tuple|13.1|15>>
    <associate|auto-79|<tuple|13.2|15>>
    <associate|auto-8|<tuple|2.3.2|1>>
    <associate|auto-80|<tuple|13.3|15>>
    <associate|auto-81|<tuple|2|15>>
    <associate|auto-82|<tuple|1|15>>
    <associate|auto-83|<tuple|1.1|15>>
    <associate|auto-84|<tuple|2|16>>
    <associate|auto-85|<tuple|2.1|16>>
    <associate|auto-86|<tuple|2.2|17>>
    <associate|auto-87|<tuple|2.3|17>>
    <associate|auto-88|<tuple|2.3.0.0.1|17>>
    <associate|auto-89|<tuple|2.4|17>>
    <associate|auto-9|<tuple|2.3.3|1>>
    <associate|auto-90|<tuple|3|17>>
    <associate|auto-91|<tuple|4|17>>
    <associate|auto-92|<tuple|4.1|17>>
    <associate|auto-93|<tuple|4.1.1|17>>
    <associate|auto-94|<tuple|4.1.1.0.2|18>>
    <associate|auto-95|<tuple|4.1.2|18>>
    <associate|auto-96|<tuple|4.1.3|18>>
    <associate|auto-97|<tuple|4.2|18>>
    <associate|auto-98|<tuple|4.3|19>>
    <associate|auto-99|<tuple|4.3.1|19>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Algoritmi
      e strutture dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Algoritmo
      ricorsivo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Complessità
      di un algoritmo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Definizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Ordine
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Regole
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Regola dei fattori
      costanti <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|2.3.2<space|2spc>Regola della somma
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|2.3.3<space|2spc>Regola del prodotto
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|2.3.4<space|2spc>Altre regole
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Teorema
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Complessità
      di un algoritmo ricorsivo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Esempio: fattoriale di un
      numero <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Dalla relazione di
      ricorrenza alla complessità <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      Esempio: fibonacci() ricorsivo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.15fn>

      Esempio: mergeSort() <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.15fn>

      Esempio: split() <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.15fn>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Limiti inferiori delle
      funzioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Algoritmi
      di ordinamento> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Merge sort
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Insertion sort
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Alberi
      binari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Numero di foglie e di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|5.2.1<space|2spc>Contare il numero dei nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|2tab>|5.2.2<space|2spc>Contare il numero delle
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|2tab>|5.2.3<space|2spc>Cercare un etichetta e
      resistuire un puntatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|2tab>|5.2.4<space|2spc>Eliminare tutto l'abero
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|5.2.5<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|2tab>|5.2.6<space|2spc>Compito 2 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|2tab>|5.2.7<space|2spc>Compito 1 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Alberi
      generici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|6.1.1<space|2spc>Contare il numero di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|2tab>|6.1.2<space|2spc>Contare il numero di
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|6.1.3<space|2spc>Inserire un nodo in fondo
      ad una lista di fratelli <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|2tab>|6.1.4<space|2spc>Inserire un nodo son come
      ultimo figlio di father <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|2tab>|6.1.5<space|2spc>Compito 1 - Esercizio 5
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Alberi
      binari di ricerca> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39><vspace|0.5fn>

      <with|par-left|<quote|1tab>|7.1<space|2spc>Proprietà
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|7.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|2tab>|7.2.1<space|2spc>Cercare un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|7.2.2<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|2tab>|7.2.3<space|2spc>Restituire l'etichetta del
      nodo più piccolo di un albero ed eliminare il nodo che la contiene
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|2tab>|7.2.4<space|2spc>Cancellare un nodo ?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Heap>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46><vspace|0.5fn>

      <with|par-left|<quote|1tab>|8.1<space|2spc>Calcolare le parentele
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|8.2<space|2spc>Classe Heap
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|8.2.1<space|2spc>Costruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|2tab>|8.2.2<space|2spc>Distruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|2tab>|8.2.3<space|2spc>Inserimento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|2tab>|8.2.4<space|2spc>Estrazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Ricerca
      hash> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53><vspace|0.5fn>

      <with|par-left|<quote|1tab>|9.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|2tab>|9.1.1<space|2spc>Ricerca tramite hash
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|9.2<space|2spc>Metodo hash ad accesso non
      diretto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|2tab>|9.2.1<space|2spc>Soluzione: hash modulare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|4tab>|Legge di scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58><vspace|0.15fn>>

      Agglomerato <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59><vspace|0.15fn>

      <with|par-left|<quote|4tab>|Funzione di ricerca con scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Funzione di inserimento in presenza di
      cancellazioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Grafi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62><vspace|0.5fn>

      <with|par-left|<quote|1tab>|10.1<space|2spc>Rappresentazioni in memoria
      di grafi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|2tab>|10.1.1<space|2spc>Tramite liste di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|2tab>|10.1.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|1tab>|10.2<space|2spc>Rappresentazioni in memoria
      di grafi con nodi ed archi etichettati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|2tab>|10.2.1<space|2spc>Tramite liste di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|2tab>|10.2.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|1tab>|10.3<space|2spc>Cammino più breve
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <with|par-left|<quote|2tab>|10.3.1<space|2spc>Algoritmo di Dijkstra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Esercizi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71><vspace|0.5fn>

      <with|par-left|<quote|1tab>|11.1<space|2spc>Più lunga sottosequenza
      comune (PLSC) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Templates>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73><vspace|0.5fn>

      <with|par-left|<quote|1tab>|12.1<space|2spc>Esempi di definizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>>

      <with|par-left|<quote|1tab>|12.2<space|2spc>Variabili statiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Derivazione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76><vspace|0.5fn>

      <with|par-left|<quote|1tab>|13.1<space|2spc>Specificatori d'accesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>>

      <with|par-left|<quote|1tab>|13.2<space|2spc>Costruzione degli oggetti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-78>>

      <with|par-left|<quote|1tab>|13.3<space|2spc>Funzioni virtuali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Basi
      di dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Algebra
      relazionale, calcolo dei domini e delle tuple>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Esempio pratico
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Normalizzazione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Prima forma normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Seconda forma normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Terza forma normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>>

      Dalla soluzione dell'esame: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87><vspace|0.15fn>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Forma normale di Boyce e
      Codd <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Regole
      di Armstrong> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Definizioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Miste
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>>

      <with|par-left|<quote|2tab>|4.1.1<space|2spc>Chiusura transitiva di un
      insieme di dipendenze <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92>>

      Dalla soluzione dell'esame: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93><vspace|0.15fn>

      <with|par-left|<quote|2tab>|4.1.2<space|2spc>Chiusura di un insieme di
      attributi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>>

      <with|par-left|<quote|2tab>|4.1.3<space|2spc>Algoritmo per il calcolo
      della chiusura di un insieme di attributi X
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>ACID
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Database NOSQL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>

      <with|par-left|<quote|2tab>|4.3.1<space|2spc>Vantaggi e svantaggi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-98>>

      <with|par-left|<quote|2tab>|4.3.2<space|2spc>Differenze con un database
      SQL <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-99>>

      Da soluzione esame: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-100><vspace|0.15fn>

      <with|par-left|<quote|2tab>|4.3.3<space|2spc>Equivalente ACID per
      database NOSQL <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101>>

      Da una domanda di un compito: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-102><vspace|0.15fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Schedule
      (pratico)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-103><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Schedule
      (molto teorico)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-104><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>VSR
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-105>>

      <with|par-left|<quote|1tab>|6.2<space|2spc>CSR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-106>>

      <with|par-left|<quote|1tab>|6.3<space|2spc>Locking a due fasi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-107>>

      <with|par-left|<quote|2tab>|6.3.1<space|2spc>Come determinare se uno
      schedule è generato da uno scheduer basato su 2PL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-108>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Pratico
      basi di dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-109><vspace|0.5fn>

      <with|par-left|<quote|1tab>|7.1<space|2spc>Creazione di un trigger
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-110>>

      <with|par-left|<quote|1tab>|7.2<space|2spc>Creazione di una stored
      procedure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-111>>
    </associate>
  </collection>
</auxiliary>
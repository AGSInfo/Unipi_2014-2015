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

  Un heap è un albero binario quasi bilanciato con le seguenti proprietà:

  <\itemize>
    <item>i nodi dell'ultimo livello sono addossati a sinistra

    <item>in ogni sottoalbero l'etichetta della radice è maggiore o uguale a
    quella di tutti i discendenti
  </itemize>

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

  <paragraph|Funzione di insierimento in presenza di cancellazioni>

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

  <section|Templates>

  <subsection|Esempi di definizione>

  <\cpp-code>
    template \<less\>class T1\<gtr\>

    T1 somma(T1 a, T2 b) {

    \ \ return a + b;

    }
  </cpp-code>

  <subsection|Parametri costanti>

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
    accessibilit dalle sottoclassi, ma non dall'esterno

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

  <section|Schedule>

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

  \;
</body>

<\initial>
  <\collection>
    <associate|page-orientation|portrait>
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3.4|1>>
    <associate|auto-100|<tuple|3.3.3|19>>
    <associate|auto-101|<tuple|3.3.3.0.4|19>>
    <associate|auto-102|<tuple|4|19>>
    <associate|auto-103|<tuple|4.1|19>>
    <associate|auto-104|<tuple|4.2|19>>
    <associate|auto-105|<tuple|4.3|19>>
    <associate|auto-106|<tuple|4.3.1|20>>
    <associate|auto-11|<tuple|2.4|1>>
    <associate|auto-12|<tuple|3|1>>
    <associate|auto-13|<tuple|3.1|1>>
    <associate|auto-14|<tuple|3.2|2>>
    <associate|auto-15|<tuple|1|3>>
    <associate|auto-16|<tuple|2|3>>
    <associate|auto-17|<tuple|3|3>>
    <associate|auto-18|<tuple|4|3>>
    <associate|auto-19|<tuple|4.1|3>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|4.2|4>>
    <associate|auto-21|<tuple|5|4>>
    <associate|auto-22|<tuple|5.1|4>>
    <associate|auto-23|<tuple|5.2|4>>
    <associate|auto-24|<tuple|5.2.1|4>>
    <associate|auto-25|<tuple|5.2.2|4>>
    <associate|auto-26|<tuple|5.2.3|5>>
    <associate|auto-27|<tuple|5.2.4|5>>
    <associate|auto-28|<tuple|5.2.5|5>>
    <associate|auto-29|<tuple|5.2.6|6>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-30|<tuple|5.2.7|6>>
    <associate|auto-31|<tuple|6|6>>
    <associate|auto-32|<tuple|6.1|7>>
    <associate|auto-33|<tuple|6.1.1|7>>
    <associate|auto-34|<tuple|6.1.2|7>>
    <associate|auto-35|<tuple|6.1.3|7>>
    <associate|auto-36|<tuple|6.1.4|7>>
    <associate|auto-37|<tuple|6.1.5|7>>
    <associate|auto-38|<tuple|7|8>>
    <associate|auto-39|<tuple|7.1|8>>
    <associate|auto-4|<tuple|2.1|1>>
    <associate|auto-40|<tuple|7.2|8>>
    <associate|auto-41|<tuple|7.2.1|8>>
    <associate|auto-42|<tuple|7.2.2|8>>
    <associate|auto-43|<tuple|7.2.3|8>>
    <associate|auto-44|<tuple|7.2.4|9>>
    <associate|auto-45|<tuple|8|9>>
    <associate|auto-46|<tuple|8.1|9>>
    <associate|auto-47|<tuple|8.2|9>>
    <associate|auto-48|<tuple|8.2.1|10>>
    <associate|auto-49|<tuple|8.2.2|10>>
    <associate|auto-5|<tuple|2.2|1>>
    <associate|auto-50|<tuple|8.2.3|10>>
    <associate|auto-51|<tuple|8.2.4|10>>
    <associate|auto-52|<tuple|9|11>>
    <associate|auto-53|<tuple|9.1|11>>
    <associate|auto-54|<tuple|9.1.1|11>>
    <associate|auto-55|<tuple|9.2|11>>
    <associate|auto-56|<tuple|9.2.1|12>>
    <associate|auto-57|<tuple|9.2.1.1|12>>
    <associate|auto-58|<tuple|9.2.1.1.1|12>>
    <associate|auto-59|<tuple|9.2.1.2|12>>
    <associate|auto-6|<tuple|2.3|1>>
    <associate|auto-60|<tuple|9.2.1.3|12>>
    <associate|auto-61|<tuple|10|12>>
    <associate|auto-62|<tuple|10.1|12>>
    <associate|auto-63|<tuple|10.1.1|12>>
    <associate|auto-64|<tuple|10.1.2|13>>
    <associate|auto-65|<tuple|10.2|13>>
    <associate|auto-66|<tuple|10.2.1|13>>
    <associate|auto-67|<tuple|10.2.2|13>>
    <associate|auto-68|<tuple|10.3|13>>
    <associate|auto-69|<tuple|10.3.1|13>>
    <associate|auto-7|<tuple|2.3.1|1>>
    <associate|auto-70|<tuple|11|13>>
    <associate|auto-71|<tuple|11.1|13>>
    <associate|auto-72|<tuple|12|14>>
    <associate|auto-73|<tuple|12.1|14>>
    <associate|auto-74|<tuple|12.2|14>>
    <associate|auto-75|<tuple|12.3|14>>
    <associate|auto-76|<tuple|13|14>>
    <associate|auto-77|<tuple|13.1|14>>
    <associate|auto-78|<tuple|13.2|14>>
    <associate|auto-79|<tuple|13.3|15>>
    <associate|auto-8|<tuple|2.3.2|1>>
    <associate|auto-80|<tuple|2|15>>
    <associate|auto-81|<tuple|1|15>>
    <associate|auto-82|<tuple|1.1|15>>
    <associate|auto-83|<tuple|2|15>>
    <associate|auto-84|<tuple|2.1|15>>
    <associate|auto-85|<tuple|2.2|16>>
    <associate|auto-86|<tuple|2.3|16>>
    <associate|auto-87|<tuple|2.3.0.0.1|17>>
    <associate|auto-88|<tuple|2.4|17>>
    <associate|auto-89|<tuple|3|17>>
    <associate|auto-9|<tuple|2.3.3|1>>
    <associate|auto-90|<tuple|3.1|17>>
    <associate|auto-91|<tuple|3.1.1|17>>
    <associate|auto-92|<tuple|3.1.1.0.2|17>>
    <associate|auto-93|<tuple|3.1.2|17>>
    <associate|auto-94|<tuple|3.1.3|17>>
    <associate|auto-95|<tuple|3.2|18>>
    <associate|auto-96|<tuple|3.3|18>>
    <associate|auto-97|<tuple|3.3.1|18>>
    <associate|auto-98|<tuple|3.3.2|18>>
    <associate|auto-99|<tuple|3.3.2.0.3|18>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Algoritmi
      di ordinamento> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Merge sort
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Insertion sort
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Alberi
      binari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Numero di foglie e di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|5.2.1<space|2spc>Contare il numero dei nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|5.2.2<space|2spc>Contare il numero delle
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|2tab>|5.2.3<space|2spc>Cercare un etichetta e
      resistuire un puntatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|2tab>|5.2.4<space|2spc>Eliminare tutto l'abero
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|2tab>|5.2.5<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|5.2.6<space|2spc>Compito 2 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|2tab>|5.2.7<space|2spc>Compito 1 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Alberi
      generici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|6.1.1<space|2spc>Contare il numero di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|6.1.2<space|2spc>Contare il numero di
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|2tab>|6.1.3<space|2spc>Inserire un nodo in fondo
      ad una lista di fratelli <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|6.1.4<space|2spc>Inserire un nodo son come
      ultimo figlio di father <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|2tab>|6.1.5<space|2spc>Compito 1 - Esercizio 5
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Alberi
      binari di ricerca> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38><vspace|0.5fn>

      <with|par-left|<quote|1tab>|7.1<space|2spc>Proprietà
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|7.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|2tab>|7.2.1<space|2spc>Cercare un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|2tab>|7.2.2<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|7.2.3<space|2spc>Restituire l'etichetta del
      nodo più piccolo di un albero ed eliminare il nodo che la contiene
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|2tab>|7.2.4<space|2spc>Cancellare un nodo ?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Heap>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45><vspace|0.5fn>

      <with|par-left|<quote|1tab>|8.1<space|2spc>Calcolare le parentele
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|8.2<space|2spc>Classe Heap
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|2tab>|8.2.1<space|2spc>Costruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|8.2.2<space|2spc>Distruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|2tab>|8.2.3<space|2spc>Inserimento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|2tab>|8.2.4<space|2spc>Estrazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Ricerca
      hash> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52><vspace|0.5fn>

      <with|par-left|<quote|1tab>|9.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|9.1.1<space|2spc>Ricerca tramite hash
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1tab>|9.2<space|2spc>Metodo hash ad accesso non
      diretto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|9.2.1<space|2spc>Soluzione: hash modulare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|4tab>|Legge di scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57><vspace|0.15fn>>

      Agglomerato <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58><vspace|0.15fn>

      <with|par-left|<quote|4tab>|Funzione di ricerca con scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Funzione di insierimento in presenza di
      cancellazioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Grafi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61><vspace|0.5fn>

      <with|par-left|<quote|1tab>|10.1<space|2spc>Rappresentazioni in memoria
      di grafi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|2tab>|10.1.1<space|2spc>Tramite liste di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|2tab>|10.1.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|1tab>|10.2<space|2spc>Rappresentazioni in memoria
      di grafi con nodi ed archi etichettati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|2tab>|10.2.1<space|2spc>Tramite liste di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      <with|par-left|<quote|2tab>|10.2.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|1tab>|10.3<space|2spc>Cammino più breve
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|2tab>|10.3.1<space|2spc>Algoritmo di Dijkstra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Esercizi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70><vspace|0.5fn>

      <with|par-left|<quote|1tab>|11.1<space|2spc>Più lunga sottosequenza
      comune (PLSC) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Templates>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72><vspace|0.5fn>

      <with|par-left|<quote|1tab>|12.1<space|2spc>Esempi di definizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>>

      <with|par-left|<quote|1tab>|12.2<space|2spc>Parametri costanti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>>

      <with|par-left|<quote|1tab>|12.3<space|2spc>Variabili statiche
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Definizioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Miste
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90>>

      <with|par-left|<quote|2tab>|3.1.1<space|2spc>Chiusura transitiva di un
      insieme di dipendenze <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>>

      Dalla soluzione dell'esame: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92><vspace|0.15fn>

      <with|par-left|<quote|2tab>|3.1.2<space|2spc>Chiusura di un insieme di
      attributi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93>>

      <with|par-left|<quote|2tab>|3.1.3<space|2spc>Algoritmo per il calcolo
      della chiusura di un insieme di attributi X
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>ACID
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Database NOSQL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>>

      <with|par-left|<quote|2tab>|3.3.1<space|2spc>Vantaggi e svantaggi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>

      <with|par-left|<quote|2tab>|3.3.2<space|2spc>Differenze con un database
      SQL <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-98>>

      Da soluzione esame: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-99><vspace|0.15fn>

      <with|par-left|<quote|2tab>|3.3.3<space|2spc>Equivalente ACID per
      database NOSQL <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-100>>

      Da una domanda di un compito: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-101><vspace|0.15fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Schedule>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-102><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>VSR
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-103>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>CSR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-104>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Locking a due fasi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-105>>

      <with|par-left|<quote|2tab>|4.3.1<space|2spc>Come determinare se uno
      schedule è generato da uno scheduer basato su 2PL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-106>>
    </associate>
  </collection>
</auxiliary>
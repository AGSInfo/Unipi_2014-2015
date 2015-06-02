<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Algoritmi e Basi di
  dati>|<doc-author|<author-data|<author-name|>>>|<doc-author|<author-data|<author-name|Di
  Gianluca Mondini>>>>

  <chapter|Algoritmi e strutture dati>

  <section|Algoritmo ricorsivo>

  Una metodologia per programmare le funzioni ricorsive � la seguente:

  <\enumerate>
    <item>Individuare i casi base in cui la funzione � definita
    immediatamente;

    <item>Effettuare le chiamate ricorsive su un insieme pi� piccolo di dati,
    cio� un insieme pi� vicino ai casi base;

    <item>Fare in modo che alla fine di ogni sequenza di chiamate ricorsive,
    si ricada nei casi base;
  </enumerate>

  <section|Complessit� di un algoritmo>

  <subsection|Definizione>

  � una funzione (sempre positiva) che associa alla dimensione del problema
  il costo della sua risoluzione in base alla misura scelta

  <math|T<rsub|P><around*|(|n|)>> = Complessit� con costo = tempo del
  programma <math|P> al variare di <math|n>

  <subsection|Ordine>

  <math|g<around*|(|n|)>> � di ordine <math|O<around*|(|f<around*|(|n|)>|)>>
  se esistono un intero <math|n<rsub|0>> ed una costante <math|c\<gtr\>0>
  tali che per ogni <math|n\<gtr\>n<rsub|0>> si ha
  <math|g<around*|(|n|)>\<leqslant\>c*f<around*|(|n|)>>

  <subsection|Regole>

  <subsubsection|Regola dei fattori costanti>

  Per ogni costante positiva <math|k>, <math|O<around*|(|f<around*|(|n|)>|)>=O<around*|(|k*f<around*|(|n|)>|)>>

  <subsubsection|Regola della somma>

  Se <math|f<around*|(|n|)>> � <math|O<around*|(|g<around*|(|n|)>|)>>, allora
  <math|f<around*|(|n|)>+g<around*|(|n|)>> �
  <math|O<around*|(|g<around*|(|n|)>|)>>

  <subsubsection|Regola del prodotto>

  Se <math|f<around*|(|n|)>> � <math|O<around*|(|f1<around*|(|n|)>|)>> e
  <math|g<around*|(|n|)>> � <math|O<around*|(|g1<around*|(|n|)>|)>>, allora
  <math|f<around*|(|n|)>g<around*|(|n|)>> �
  <math|O<around*|(|f1<around*|(|n|)>*g1<around*|(|n|)>|)>>

  <subsubsection|Altre regole>

  Se <math|f<around*|(|n|)>> � <math|O<around*|(|g<around*|(|n|)>|)>> e
  <math|g<around*|(|n|)>> � <math|O<around*|(|h<around*|(|n|)>|)>>, allora
  <math|f<around*|(|n|)>> � <math|O<around*|(|h<around*|(|n|)>|)>>

  Per ogni costante <math|k>, <math|k> � <math|O<around*|(|1|)>>

  Per <math|m\<leqslant\>p>, <math|n<rsup|m>> �
  <math|O<around*|(|n<rsup|p>|)>>

  Un polinomio di grado <math|m> � <math|O<around*|(|n<rsup|m>|)>>

  <subsection|Teorema>

  Per ogni <math|k>, <math|n<rsup|k>\<in\>O<around*|(|a<rsup|n>|)>>, per ogni
  <math|a\<gtr\>1>

  Una qualsiasi funzione polinomiale ha minore complessit� di una qualsiasi
  funzione esponenziale

  <section|Complessit� di un algoritmo ricorsivo>

  <subsection|Esempio: fattoriale di un numero>

  La funzione � definita come

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
  moltiplicazione pi� il tempo per l'esecuzione applicata a <math|n-1>.
  Quindi

  <\equation*>
    T<around*|(|n|)>=O<around*|(|1|)>+T<around*|(|n-1|)>
  </equation*>

  A questo punto rimpiazziamo gli <math|O<around*|(|1|)>> di
  <math|T<around*|(|1|)>> e <math|T<around*|(|n|)>> con simboli generici di
  costante, diversi fra loro perch� corrispondono a pezzi di programma
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

  Quindi, poich� <math|T<around*|(|n|)>=n*b+a>, abbiamo
  <math|T<around*|(|n|)>\<in\>O<around*|(|n|)>>

  <subsection|Dalla relazione di ricorrenza alla complessit�>

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

  <subparagraph|Esercizio: fibonacci() ricorsivo>

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

  (necessita di revisione, probabilmente � sbagliato)

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
    <item>NULL � un albero binario

    <item>Un nodo <math|p> pi� due alberi binari Bs e Bd forma un albero
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
  contiene pi� di un'etichetta, viene restituito un puntatore al primo

  <\cpp-code>
    Node* findNode(Infotype n, Node* tree) {

    \ \ // L'albero � vuoto, l'etichetta non pu� esserci

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

  Ritorna 1 se l'operazione ha successo, 0 altrimenti. Se l'albero � vuoto,
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

    \ \ // Se il nodo non � stato trovato, restituisco 0 e mi fermo

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
  di nodi che hanno numero dispari di discendenti. Si calcoli la complessit�
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

  La funzione � <math|O<around*|(|n|)>>

  <subsubsection|Compito 1 - Esercizio 4>

  Scrivere una funzione ricorsiva che, dato un albero binario a etichette
  intere, conta il numero di nodi che hanno pi� foglie maggiori o uguali a
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
    <item>Un nodo <math|p> � un albero
  </itemize>

  <\itemize>
    <item>Un nodo pi� una sequenza di alberi
    <math|A<rsub|1>\<ldots\>A<rsub|n>> � un albero
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

  Se l'albero � vuoto, lo inserisce come radice

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
  memorizzazione figlio-fratello, conta il numero di nodi che hanno pi� figli
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

  Un albero binario di ricerca � un albero binario tale che per ogni nodo
  <math|p>

  <\itemize>
    <item>I nodi del sottoalbero sinistro di <math|p> hanno etichetta minore
    dell'etichetta di <math|p>

    <item>I nodi del sottoalbero destro di <math|p> hanno etichetta maggiore
    dell'etichetta <math|p>
  </itemize>

  <subsection|Propriet�>

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

  L'algoritmo ha complessit� <math|O<around*|(|log<around*|(|n|)>|)>>

  <subsubsection|Restituire l'etichetta del nodo pi� piccolo di un albero ed
  eliminare il nodo che la contiene>

  <\cpp-code>
    void deleteMin(Node *& tree, InfoType &m) {

    \ \ if (tree -\<gtr\> left) // C'� un nodo pi� piccolo

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

    \ \ \ \ // n � minore della radice

    \ \ \ \ if (n \<less\> tree -\<gtr\> label) {

    \ \ \ \ \ \ deleteNode(n, tree -\<gtr\> left);

    \ \ \ \ \ \ return;

    \ \ \ \ }

    \ \ \ \ // n � maggiore della radice

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

  Questo algoritmo ha complessit� <math|O<around*|(|log<around*|(|n|)>|)>>

  <section|Heap>

  Un heap � un albero binario quasi bilanciato con le seguenti propriet�:

  <\itemize>
    <item>i nodi dell'ultimo livello sono addossati a sinistra

    <item>in ogni sottoalbero l'etichetta della radice � maggiore o uguale a
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
    propriet� dello heap
  </itemize>

  <\cpp-code>
    void Heap::insert(int x) {

    \ \ h[++last] = x;

    \ \ up(last);

    }
  </cpp-code>

  <\cpp-code>
    // i � l'indice dell'elemento da far risalire

    void Heap::up(int i) {

    \ \ // Se non sono sulla radice

    \ \ if (i \<gtr\> 0) {

    \ \ \ \ // Se l'elemento � maggiore del padre

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

    <item>L'elemento � inferiore al padre
  </itemize>

  La complessit� � <math|O<around*|(|log<around*|(|n|)>|)>> perch� ogni
  chiamata risale di un livello

  <subsubsection|Estrazione>

  <\itemize>
    <item>Restituisce il primo elemento dell'array

    <item>Mette l'ultimo elemento al posto della radice e decrementa last

    <item>Fa scendere l'elemento tramite scambi padre-figlio per mantenere la
    propriet� dello heap
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
    // i � l'indice dell'elemento da far scendere

    void Heap::down(int i) {

    \ \ // son = indice del figlio sinistro (se esiste)

    \ \ int son = 2*i+1;

    \ \ // se i ha un solo figlio (� l'ultimo dell'array)

    \ \ if (son == last) {

    \ \ \ \ // se il figlio � maggiore del padre

    \ \ \ \ if (h[son] \<gtr\> h[i]) {

    \ \ \ \ \ \ // fai lo scambio, altrimenti termina

    \ \ \ \ \ \ exchange(i, last);

    \ \ \ \ }

    \ \ }

    \ \ // se i ha entrambi i figli

    \ \ else if (son \<less\> last) {

    \ \ \ \ // son = indice del figlio maggiore tra i due

    \ \ \ \ if (h[son] \<less\> h[son+1]) son++;

    \ \ \ \ // se il figlio � maggiore del padre

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

  L'algoritmo ha complessit� <math|O<around*|(|log<around*|(|n|)>|)>>

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

  � possibile rilasciare l'iniettivit� e permettere che due elementi diversi
  abbiano lo stesso indirizzo hash. Si ha una collisione quando

  <\equation*>
    h<around*|(|x<rsub|1>|)>=h<around*|(|x<rsub|2>|)>
  </equation*>

  Bisogno gestire le seguenti situazioni:

  <\itemize>
    <item>Come cercare un elemento se il suo posto � occupato da un altro

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

  L'inserimento � fatto con lo stesso criterio

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

  <subsection|Cammino pi� breve>

  <subsubsection|Algoritmo di Dijkstra>

  <\itemize>
    <item>Si applica ai grafi orientati

    <item>Trova i cammini minimi <with|font-series|bold|da un nodo a tutti
    gli altri>

    <item>� basato sulla metodologia <with|font-series|bold|greedy>
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
    accessibili dalle sottoclassi n� dall'esterno

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
  deve chiamarne uno nella lsita di inizializzazione. Pu� non chiamarlo
  esplicitamente se la classe base ha un costruttore di default, che in
  questo caso viene chiamato automaticamente.

  <subsection|Funzioni virtuali>

  <chapter|Basi di dati>

  <section|Normalizzazione>

  In <hlink|informatica|http://it.wikipedia.org/wiki/Informatica> la
  <with|font-series|bold|normalizzazione> � un procedimento volto
  all'eliminazione della ridondanza <hlink|informativa|http://it.wikipedia.org/wiki/Informazione>
  e del rischio di <hlink|incoerenza|http://it.wikipedia.org/wiki/Incoerenza>
  dal <hlink|database|http://it.wikipedia.org/wiki/Database>. Esistono vari
  livelli di normalizzazione (<with|font-shape|italic|forme normali>) che
  certificano la qualit� dello <hlink|schema del
  database|http://it.wikipedia.org/wiki/Schema_di_database>.

  Questo processo si fonda su un semplice criterio: se una
  <hlink|relazione|http://it.wikipedia.org/wiki/Modello_relazionale> presenta
  pi� concetti tra loro indipendenti, la si decompone in relazioni pi�
  piccole, una per ogni concetto. Questo tipo di processo non � sempre
  applicabile in tutte le tabelle, dato che in taluni casi potrebbe
  comportare una perdita d'informazioni.

  <subsection|Prima forma normale>

  <with|font-series|bold|Definizione:> Si dice che una base dati � in 1NF
  (<with|font-shape|italic|prima forma normale>) se vale la seguente
  relazione per ogni relazione contenuta nella base dati: una relazione � in
  1NF se e solo se:

  <\enumerate>
    <item>tutte le righe della relazione hanno lo stesso numero di attributi

    <item>non presenta gruppi di attributi che si ripetono (ossia ciascun
    attributo � definito su un dominio con valori atomici)

    <item>tutti i valori di un attributo sono dello stesso tipo (appartengono
    allo stesso dominio)

    <item>esiste una chiave primaria (ossia esiste un insieme di attributi,
    che identifica in modo univoco ogni tupla della relazione)

    <item>l'ordine delle righe � irrilevante (non � portatore di
    informazioni)
  </enumerate>

  <subsection|Seconda forma normale>

  <with|font-series|bold|Definizione:> Una base dati � invece in 2NF
  (<with|font-shape|italic|seconda forma normale>) quando � in 1NF e per ogni
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

  La tabella avr� quindi la seguente intestazione

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

  La chiave candidata (tale terminologia � riservata alle superchiavi
  minimali, anche dette semplicemente chiavi) � rappresentata dalla tripla
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
    all'esame superato e al corso di laurea a cui lo studente � iscritto.

    <item>"Codice corso di laurea", ``Codice esame'' si perderebbero le
    informazioni relative allo studente che ha superato l'esame

    <item>"Codice corso di laurea", ``Matricola studente'' si perderebbero le
    informazioni relative all'esame superato

    <item>"Matricola studente", ``Codice esame'' si perderebbero le
    informazioni relative al Corso di Laurea di appartenenza.
  </itemize>

  <subsection|Terza forma normale>

  <with|font-series|bold|Definizione:> Una base dati � in 3NF
  (<with|font-shape|italic|terza forma normale>) se � in 2NF e tutti gli
  attributi non-chiave dipendono dalla chiave soltanto, ossia non esistono
  attributi che dipendono da altri attributi non-chiave. Tale normalizzazione
  elimina la dipendenza transitiva degli attributi dalla chiave.

  Per ogni dipendenza funzionale non banale
  <image|http://upload.wikimedia.org/math/c/5/c/c5c6eab38071acc9d029224e005ee003.png|0.6383w|||>
  � vera una delle seguenti condizioni:

  <\itemize>
    <item>X � una superchiave della relazione

    <item>Y � membro della chiave della relazione
  </itemize>

  <with|font-series|bold|Teorema:> Ogni relazione pu� essere portata in 3NF.

  <subparagraph|Dalla soluzione dell'esame:>Una relazione
  <with|font-shape|italic|r> � in 3NF se o la parte sinistra di ogni
  dipendenza � una superchiave di <with|font-shape|italic|r>, oppure ogni
  attributo nella parte destra di ogni dipendenza � contenuto in una chiave
  di <with|font-shape|italic|r>.

  <subsection|Forma normale di Boyce e Codd>

  <with|font-series|bold|Definizione:> Una relazione R � in forma normale di
  Boyce e Codd (BCNF) se e solo se � in 3NF e, per ogni dipendenza funzionale
  non banale <image|http://upload.wikimedia.org/math/c/5/c/c5c6eab38071acc9d029224e005ee003.png|0.6383w|||>,
  <image|http://upload.wikimedia.org/math/0/2/1/02129bb861061d1a052c592e2dc6b383.png|0.6383w|||>
  � una superchiave per R.

  Dato un insieme di relazioni, non � possibile garantire sempre il
  raggiungimento della BCNF; in particolare il mancato raggiungimento di
  questo obiettivo � indice che la base dati � affetta da un'anomalia di
  cancellazione (ossia � possibile perdere dati a seguito di un'operazione di
  cancellazione).

  Es: Facciamo un esempio molto banale, se abbiamo uno schema relazionale
  <image|http://upload.wikimedia.org/math/a/4/b/a4bc7790efbe542081cc59135861490f.png|0.6383w|||>

  Mettiamolo in forma canonica <image|http://upload.wikimedia.org/math/8/3/1/831bc62d5b557a3e7167cc03d892fe64.png|0.6383w|||>.

  Calcoliamo le chiavi: A, B e C non stanno a destra di nessuna dipendenza,
  quindi appartengono a tutte le chiavi

  La chiusura di ABC � ABCDE quindi ABC � una chiave

  Ora, visto che una chiave � una superchiave minimale (ovvero una
  superchiave con tutti attributi essenziali per derivare ogni attributo del
  sistema) lo schema relazionale � in BCNF

  <section|Definizioni>

  <subsection|Miste>

  <subsubsection|Chiusura transitiva di un insieme di dipendenze>

  <subparagraph|Dalla soluzione dell'esame:>

  La chiusura di un insieme di dipendenze �
  <math|F<rsup|+>=<around*|{|X\<rightarrow\>Y <around*|\||
  F\<Rightarrow\>X\<rightarrow\>Y|\<nobracket\>>|}>>

  <subsubsection|Chiusura di un insieme di attributi>

  <with|font-series|bold|Dalla soluzione dell'esame:>

  La chiusura di un insieme di attributi <math|X<rsup|+>> � costituito dagli
  attributi funzionalmente dipendenti da <math|X>

  <subsection|ACID>

  <\itemize>
    <item><with|font-series|bold|atomicit�>: la transazione � indivisibile
    nella sua esecuzione e la sua esecuzione deve essere o totale o nulla,
    non sono ammesse esecuzioni parziali;

    <item><with|font-series|bold|consistenza>: quando inizia una transazione
    il database si trova in uno stato consistente e quando la transazione
    termina il database deve essere in un altro stato consistente, ovvero non
    deve violare eventuali <hlink|vincoli di
    integrit�|http://it.wikipedia.org/wiki/Vincolo_di_integrit%C3%A0>, quindi
    non devono verificarsi contraddizioni
    (<with|font-shape|italic|inconsistenza>) tra i dati archiviati nel DB;

    <item><with|font-series|bold|isolamento>: ogni transazione deve essere
    eseguita in modo isolato e indipendente dalle altre transazioni,
    l'eventuale fallimento di una transazione non deve interferire con le
    altre transazioni in esecuzione;

    <item><with|font-series|bold|durabilit�>: detta anche
    <with|font-series|bold|persistenza>, si riferisce al fatto che una volta
    che una transazione abbia richiesto un <with|font-shape|italic|commit
    work>, i cambiamenti apportati non dovranno essere pi� persi. Per evitare
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
    informazioni sono gi� raccolte in un unico documento associato
    all'oggetto da trattare. Negli ambienti SQL la complessit� di queste
    operazioni, e quindi il peso computazionale, cresce con l'ingigantirsi
    della base di dati, del numero di tabelle e delle informazioni da
    trattare. Il NoSQL, invece, non ha limiti di dimensioni in questo senso.
    Cos� si ottengono migliori prestazioni e performance anche in ambienti di
    Big Data. Lo scotto da pagare a tutta questa flessibilit� e alla
    propriet� di aggregazione dei database NoSQL � la
    <with|font-series|bold|duplicazione delle informazioni>. In realt�, i
    costi sempre meno proibitivi dei sistemi di storage rendono questo
    svantaggio poco importante.

    <item><with|font-series|bold|Assenza di schema>: i database NoSQL sono
    privi di schema in quanto il documento JSON contiene tutti i campi
    necessari, senza necessit� di definizione. In questo modo, possiamo
    arricchire le nostre applicazioni di nuovi dati e informazioni,
    definibili liberamente all'interno dei documenti JSON <strong|senza
    rischi per l'integrit� dei dati>. I database non relazionali, a
    differenza di quelli SQL, si rivelano quindi adatti a inglobare
    velocemente nuovi tipi di dati e a conservare dati semistrutturati o non
    strutturati.

    <item><with|font-series|bold|Scalabilit� orizzontale garantita>:
    l'aggregazione dei dati e l'assenza di uno schema definito a priori offre
    l'opportunit� di scalare orizzontalmente i database NoSQL senza
    difficolt� e senza rischi operativi.
  </enumerate>

  <with|font-series|bold|Vantaggi di un sistemi NoSQL da compito d'esame>

  Quali sono i vantaggi di un DBMS NoSQL e per quali applicazioni sono
  rilevanti?

  Scalabilit� orizzontale, sharding, high availability.

  Le applicazioni interessate a queste caratteristiche sono quelle che
  richiedono tempi di risposta molto bassi senza necessitare di controlli di
  consistenza molto forti.

  <subsubsection|Differenze con un database SQL>

  <subparagraph|Da soluzione esame:>

  Nei DBMS non relazionali � possibile attuare sharding senza perdere di
  efficienza nell'esecuzione di query complesse, nei relazionali no.

  Nei DBMS non relazionali si ha replicazione estesa di nodi anche a caldo e
  quindi scaling orizzontale invece che verticale.

  Nei DBMS non relazionali non � possibile attuare controlli sull'integrit�
  dei dati e quindi garantirne la consistenza, e non esiste uno standard
  condiviso per la memorizzazione e l'accesso ai dati.

  <subsubsection|Equivalente ACID per database NOSQL>

  <subparagraph|Da una domanda di un compito:>

  Perch� i sistemi NoSQL non sono basati sulle propriet� ACID. Su quale
  paradigma sono basati?

  I sistemi NoSQL sono basati sul paradigma Base, ovvero Basically Available,
  Soft state, Eventual Consistency, invece che godere delle propriet� di
  Atomicit�, Coerenza, Isolamento e Durabilit�. La coerenza dei dati in un
  sistema sempre disponibile e altamente distribuito non � garantibile.

  \;

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
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3.4|1>>
    <associate|auto-100|<tuple|3.3|?>>
    <associate|auto-101|<tuple|3.3.1|?>>
    <associate|auto-102|<tuple|3.3.1|?>>
    <associate|auto-11|<tuple|2.4|2>>
    <associate|auto-12|<tuple|3|2>>
    <associate|auto-13|<tuple|3.1|2>>
    <associate|auto-14|<tuple|3.2|2>>
    <associate|auto-15|<tuple|1|?>>
    <associate|auto-16|<tuple|2|?>>
    <associate|auto-17|<tuple|3|?>>
    <associate|auto-18|<tuple|4|?>>
    <associate|auto-19|<tuple|4.1|?>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|4.2|?>>
    <associate|auto-21|<tuple|5|?>>
    <associate|auto-22|<tuple|5.1|?>>
    <associate|auto-23|<tuple|5.2|?>>
    <associate|auto-24|<tuple|5.2.1|?>>
    <associate|auto-25|<tuple|5.2.2|?>>
    <associate|auto-26|<tuple|5.2.3|?>>
    <associate|auto-27|<tuple|5.2.4|?>>
    <associate|auto-28|<tuple|5.2.5|?>>
    <associate|auto-29|<tuple|5.2.6|?>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-30|<tuple|5.2.7|?>>
    <associate|auto-31|<tuple|6|?>>
    <associate|auto-32|<tuple|6.1|?>>
    <associate|auto-33|<tuple|6.1.1|?>>
    <associate|auto-34|<tuple|6.1.2|?>>
    <associate|auto-35|<tuple|6.1.3|?>>
    <associate|auto-36|<tuple|6.1.4|?>>
    <associate|auto-37|<tuple|6.1.5|?>>
    <associate|auto-38|<tuple|7|?>>
    <associate|auto-39|<tuple|7.1|?>>
    <associate|auto-4|<tuple|2.1|1>>
    <associate|auto-40|<tuple|7.2|?>>
    <associate|auto-41|<tuple|7.2.1|?>>
    <associate|auto-42|<tuple|7.2.2|?>>
    <associate|auto-43|<tuple|7.2.3|?>>
    <associate|auto-44|<tuple|7.2.4|?>>
    <associate|auto-45|<tuple|8|?>>
    <associate|auto-46|<tuple|8.1|?>>
    <associate|auto-47|<tuple|8.2|?>>
    <associate|auto-48|<tuple|8.2.1|?>>
    <associate|auto-49|<tuple|8.2.2|?>>
    <associate|auto-5|<tuple|2.2|1>>
    <associate|auto-50|<tuple|8.2.3|?>>
    <associate|auto-51|<tuple|8.2.4|?>>
    <associate|auto-52|<tuple|9|?>>
    <associate|auto-53|<tuple|9.1|?>>
    <associate|auto-54|<tuple|9.1.1|?>>
    <associate|auto-55|<tuple|9.2|?>>
    <associate|auto-56|<tuple|9.2.1|?>>
    <associate|auto-57|<tuple|9.2.1.1|?>>
    <associate|auto-58|<tuple|9.2.1.1.1|?>>
    <associate|auto-59|<tuple|9.2.1.2|?>>
    <associate|auto-6|<tuple|2.3|1>>
    <associate|auto-60|<tuple|9.2.1.3|?>>
    <associate|auto-61|<tuple|10|?>>
    <associate|auto-62|<tuple|10.1|?>>
    <associate|auto-63|<tuple|10.1.1|?>>
    <associate|auto-64|<tuple|10.1.2|?>>
    <associate|auto-65|<tuple|10.2|?>>
    <associate|auto-66|<tuple|10.2.1|?>>
    <associate|auto-67|<tuple|10.2.2|?>>
    <associate|auto-68|<tuple|10.3|?>>
    <associate|auto-69|<tuple|10.3.1|?>>
    <associate|auto-7|<tuple|2.3.1|1>>
    <associate|auto-70|<tuple|11|?>>
    <associate|auto-71|<tuple|11.1|?>>
    <associate|auto-72|<tuple|11.2|?>>
    <associate|auto-73|<tuple|11.3|?>>
    <associate|auto-74|<tuple|12|?>>
    <associate|auto-75|<tuple|12.1|?>>
    <associate|auto-76|<tuple|12.2|?>>
    <associate|auto-77|<tuple|12.3|?>>
    <associate|auto-78|<tuple|2|?>>
    <associate|auto-79|<tuple|1|?>>
    <associate|auto-8|<tuple|2.3.2|1>>
    <associate|auto-80|<tuple|1.1|?>>
    <associate|auto-81|<tuple|1.2|?>>
    <associate|auto-82|<tuple|1.3|?>>
    <associate|auto-83|<tuple|1.3.0.0.1|?>>
    <associate|auto-84|<tuple|1.4|?>>
    <associate|auto-85|<tuple|2|?>>
    <associate|auto-86|<tuple|2.1|?>>
    <associate|auto-87|<tuple|2.1.1|?>>
    <associate|auto-88|<tuple|2.1.1.0.2|?>>
    <associate|auto-89|<tuple|2.1.2|?>>
    <associate|auto-9|<tuple|2.3.3|1>>
    <associate|auto-90|<tuple|2.2|?>>
    <associate|auto-91|<tuple|2.3|?>>
    <associate|auto-92|<tuple|2.3.1|?>>
    <associate|auto-93|<tuple|2.3.2|?>>
    <associate|auto-94|<tuple|2.3.2.0.3|?>>
    <associate|auto-95|<tuple|2.3.3|?>>
    <associate|auto-96|<tuple|2.3.3.0.4|?>>
    <associate|auto-97|<tuple|3|?>>
    <associate|auto-98|<tuple|3.1|?>>
    <associate|auto-99|<tuple|3.2|?>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Complessit�
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Complessit�
      di un algoritmo ricorsivo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Esempio: fattoriale di un
      numero <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Dalla relazione di
      ricorrenza alla complessit� <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      Esercizio: fibonacci() ricorsivo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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

      <with|par-left|<quote|1tab>|7.1<space|2spc>Propriet�
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
      nodo pi� piccolo di un albero ed eliminare il nodo che la contiene
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

      <with|par-left|<quote|1tab>|10.3<space|2spc>Cammino pi� breve
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|2tab>|10.3.1<space|2spc>Algoritmo di Dijkstra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Templates>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70><vspace|0.5fn>

      <with|par-left|<quote|1tab>|11.1<space|2spc>Esempi di definizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>>

      <with|par-left|<quote|1tab>|11.2<space|2spc>Parametri costanti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      <with|par-left|<quote|1tab>|11.3<space|2spc>Variabili statiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Derivazione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74><vspace|0.5fn>

      <with|par-left|<quote|1tab>|12.1<space|2spc>Specificatori d'accesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <with|par-left|<quote|1tab>|12.2<space|2spc>Costruzione degli oggetti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-76>>

      <with|par-left|<quote|1tab>|12.3<space|2spc>Funzioni virtuali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-77>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Basi
      di dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-78><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Normalizzazione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-79><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Prima forma normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Seconda forma normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Terza forma normale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>>

      Dalla soluzione dell'esame: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83><vspace|0.15fn>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Forma normale di Boyce e
      Codd <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Definizioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Miste
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-86>>

      <with|par-left|<quote|2tab>|2.1.1<space|2spc>Chiusura transitiva di un
      insieme di dipendenze <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>ACID
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-88>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Database NOSQL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-89>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Vantaggi e svantaggi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-90>>

      <with|par-left|<quote|2tab>|2.3.2<space|2spc>Differenze con un database
      SQL <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-91>>

      Da soluzione esame: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-92><vspace|0.15fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Schedule>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>VSR
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-94>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>CSR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-95>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Locking a due fasi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>>

      <with|par-left|<quote|2tab>|3.3.1<space|2spc>Come determinare se uno
      schedule � generato da uno scheduer basato su 2PL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>
    </associate>
  </collection>
</auxiliary>
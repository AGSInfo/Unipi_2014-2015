<TeXmacs|1.99.2>

<style|<tuple|book|italian>>

<\body>
  <doc-data|<doc-title|Appunti per la prova pratica di
  Algoritmi>|<doc-author|<author-data|<author-name|Gianluca Mondini>>>>

  Non mi ritengo responsabile per eventuali errori contenuti nella dispensa.

  <section|Vettori>

  <\cpp-code>
    #include \<less\>vector\<gtr\>
  </cpp-code>

  <subsection|Esempi di costruttori>

  <\cpp-code>
    // Creazione di un vettore vuoto

    std::vector\<less\>int\<gtr\> first;

    \;

    // Inserimento di due valori

    std::vector\<less\>int\<gtr\> second (4,100);

    \;

    // Copia di un pezzo di second

    std::vector\<less\>int\<gtr\> third(second.begin(), second.end());

    \;

    // Copia di third

    std::vector\<less\>int\<gtr\> fourth (third);

    \;

    // Creazione a partire da un array

    int myints[] = {12, 4, 532, 1, 4};

    std::vector\<less\>int\<gtr\> fifth (myints, myints + sizeof(myints) /
    sizeof(int);
  </cpp-code>

  <subsection|Iterare su di un vettore>

  <\cpp-code>
    // Scrivo il contenuto di un vettore

    for (std::vector\<less\>int\<gtr\>::iterator it = fifth.begin(); it !=
    fifth.end(); i++) {

    \ \ \ \ \ \ \ \ std::cout \<less\>\<less\> ' ' \<less\>\<less\> *it;

    }

    std::cout \<less\>\<less\> std::endl;
  </cpp-code>

  <subsection|Modificare un vettore>

  <\cpp-code>
    // Inserimento in coda

    myvector.push_back(3);

    \;

    // Rimozione dalla coda

    myvector.pop_back();
  </cpp-code>

  <section|Stringhe>

  <\cpp-code>
    #include \<less\>string\<gtr\>
  </cpp-code>

  <subsection|Esempi di costruttori>

  <\cpp-code>
    std::string s0 ("Hello world!");
  </cpp-code>

  <subsection|Iterare su una stringa>

  <\cpp-code>
    std::string str ("Ciao mondo!");

    for (std::string::iterator it = str.begin(); it!=str.end(); i++) {

    \ \ \ \ \ \ \ \ std::cout \<less\>\<less\> *it;

    }

    std::cout \<less\>\<less\> std::endl;
  </cpp-code>

  <subsection|Funzioni utili>

  <\cpp-code>
    // Lunghezza

    str.length();

    \;

    // Appendere in fondo ad una stringa

    std::string str;

    std::ifstream file ("test.txt", std::ios::in);

    if (file) {

    \ \ \ \ \ \ \ \ while (!file.eof()) str.push_back(file.get());

    }

    std::cout \<less\>\<less\> str \<less\>\<less\> std::endl;

    \;

    // Appendere una stringa ad un'altra stringa

    str2.append(str1);

    \;

    // Cercare un elemento in una stringa

    std::size_t found = str.find(str2);

    if (found != std::string::npos) {

    \ \ \ \ \ \ \ \ std::cout \<less\>\<less\> found \<less\>\<less\>
    std::endl;

    }

    \;

    // Generare sottostringhe

    std::string str = "Sono una stringa di prova";

    // Parto dal char 3 e ne estraggo 5

    std::string str2 = str.substr(3, 5);

    // Effettuo una ricerca

    str::size_t pos = str.find("una");

    // Genero una stringa contente "una stringa di prova"

    std::string str3 = str.substr(pos);
  </cpp-code>

  <subsection|Conversione da <with|font-shape|italic|string> ad altri tipi>

  <\cpp-code>
    #include \<less\>stdlib.h\<gtr\> \ \ \ \ /* atoi */

    string stringa;

    int intero = atoi(stringa.c_str())
  </cpp-code>

  <subsection|Conversione da <with|font-shape|italic|string> ad altri tipi -
  Solo <with|font-shape|italic|C++ 11>>

  <\cpp-code>
    using namespace std;

    string str_dec = "2001, A Space Odyssey";

    string str_hex = "40c3";

    string str_bin = "-1010101110101";

    string str_auto = "0x7f";

    \;

    string::size_type sz;

    \;

    int i_dec = stoi (str_dec, &sz);

    int i_hex = stoi (str_hex, nullptr, 16);

    int i_bin = stoi (str_bin, nullptr, 2);

    int i_auto = stoi (str_auto, nullptr, 0);
  </cpp-code>

  <subsection|Inversione di una stringa>

  <\cpp-code>
    #include \<algorithm\>

    string str = "ciao";

    string reversed_str = str;

    reverse(reversed_str.begin(), reversed_str.end());

    cout \<less\>\<less\> reversed_str \<less\>\<less\> endl; // $ oaic
  </cpp-code>

  <section|Alberi binari>

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

  Un heap (binario) � una struttura dati composta da un array che possiamo
  considerare come un albero binario quasi completo. Ogni nodo dell'albero
  corrisponde a un elemento dell'array. Tutti i livelli dell'albero sono
  compeltamente riempiti, tranne eventualmente l'ultimo l'ultimo che pu�
  essere riempito da sinistra fino ad un certo punto.

  <strong|Definizione alternativa>

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

  <section|Complessit� di un algoritmo>

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
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|2.5|?>>
    <associate|auto-11|<tuple|2.6|?>>
    <associate|auto-12|<tuple|3|?>>
    <associate|auto-13|<tuple|4|?>>
    <associate|auto-14|<tuple|4.1|?>>
    <associate|auto-15|<tuple|4.2|?>>
    <associate|auto-16|<tuple|4.2.1|?>>
    <associate|auto-17|<tuple|4.2.2|?>>
    <associate|auto-18|<tuple|4.2.3|?>>
    <associate|auto-19|<tuple|4.2.4|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-20|<tuple|4.2.5|?>>
    <associate|auto-21|<tuple|4.2.6|?>>
    <associate|auto-22|<tuple|4.2.7|?>>
    <associate|auto-23|<tuple|5|?>>
    <associate|auto-24|<tuple|5.1|?>>
    <associate|auto-25|<tuple|5.1.1|?>>
    <associate|auto-26|<tuple|5.1.2|?>>
    <associate|auto-27|<tuple|5.1.3|?>>
    <associate|auto-28|<tuple|5.1.4|?>>
    <associate|auto-29|<tuple|5.1.5|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-30|<tuple|6|?>>
    <associate|auto-31|<tuple|6.1|?>>
    <associate|auto-32|<tuple|6.2|?>>
    <associate|auto-33|<tuple|6.2.1|?>>
    <associate|auto-34|<tuple|6.2.2|?>>
    <associate|auto-35|<tuple|6.2.3|?>>
    <associate|auto-36|<tuple|6.2.4|?>>
    <associate|auto-37|<tuple|7|?>>
    <associate|auto-38|<tuple|7.1|?>>
    <associate|auto-39|<tuple|7.2|?>>
    <associate|auto-4|<tuple|1.3|?>>
    <associate|auto-40|<tuple|7.2.1|?>>
    <associate|auto-41|<tuple|7.2.2|?>>
    <associate|auto-42|<tuple|7.2.3|?>>
    <associate|auto-43|<tuple|7.2.4|?>>
    <associate|auto-44|<tuple|8|?>>
    <associate|auto-45|<tuple|8.1|?>>
    <associate|auto-46|<tuple|8.1.1|?>>
    <associate|auto-47|<tuple|8.2|?>>
    <associate|auto-48|<tuple|8.2.1|?>>
    <associate|auto-49|<tuple|8.2.1.1|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|auto-50|<tuple|8.2.1.1.1|?>>
    <associate|auto-51|<tuple|8.2.1.2|?>>
    <associate|auto-52|<tuple|8.2.1.3|?>>
    <associate|auto-53|<tuple|9|?>>
    <associate|auto-54|<tuple|9.1|?>>
    <associate|auto-55|<tuple|9.1.1|?>>
    <associate|auto-56|<tuple|9.1.2|?>>
    <associate|auto-57|<tuple|9.2|?>>
    <associate|auto-58|<tuple|9.2.1|?>>
    <associate|auto-59|<tuple|9.2.2|?>>
    <associate|auto-6|<tuple|2.1|?>>
    <associate|auto-60|<tuple|9.3|?>>
    <associate|auto-61|<tuple|9.3.1|?>>
    <associate|auto-62|<tuple|10|?>>
    <associate|auto-63|<tuple|10.1|?>>
    <associate|auto-64|<tuple|10.2|?>>
    <associate|auto-65|<tuple|10.3|?>>
    <associate|auto-66|<tuple|11|?>>
    <associate|auto-67|<tuple|11.1|?>>
    <associate|auto-68|<tuple|11.2|?>>
    <associate|auto-69|<tuple|12|?>>
    <associate|auto-7|<tuple|2.2|?>>
    <associate|auto-70|<tuple|12.1|?>>
    <associate|auto-71|<tuple|12.1.0.0.1|?>>
    <associate|auto-72|<tuple|12.1.0.0.2|?>>
    <associate|auto-73|<tuple|12.1.0.0.3|?>>
    <associate|auto-74|<tuple|13.1.0.0.2|?>>
    <associate|auto-75|<tuple|13.1.0.0.3|?>>
    <associate|auto-8|<tuple|2.3|?>>
    <associate|auto-9|<tuple|2.4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Vettori <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Esempi di costruttori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Iterare su di un vettore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Modificare un vettore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      2<space|2spc>Stringhe <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Esempi di costruttori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Iterare su una stringa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Funzioni utili
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Conversione da
      <with|font-shape|<quote|italic>|string> ad altri tipi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Conversione da
      <with|font-shape|<quote|italic>|string> ad altri tipi - Solo
      <with|font-shape|<quote|italic>|C++ 11>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Inversione di una stringa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      3<space|2spc>Alberi binari <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      4<space|2spc>Alberi binari <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Numero di foglie e di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|4.2.1<space|2spc>Contare il numero dei nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|4.2.2<space|2spc>Contare il numero delle
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|2tab>|4.2.3<space|2spc>Cercare un etichetta e
      resistuire un puntatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|2tab>|4.2.4<space|2spc>Eliminare tutto l'abero
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|4.2.5<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|2tab>|4.2.6<space|2spc>Compito 2 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|4.2.7<space|2spc>Compito 1 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      5<space|2spc>Alberi generici <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|5.1.1<space|2spc>Contare il numero di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|2tab>|5.1.2<space|2spc>Contare il numero di
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|2tab>|5.1.3<space|2spc>Inserire un nodo in fondo
      ad una lista di fratelli <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|2tab>|5.1.4<space|2spc>Inserire un nodo son come
      ultimo figlio di father <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|5.1.5<space|2spc>Compito 1 - Esercizio 5
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      6<space|2spc>Alberi binari di ricerca
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Propriet�
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1tab>|6.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|6.2.1<space|2spc>Cercare un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|6.2.2<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|2tab>|6.2.3<space|2spc>Restituire l'etichetta del
      nodo pi� piccolo di un albero ed eliminare il nodo che la contiene
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|6.2.4<space|2spc>Cancellare un nodo ?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      7<space|2spc>Heap <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      <with|par-left|<quote|1tab>|7.1<space|2spc>Calcolare le parentele
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|7.2<space|2spc>Classe Heap
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|2tab>|7.2.1<space|2spc>Costruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|2tab>|7.2.2<space|2spc>Distruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|2tab>|7.2.3<space|2spc>Inserimento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|7.2.4<space|2spc>Estrazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      8<space|2spc>Ricerca hash <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      <with|par-left|<quote|1tab>|8.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|8.1.1<space|2spc>Ricerca tramite hash
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|8.2<space|2spc>Metodo hash ad accesso non
      diretto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|2tab>|8.2.1<space|2spc>Soluzione: hash modulare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|4tab>|Legge di scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49><vspace|0.15fn>>

      Agglomerato <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50><vspace|0.15fn>

      <with|par-left|<quote|4tab>|Funzione di ricerca con scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Funzione di insierimento in presenza di
      cancellazioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52><vspace|0.15fn>>

      9<space|2spc>Grafi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      <with|par-left|<quote|1tab>|9.1<space|2spc>Rappresentazioni in memoria
      di grafi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|2tab>|9.1.1<space|2spc>Tramite liste di adiacenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|9.1.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|1tab>|9.2<space|2spc>Rappresentazioni in memoria
      di grafi con nodi ed archi etichettati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|2tab>|9.2.1<space|2spc>Tramite liste di adiacenza
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|2tab>|9.2.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|9.3<space|2spc>Cammino pi� breve
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|2tab>|9.3.1<space|2spc>Algoritmo di Dijkstra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      10<space|2spc>Templates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>

      <with|par-left|<quote|1tab>|10.1<space|2spc>Esempi di definizione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|10.2<space|2spc>Parametri costanti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|1tab>|10.3<space|2spc>Variabili statiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      11<space|2spc>Derivazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>

      <with|par-left|<quote|1tab>|11.1<space|2spc>Specificatori d'accesso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67>>

      <with|par-left|<quote|1tab>|11.2<space|2spc>Costruzione degli oggetti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      12<space|2spc>Complessit� di un algoritmo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>

      <with|par-left|<quote|1tab>|12.1<space|2spc>Dalla relazione di
      ricorrenza alla complessit� <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      Esempio: fibonacci() ricorsivo <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71><vspace|0.15fn>

      Esempio: mergeSort() <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72><vspace|0.15fn>

      Esempio: split() <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73><vspace|0.15fn>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <section|Vettori>

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

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|2.5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|2.6|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|1.3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|2.1|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|2.2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|2.3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|2.4|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Vettori>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
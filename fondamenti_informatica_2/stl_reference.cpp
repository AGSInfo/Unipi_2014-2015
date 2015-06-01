// Questo file contiene alcuni esempi di utilizzo
// di funzioni e classi della STL
// Non è garantita la correttezza del codice
//
// Gianluca Mondini

// ##############################
// VETTORI
// ##############################

// ------------------------------
// Esempi costruttori
// ------------------------------

// Creazione di un vettore vuoto
std::vector<int> first;

// Inserimento di due valori
std::vector<int> second (4,100);

// Copia di un pezzo di second
std::vector<int> third(second.begin(), second.end());

// Copia di third
std::vector<int> fourth (third);

// Creazione a partire da un array
int myints[] = {12, 4, 532, 1, 4};
std::vector<int> fifth (myints, myints + sizeof(myints) / sizeof(int);

// ------------------------------
// Iteratore su vettore
// ------------------------------

// Scrivo il contenuto di un vettore
for (std::vector<int>::iterator it = fifth.begin(); it != fifth.end(); i++) {
	std::cout << ' ' << *it;
}
std::cout << std::endl;

// ------------------------------
// Modificatori di vettori
// ------------------------------

// Inserimento in coda
myvector.push_back(3);

// Rimozione dalla coda
myvector.pop_back();

// ##############################
// STRINGHE
// ##############################

// ------------------------------
// Esempi costruttori
// ------------------------------

std::string s0 ("Hello world!");

// ------------------------------
// Iteratore su stringa
// ------------------------------

std::string str ("Ciao mondo!");
for (std::string::iterator it = str.begin(); it!=str.end(); i++) {
	std::cout << *it;
}
std::cout << std::endl;

// ------------------------------
// Funzioni utili
// ------------------------------

// Lunghezza
str.length();

// Appendere in fondo ad una stringa
std::string str;
std::ifstream file ("test.txt", std::ios::in);
if (file) {
	while (!file.eof()) str.push_back(file.get());
}
std::cout << str << std::endl;

// Appendere una stringa ad un'altra stringa
str2.append(str1);

// Cercare un elemento in una stringa
std::size_t found = str.find(str2);
if (found != std::string::npos) {
	std::cout << found << std::endl;
}

// Generare sottostringhe
std::string str = "Sono una stringa di prova";
// Parto dal char 3 e ne estraggo 5
std::string str2 = str.substr(3, 5);
// Effettuo una ricerca
str::size_t pos = str.find("una");
// Genero una stringa contente "una stringa di prova"
std::string str3 = str.substr(pos);

// ------------------------------
// Conversione da string ad altri tipi
// ------------------------------

using namespace std;
string str_dec = "2001, A Space Odyssey";
string str_hex = "40c3";
string str_bin = "-1010101110101";
string str_auto = "0x7f";

string::size_type sz;

int i_dec = stoi (str_dec, &sz);
int i_hex = stoi (str_hex, nullptr, 16);
int i_bin = stoi (str_bin, nullptr, 2);
int i_auto = stoi (str_auto, nullptr, 0);


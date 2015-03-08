Appunti Analisi IIA cura di Sieni Alessandro e Gianluca Mondini
1 Appunti del 3 marzo 2015   
1.1 Definizioni   
1.1.1 Convergenza   
1.1.2 Sfera   
1.1.3 Punto intero   
1.1.4 Punto esterno   
1.1.5 Punto di frontiera   
1.1.6 Insieme aperto/chiuso   
1.1.7 Punto di accumulazione   
1.1.8 Punto isolato   
1.1.9 Insieme limitato   
1.1.10 Punto di frontiera   
2 Appunti del 4 marzo 2015   
2.1 Diametro di un insieme   
2.1.1 Definizione   
2.1.2 Esempi   
2.1.3 Teorema   
2.2 Convergenza di successioni   
2.2.1 Lemma   
2.2.2 Teorema   
Ipotesi   
Tesi   
Dimostrazione   
2.2.3 Definizione   
2.2.4 Teorema 1   
2.2.5 Teorema 2   
Tesi   
Dimostrazione   
2.2.6 Esempio   
2.3 Continuità   
2.3.1 Definizione   
2.3.2 Teorema sulle funzioni continue a valori vettoriali   
Ipotesi:   
Tesi:    
2.3.3 Definizione di convergenza   
2.3.4 Esempio   
3 Appunti del 5 marzo 2015   
3.1 Dimostrazione del 4/3/15 rivisitata   
3.1.1 Ipotesi   
3.1.2 Tesi   
3.1.3 Dimostrazione   
3.2 Fatto   
3.3 Definizione   
3.4 Teorema della permanenza del segno   
3.4.1 Ipotesi   
3.4.2 Tesi   
3.4.3 Dimostrazione   
3.5 Teorema di continuità della funzione somma (nome provvisorio)   
3.5.1 Ipotesi   
3.5.2 Tesi   
3.5.3 Dimostrazione   
3.6 Primo teorema di composizione   
3.6.1 Ipotesi   
3.6.2 Tesi   
3.6.3 Dimostrazione   
4 Ciao   
Appunti del 3 marzo 2015
Definizioni
Convergenza

∀ ϵ>0 ∃ ν : L-ϵ<x_n<L+ϵ ∀ n>ν
Sfera
B_δ(x_0)={y∈X : d(y,x_0) < δ}
Una sfera è un insieme di elementi che distano dal centro della sfera (indicato dall'elemento tra parentesi) di massima distanza uguale al raggio (indicato dal pedice sulla lettera B).Nel caso in cui (come quella sopra) la distanza sia obbligatoriamente minore del raggio allora la sfera si dice aperta, altrimenti se la distanza è minore o uguale del raggio la sfera si dice chiusa.Esempio di sfera chiusa:
B_δ(x_0)={y∈X : d(y,x_0)≤δ}
Quando siamo in uno spazio metrico la sfera viene definita anche intorno.
Punto intero
Un punto x_0si dice interno se preso un insieme Ω⊆R^n si verifica la seguente condizione :
∃ δ>0:B_δ(x_0)⊆Ω
Ovvero spiegato a parole se l'insieme Ω contiene il punto (ovvero il centro della sfera) ed anche tutta la sfera di raggio δ a piacere.
Punto esterno
Un punto x_0 si dice esterno ad un insieme Ω∈R^n se :
∃ δ>0 : B_δ(x_0)∩Ω=0
Ovvero un punto si dice esterno ad un insieme se una qualunque sfera centrata nel punto x_0 di raggio a piacere non si interseca con l'insieme.
Punto di frontiera
Un punto x_0si dice di frontiera se preso un insieme Ω⊆R^n si verifica la seguente condizione :
∀ δ>0 ∃ x_1,x_2∈B_δ(x_0) : x_1∈Ω* e* x_2∋Ω
Ovvero un punto si dice di frontiera se sta al "bordo"dell'insieme, ovvero se presa una qualunque sfera centrata nel punto x_0 ci sarà almeno un punto appartenente alla sfera interno all'insieme e uno esterno all'insieme.
Insieme aperto/chiuso
Un insieme si dice aperto se ogni suo punto è interno (non contenendo quindi alcun punto di frontiera).Un insieme si dice chiuso se contiene la propria frontiera.
Punto di accumulazione
Un punto x_0 si dice di accumulazione di un insieme Ω (si scrive x_0∈∂* Ω se :
∀ δ>0 ∃ x∈ B_δ(x_0) ∩ Ω* x≠x_0
Punto isolato
Un punto x_0 si dice isolato rispetto ad un insieme Ω se :
∃ δ : Ω ∩ B_δ(x_0)=x_0
Un esempio di punto isolato può essere un generico punto x_0 appartenente ad Ω, che viene definito nel seguente mod: Ω=Ω'+{x_0} con Ω' e {x_0} molto distanti.
Insieme limitato
Un insieme Ω si dice limitato se
∃ [H,K]⊇Ω
Quindi se l'insieme Ω è contenuto in un intervallo chiuso i cui estremi sono H e K.Un altro modo per definire un'insieme limitato è:
∃ x_0,δ : Ω⊆B_δ(x_0)
Ovvero un insieme si dice limitato se esiste un punto x_0 la cui sfera di raggio δ di dimensione a piacere contiene tutto l'insieme. Dato che una sfera è limitata se contiene tutto l'insieme anche quest'ultimo per forza di cose dovrà essere limitato.
Un punto x_0 si dice esterno ad un insieme Ω∈R^n se :
∃ δ>0 : B_δ(x_0)∩Ω=0
Ovvero un punto si dice esterno ad un insieme se una qualunque sfera centrata nel punto di raggio a piacere non si interseca con l'insieme.
Punto di frontiera
Un punto x_0si dice di frontiera se preso un insieme Ω⊆R^n si verifica la seguente condizione :
∀ δ>0 ∃ x_1,x_2∈B_δ(x_0) : x_1∈Ω* e* x_2∋Ω
Ovvero un punto si dice di frontiera se sta al bordo dell'insieme, ovvero se presa una qualunque sfera centrata nel punto x_0 ci sarà almeno un punto appartenente alla sfera interno all'insieme e uno esterno all'insieme.
Appunti del 4 marzo 2015
Diametro di un insieme
Definizione
Il diametro di un insieme Ω è definito come :
sup_(x,y∈Ω)|x-y|
Esempi
Consideriamoci in R^2 e più precisamente consideriamo Ω come il cerchio unitario, quindi da ciò ne deriva che presi x,y∈Ω, |x|≤1* e |y|≤1 quindi |x-y|≤2 e dalla disuguaglianza triangolare ( che ricordiamo dice |x+y|≤|x|+|y| ):
|x-y|≤|x|+|-y|⟹|x-y|≤|x|+|y|≤1+1=2
Quindi considerando la sfera B_δ(x_0) e presi x=(0,1) e y=(-1,0) otteniamo che:
sup_(B_δ(x_0))*|x-y|≥|(1,0)-(-1,0)|=|(2,0)|=2
La disuguaglianza sopra deriva dal fatto che l'estremo superiore di |x-y| è sempre maggiore uguale di |x-y| qualunque punto si scelga, come ad esempio i punti x=(0,1) e y=(-1,0). Altro esempio Scelto
Ω={x∈R^2 : |x|<1} ⟹  Sfera aperta
Abbiamo già provato prima che 2 è un maggiorante e dalla definizione di diametro otteniamo che:
diam Ω≤2
In quanto definito la sfera come un insieme aperto e quindi di conseguenza |y-x|=2-2*ϵ. Il 2*ϵ deriva dal fatto che essendo aperta la sfera (ovvero che |x|<1 ) il grande valore che può assumere sarà 1 - una piccolissima, quanto si vuole, quantità che noi chiameremo ϵ che gli impedirà di raggiungere 1. Ciò avviene anche quando x tenta di raggiungere il valore di -1 che in valore assoluto corrisponde ad 1, quindi posto x=1-ϵ e y=-1+ϵ si ottiene 1-ϵ-(-1+ϵ)=2-2*ϵ.
Teorema
Se un insieme Ω  è limitato ⇔ diam(Ω) < +∞
Convergenza di successioni
Lemma
Teorema
Ipotesi
x∈R^N ⟹x=(x_1,x_2,......,x_N)
Tesi
|x_i|≤|x| ∀ i=1....*N 
Dimostrazione
Consideriamo
|x|≤sqrt(N)∗max_(i=1...*N)(|x_i|)
Da cui otteniamo sostituendo alla norma del vettore il modo con cui è possibile calcolarla
sqrt(sum_(i=1)^n(x_i)^2)≤sqrt(N)∗max_(i=1...*N)(|x_i|)
A questo punto effettuiamo una stima dall'alto considerando che :
sum_(i=1)^n(x_i)^2≥sqrt(x_i^2)=|x_i| ∀ i=1....*n
Mentre per effettuare una stima dal basso poniamo la seguente equazione:
sum_(i=1)^nx_i^2≤N∗max_(i=1...*n)(x_i)^2
Adesso possiamo applicare la radice a entrambi i membri perché non varia il segno della disequazione e otteniamo:
sqrt(sum_(i=1)^nx_i^2)≤sqrt(N∗(max_(i=1...*n)(x_i))^2)
Ma dato che (max_(i=1...*n)(x_i))^2 è uguale ad max_(i=1...*n)(x_i)^2 quindi anche sqrt((max_(i=1...*n)(x_i))^2) è uguale a sqrt(max_(i=1...*n)(x_i)^2) che a sua volta corrisponde a max_(i=1...*n)|(x_i)|, portando anche a termine la stima dal basso e quindi la dimostrazione.
Definizione
La definizione di convergenza è:
∀ ϵ>0 ∃ δ : ∀ n>δ*  |x_n-δ|<ϵ
In poche parole la convergenza di una successione vettoriale (ovvero composta da vettori e non scalari) convergerà al punto le cui componenti corrisponderanno al punto di convergenza di ogni singola componente.
Teorema 1
Teorema: Supponiamo che l'insieme C si chiuso e che la successione x_n∈C  che x_n→x
Allora:  x∈C
DIMOSTRAZIONE 
Ipotizziamo per assurdo che x∋C . Ma cosa è x? Iniziamo partendo dalla definizione di punto convergente:
∀ ϵ ∃ ν : ∀ n>ν* |x_n-x|<ϵ
Quindi dalla definizione si può intuire che se |x_n-x|<ϵ allora significa anche che x_n∈B_ϵ(x), ma dato che la sfera è contenuta in C si verifica un assurdo perché anche il punto interno alla sfera è contenuto in C.
Teorema 2
Teorema: Consideriamo il punto x_0 come punto di accumulazione dell'insieme  Ω (ovvero x_0* ∂* Ω) e consideriamo x_1,x_2,....,x_N elementi distinti di  Ω
Tesi
x_n→x_0Dimostrazione
Per procedere con questa dimostrazione dobbiamo seguire il principio di induzione e quindi specificare
Esempio
Un chiaro esempio della definizione è :
((sin (1/n))/(1/n),1/n)⟶(1,0)
Questo risultato è dato dal fatto che
lim_(n→∞) (sin (1/n))/(1/n)=1* e* lim_(n→∞) 1/n=0
Continuità
Definizione
Consideriamo la funzione f : Ω→R^N con Ω⊆R^N ed un punto x_0∈Ω una funzione si dice continua in x_0 se
∀ ϵ>0 ∃ δ>0 : ∀ x∈d*o*m(f)* s*e*|x-x_0|<δ⇒|f(x)-f(x_0)|<ϵ
In questo caso la definizione è la solita per le funzioni che lavorano sui numeri reali con la differenza che però essendo su R^N dovrà essere calcolata la norma dei vettori e non il valore assoluto del (che comunque giusto per chiarezza corrisponde alla norma di un vettore in R.
sum_(i=1)^nx_i^2≤N∗max_(i=1...*n)(x_i)^2
Adesso possiamo applicare la radice a entrambi i membri perché non varia il segno della disequazione e otteniamo:
sqrt(sum_(i=1)^nx_i^2)≤sqrt(N∗(max_(i=1...*n)(x_i))^2)
Ma dato che (max_(i=1...*n)(x_i))^2 è uguale ad max_(i=1...*n)(x_i)^2 quindi anche sqrt((max_(i=1...*n)(x_i))^2) è uguale a sqrt(max_(i=1...*n)(x_i)^2) che a sua volta corrisponde a max_(i=1...*n)|(x_i)|, portando anche a termine la stima dal basso e quindi la dimostrazione.
Teorema sulle funzioni continue a valori vettoriali
Ipotesi:
f : Ω → ℝ^N
x_0<space> ∈ Ω
Ω ∈ ℝ^m
Tesi: 
         ∀ ε > 0    ∃ δ> 0 :    ∀y  εΩ: 

Definizione di convergenza
La definizione di convergenza è:
∀ ϵ>0 ∃ δ : ∀ n>δ*  |x_n-δ|<ϵ
In poche parole la convergenza di una successione vettoriale (ovvero composta da vettori e non scalari) convergerà al punto le cui componenti corrisponderanno al punto di convergenza di ogni singola componente.
Esempio
Un chiaro esempio della definizione è :
((sin (1/n))/(1/n),1/n)⟶(1,0)
Questo risultato è dato dal fatto che
lim_(n→∞) (sin (1/n))/(1/n)=1* e* lim_(n→∞) 1/n=0
Appunti del 5 marzo 2015
Dimostrazione del 4/3/15 rivisitata
Ipotesi
x_0∈Ω
Tesi
x_n→x_0
Dimostrazione
Si procede per induzione
P(n)=x_1..*x_n sono indipendenti, due a due distinti.
|x_i-x_0|<1/(2^(i-1))
È necessario provare P(1)
δ=1 ∃ x_1 tale che x_1∈Ω, x_1∈B_1(x_0), x_1≠x_0
Supponiamo di avere P(n)
δ=m*i*n*{1/(2^n),|x_1-x_0|,|x_2-x_0|...*|x_n-x_0|}
Questi ultimi valori sono tutti positivi maggiori di 0 in quanto l'esponenziale è una funzione positiva, la norma è definita positiva e x_i≠x_0 per ogni i=1..*n
∃x_(n+1) tale che
∈Ω
∈B_δ(x_0)
≠x_0
Fatto
Se Ω è chiuso e x_0∈ Ω, x_0∈Ω
Definizione
Un insieme è chiuso se contiene la frontiera
Teorema della permanenza del segno
Ipotesi
f:Ω→R continua in x_0
f(x_0)<0
Tesi
∃ δ>0 ∀x∈B_δ(x_0)* f(x)<0
Dimostrazione
Dalla definizione di continuità abbiamo che:
 <space>∀ ϵ>0 ∃ δ>0 tale che ∀x∈dom(f)
|x-x_0|<δ (cioè x∈B_δ(x_0))
|f(x)-f(x_0)|<ϵ
f(x_0)-ϵ<f(x)<f(x_0)+ϵ
siccome
f(x)<0 per ipotesi
Se ϵ<|f(x_0)| si ha f(x_0)+ϵ<0
Teorema di continuità della funzione somma (nome provvisorio)
Ipotesi
f:Ω⟶R^^N
f:Ω⟶R^N
f,g  continue in x_0
Tesi
h(x)=f(x)+g(x) è continua in x_0In pratica, se due funzioni sono continue in un punto anche la loro somma sarà continua in tal punto
Dimostrazione
∀ϵ>0∃δ>0 tale che ∀x∈d*o*m*(f+g)*|x-x_0|<δ
|h(x)-h(x_0)|<ϵ
|f(x)+g(x)-f(x_0)-g(x_0)|<ϵ
|f(x)-f(x_0)+g(x)-g(x_0)|<ϵ
Grazie alla disugualianza triangolare abbiamo che:
|f(x)-f(x_0)+g(x)-g(x_0)|<ϵ≤|f(x)-f(x_0)|+|g(x)-g(x_0)|
Dall'ipotesi di continuità di f,g:
∀σ∃δ_1 : x∈dom(f) : |x-x_0|<δ_1 ∀ϵ>0
|f(x)-f(x_0)|<σ   con  σ=ϵ/2 
∀σ∃δ_2 : x∈dom(g) : |x-x_0|<δ_2 ∀ϵ>0
|g(x)-g(x_0)|<σ   con  σ=ϵ/2 
δ=min{δ_1,δ_2}
|h(x)-h(x_0)|<δ
Primo teorema di composizione
Ipotesi
f:Ω ⟶R^N  continua
x_n∈Ω
x_n⟶x∈Ω
Tesi
lim f(x_n)=f(x)
Dimostrazione
∀ϵ>0 ∃ ν : ∀n>ν* |f(x_n)-f(x)|<ϵ
∀ϵ>0 ∃ δ>0 : ∀t∈Ω*|t-x|<ϵ*|f(t)-f(x)|<ϵ
Poniamo t=x_n, di conseguenza |x-x_n|<δ implica che
|f(x_n)-f(x)|<ϵ
Per quale n è verificata?
Ciao
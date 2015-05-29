<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|Algoritmi e Basi di
  dati>|<doc-author|<author-data|<author-name|>>>|<doc-author|<author-data|<author-name|Di
  Gianluca Mondini>>>>

  <\table-of-contents|toc>
    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|1<space|2spc>Algoritmi
    e strutture dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Algoritmo
    ricorsivo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Complessit�
    di un algoritmo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Definizione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|2.2<space|2spc>Ordine
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|2.3<space|2spc>Regole
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|2tab|2.3.1<space|2spc>Regola dei fattori costanti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|2tab|2.3.2<space|2spc>Regola della somma
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|2tab|2.3.3<space|2spc>Regola del prodotto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|2tab|2.3.4<space|2spc>Altre regole
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|2.4<space|2spc>Teorema
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Complessit�
    di un algoritmo ricorsivo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <with|par-left|1tab|3.1<space|2spc>Esempio: fattoriale di un numero
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Algoritmi
    di ordinamento> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <with|par-left|1tab|4.1<space|2spc>Merge sort
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>>

    <with|par-left|1tab|4.2<space|2spc>Insertion sort
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Alberi
    binari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn>

    <with|par-left|1tab|5.1<space|2spc>Numero di foglie e di nodi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>>

    <with|par-left|1tab|5.2<space|2spc>Alcuni algoritmi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>>

    <with|par-left|2tab|5.2.1<space|2spc>Contare il numero dei nodi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>>

    <with|par-left|2tab|5.2.2<space|2spc>Contare il numero delle foglie
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>>

    <with|par-left|2tab|5.2.3<space|2spc>Cercare un etichetta e resistuire un
    puntatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22>>

    <with|par-left|2tab|5.2.4<space|2spc>Eliminare tutto l'abero
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>>

    <with|par-left|2tab|5.2.5<space|2spc>Inserire un nodo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>>

    <with|par-left|2tab|5.2.6<space|2spc>Compito 2 - Esercizio 4
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>>

    <with|par-left|2tab|5.2.7<space|2spc>Compito 1 - Esercizio 4
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Alberi
    generici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27><vspace|0.5fn>

    <with|par-left|1tab|6.1<space|2spc>Alcuni algoritmi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>>

    <with|par-left|2tab|6.1.1<space|2spc>Contare il numero di nodi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>>

    <with|par-left|2tab|6.1.2<space|2spc>Contare il numero di foglie
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>>

    <with|par-left|2tab|6.1.3<space|2spc>Inserire un nodo in fondo ad una
    lista di fratelli <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>>

    <with|par-left|2tab|6.1.4<space|2spc>Inserire un nodo son come ultimo
    figlio di father <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <with|par-left|2tab|6.1.5<space|2spc>Compito 1 - Esercizio 5
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Alberi
    binari di ricerca> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34><vspace|0.5fn>

    <with|par-left|1tab|7.1<space|2spc>Propriet�
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>>

    <with|par-left|1tab|7.2<space|2spc>Alcuni algoritmi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>>

    <with|par-left|2tab|7.2.1<space|2spc>Cercare un nodo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-37>>

    <with|par-left|2tab|7.2.2<space|2spc>Inserire un nodo
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>>

    <with|par-left|2tab|7.2.3<space|2spc>Restituire l'etichetta del nodo pi�
    piccolo di un albero ed eliminare il nodo che la contiene
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>>

    <with|par-left|2tab|7.2.4<space|2spc>Cancellare un nodo ?
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Heap>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41><vspace|0.5fn>

    <with|par-left|1tab|8.1<space|2spc>Calcolare le parentele
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42>>

    <with|par-left|1tab|8.2<space|2spc>Classe Heap
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>>

    <with|par-left|2tab|8.2.1<space|2spc>Costruttore
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44>>

    <with|par-left|2tab|8.2.2<space|2spc>Distruttore
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45>>

    <with|par-left|2tab|8.2.3<space|2spc>Inserimento
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>>

    <with|par-left|2tab|8.2.4<space|2spc>Estrazione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-47>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Ricerca
    hash> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48><vspace|0.5fn>

    <with|par-left|1tab|9.1<space|2spc>Alcuni algoritmi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>>

    <with|par-left|2tab|9.1.1<space|2spc>Ricerca tramite hash
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>>

    <with|par-left|1tab|9.2<space|2spc>Metodo hash ad accesso non diretto
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51>>

    <with|par-left|2tab|9.2.1<space|2spc>Soluzione: hash modulare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>>

    <with|par-left|4tab|Legge di scansione lineare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53><vspace|0.15fn>>

    Agglomerato <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54><vspace|0.15fn>

    <with|par-left|4tab|Funzione di ricerca con scansione lineare
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-55><vspace|0.15fn>>

    <with|par-left|4tab|Funzione di insierimento in presenza di cancellazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-56><vspace|0.15fn>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Grafi>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57><vspace|0.5fn>

    <with|par-left|1tab|10.1<space|2spc>Rappresentazioni in memoria di grafi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-58>>

    <with|par-left|2tab|10.1.1<space|2spc>Tramite liste di adiacenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-59>>

    <with|par-left|2tab|10.1.2<space|2spc>Tramite matrici di adiacenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60>>

    <with|par-left|1tab|10.2<space|2spc>Rappresentazioni in memoria di grafi
    con nodi ed archi etichettati <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-61>>

    <with|par-left|2tab|10.2.1<space|2spc>Tramite liste di adiacenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-62>>

    <with|par-left|2tab|10.2.2<space|2spc>Tramite matrici di adiacenza
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>>

    <with|par-left|1tab|10.3<space|2spc>Cammino pi� breve
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-64>>

    <with|par-left|2tab|10.3.1<space|2spc>Algoritmo di Dijkstra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-65>>

    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|2<space|2spc>Basi
    di dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-66><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Definizioni>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-67><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Differenze tra database
    <with|font-shape|italic|SQL> e database <with|font-shape|italic|NOSQL>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-68>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Schedule>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-69><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>VSR
    \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-70>>

    <with|par-left|1tab|2.2<space|2spc>CSR
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-71>>

    <with|par-left|1tab|2.3<space|2spc>Locking a due fasi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-72>>

    <with|par-left|2tab|2.3.1<space|2spc>Come determinare se uno schedule �
    generato da uno scheduer basato su 2PL
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-73>>
  </table-of-contents>

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

  \;

  <section|Algoritmi di ordinamento>

  <subsection|Merge sort>

  (necessita di revisione)

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
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3.4|1>>
    <associate|auto-11|<tuple|2.4|2>>
    <associate|auto-12|<tuple|3|2>>
    <associate|auto-13|<tuple|3.1|2>>
    <associate|auto-14|<tuple|3.2|2>>
    <associate|auto-15|<tuple|4|?>>
    <associate|auto-16|<tuple|4.1|?>>
    <associate|auto-17|<tuple|4.2|?>>
    <associate|auto-18|<tuple|5|?>>
    <associate|auto-19|<tuple|5.1|?>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|5.2|?>>
    <associate|auto-21|<tuple|5.2.1|?>>
    <associate|auto-22|<tuple|5.2.2|?>>
    <associate|auto-23|<tuple|5.2.3|?>>
    <associate|auto-24|<tuple|5.2.4|?>>
    <associate|auto-25|<tuple|5.2.5|?>>
    <associate|auto-26|<tuple|5.2.6|?>>
    <associate|auto-27|<tuple|5.2.7|?>>
    <associate|auto-28|<tuple|6|?>>
    <associate|auto-29|<tuple|6.1|?>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-30|<tuple|6.1.1|?>>
    <associate|auto-31|<tuple|6.1.2|?>>
    <associate|auto-32|<tuple|6.1.3|?>>
    <associate|auto-33|<tuple|6.1.4|?>>
    <associate|auto-34|<tuple|6.1.5|?>>
    <associate|auto-35|<tuple|7|?>>
    <associate|auto-36|<tuple|7.1|?>>
    <associate|auto-37|<tuple|7.2|?>>
    <associate|auto-38|<tuple|7.2.1|?>>
    <associate|auto-39|<tuple|7.2.2|?>>
    <associate|auto-4|<tuple|2.1|1>>
    <associate|auto-40|<tuple|7.2.3|?>>
    <associate|auto-41|<tuple|7.2.4|?>>
    <associate|auto-42|<tuple|8|?>>
    <associate|auto-43|<tuple|8.1|?>>
    <associate|auto-44|<tuple|8.2|?>>
    <associate|auto-45|<tuple|8.2.1|?>>
    <associate|auto-46|<tuple|8.2.2|?>>
    <associate|auto-47|<tuple|8.2.3|?>>
    <associate|auto-48|<tuple|8.2.4|?>>
    <associate|auto-49|<tuple|9|?>>
    <associate|auto-5|<tuple|2.2|1>>
    <associate|auto-50|<tuple|9.1|?>>
    <associate|auto-51|<tuple|9.1.1|?>>
    <associate|auto-52|<tuple|9.2|?>>
    <associate|auto-53|<tuple|9.2.1|?>>
    <associate|auto-54|<tuple|9.2.1.1|?>>
    <associate|auto-55|<tuple|9.2.1.1.1|?>>
    <associate|auto-56|<tuple|9.2.1.2|?>>
    <associate|auto-57|<tuple|9.2.1.3|?>>
    <associate|auto-58|<tuple|10|?>>
    <associate|auto-59|<tuple|10.1|?>>
    <associate|auto-6|<tuple|2.3|1>>
    <associate|auto-60|<tuple|10.1.1|?>>
    <associate|auto-61|<tuple|10.1.2|?>>
    <associate|auto-62|<tuple|10.2|?>>
    <associate|auto-63|<tuple|10.2.1|?>>
    <associate|auto-64|<tuple|10.2.2|?>>
    <associate|auto-65|<tuple|10.3|?>>
    <associate|auto-66|<tuple|10.3.1|?>>
    <associate|auto-67|<tuple|2|?>>
    <associate|auto-68|<tuple|1|?>>
    <associate|auto-69|<tuple|1.1|?>>
    <associate|auto-7|<tuple|2.3.1|1>>
    <associate|auto-70|<tuple|2|?>>
    <associate|auto-71|<tuple|2.1|?>>
    <associate|auto-72|<tuple|2.2|?>>
    <associate|auto-73|<tuple|2.3|?>>
    <associate|auto-74|<tuple|2.3.1|?>>
    <associate|auto-8|<tuple|2.3.2|1>>
    <associate|auto-9|<tuple|2.3.3|1>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Algoritmi
      di ordinamento> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Merge sort
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Insertion sort
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Alberi
      binari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Numero di foglie e di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|5.2.1<space|2spc>Contare il numero dei nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|2tab>|5.2.2<space|2spc>Contare il numero delle
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|5.2.3<space|2spc>Cercare un etichetta e
      resistuire un puntatore <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|5.2.4<space|2spc>Eliminare tutto l'abero
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|5.2.5<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|5.2.6<space|2spc>Compito 2 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|2tab>|5.2.7<space|2spc>Compito 1 - Esercizio 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Alberi
      generici> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|6.1.1<space|2spc>Contare il numero di nodi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|2tab>|6.1.2<space|2spc>Contare il numero di
      foglie <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|2tab>|6.1.3<space|2spc>Inserire un nodo in fondo
      ad una lista di fratelli <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|2tab>|6.1.4<space|2spc>Inserire un nodo son come
      ultimo figlio di father <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|6.1.5<space|2spc>Compito 1 - Esercizio 5
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Alberi
      binari di ricerca> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34><vspace|0.5fn>

      <with|par-left|<quote|1tab>|7.1<space|2spc>Propriet�
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|7.2<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|2tab>|7.2.1<space|2spc>Cercare un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|2tab>|7.2.2<space|2spc>Inserire un nodo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|2tab>|7.2.3<space|2spc>Restituire l'etichetta del
      nodo pi� piccolo di un albero ed eliminare il nodo che la contiene
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|2tab>|7.2.4<space|2spc>Cancellare un nodo ?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Heap>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41><vspace|0.5fn>

      <with|par-left|<quote|1tab>|8.1<space|2spc>Calcolare le parentele
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|8.2<space|2spc>Classe Heap
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|2tab>|8.2.1<space|2spc>Costruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|2tab>|8.2.2<space|2spc>Distruttore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|8.2.3<space|2spc>Inserimento
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|2tab>|8.2.4<space|2spc>Estrazione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Ricerca
      hash> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48><vspace|0.5fn>

      <with|par-left|<quote|1tab>|9.1<space|2spc>Alcuni algoritmi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|2tab>|9.1.1<space|2spc>Ricerca tramite hash
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|9.2<space|2spc>Metodo hash ad accesso non
      diretto <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|2tab>|9.2.1<space|2spc>Soluzione: hash modulare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|4tab>|Legge di scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53><vspace|0.15fn>>

      Agglomerato <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54><vspace|0.15fn>

      <with|par-left|<quote|4tab>|Funzione di ricerca con scansione lineare
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Funzione di insierimento in presenza di
      cancellazioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Grafi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57><vspace|0.5fn>

      <with|par-left|<quote|1tab>|10.1<space|2spc>Rappresentazioni in memoria
      di grafi <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|2tab>|10.1.1<space|2spc>Tramite liste di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|2tab>|10.1.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|10.2<space|2spc>Rappresentazioni in memoria
      di grafi con nodi ed archi etichettati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|2tab>|10.2.1<space|2spc>Tramite liste di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|2tab>|10.2.2<space|2spc>Tramite matrici di
      adiacenza <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|10.3<space|2spc>Cammino pi� breve
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|2tab>|10.3.1<space|2spc>Algoritmo di Dijkstra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Basi
      di dati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Definizioni>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-67><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Differenze tra database
      <with|font-shape|<quote|italic>|SQL> e database
      <with|font-shape|<quote|italic>|NOSQL>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Schedule>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>VSR
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>CSR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Locking a due fasi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-72>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Come determinare se uno
      schedule � generato da uno scheduer basato su 2PL
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-73>>
    </associate>
  </collection>
</auxiliary>
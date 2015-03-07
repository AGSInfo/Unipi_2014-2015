<TeXmacs|1.99.2>

<style|<tuple|generic|italian>>

<\body>
  <doc-data|<doc-title|MySql da riga di comando>|<doc-author|<author-data|<author-name|Mondini
  Gianluca>>>>

  <paragraph|Requisiti>

  <\itemize>
    <item>Installazione di MySql

    <item>Aver creato un utente
  </itemize>

  <section|Avvio>

  <subsection|Arch Linux>

  Avviare il servizio <verbatim|mysqld> con

  <verbatim|# systemctl start mysqld.service>

  oppure

  <verbatim|# systemctl enable mysqld.service>

  per rendere automatico l'avvio all'accensione del computer (richiede
  comunque il comando <verbatim|start> per avviare il servizio senza
  riavviare)

  <subsection|Accedere alla shell del server MySql>

  Da terminale digitare

  <verbatim|# mysql -u root>

  ed inserire la password dell'utente <verbatim|root>

  <section|Eseguire script contenuti in un file>

  Creare un file <verbatim|nome_file.sql> (l'estensione è irrilevante) ed
  inserire al suo interno i comandi per la shell del server MySql, ad esempio

  <\verbatim>
    USE nome_database;

    DROP TABLE IF EXISTS Corsi;

    \;

    CREATE TABLE Corsi(

    \ \ \ Prof VARCHAR(20),

    \ \ \ Corso VARCHAR(20)

    );

    INSERT INTO Corsi VALUES ("Mario", "Italiano");

    INSERT INTO Corsi VALUES ("Luigi", "Kart");

    \;

    SELECT * FROM Corsi;
  </verbatim>

  Per eseguire il file è sufficiente avviare la shell MySql reindirizzando
  tramite STDIN il contenuto del file

  <verbatim|# mysql -u root --password=[password_root] \<less\>
  nome_file.sql>

  \;

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-2|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-3|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-4|<tuple|1.2|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-5|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|4tab>|Requisiti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Avvio>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Arch Linux
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Accedere alla shell del
      server MySql <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Eseguire
      script contenuti in un file> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
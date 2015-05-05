#!/bin/sh

## MONDINI GIANLUCA

# Script di upload/download delle modifiche tramite riga di comando

# Server al quale effettuare l'upload/download
SERVER=https://github.com/AGSInfo/Unipi_2014-2015
# Branch, per adesso 'master' è l'unico disponibile nel repository
BRANCH=master

if [ $# -ne 1 ]
then
   echo "Devi fornire un argomento."
   echo "push      Invia il repository locale al server"
   echo "pull      Scarica le modifiche remote nel repository locale"
   echo "commit    Effettua il commit delle modifiche locali"
   echo "broswer   Apri il repository nel broswer di default (solo Linux?)"
   exit 1
fi

command -v "git" >/dev/null && continue || { echo "Comando git non trovato."; exit 1; }

echo "SERVER: $SERVER"
echo "BRANCH: $BRANCH"

# Funzione di push

if [ $1 == "push" ]
then
   echo "Invio al server le modifiche apportate al repository locale"
   git push $SERVER $BRANCH
   exit 0
fi

# Funzione di pull

if [ $1 == "pull" ]
then
   echo "Scarico dal server remoto le modifiche"
   git pull $SERVER
   exit 0
fi

# Funzione di commit

if [ $1 == "commit" ]
then
   echo "Effettuo il commit delle modifiche"
   git add *
   git commit -a
   exit 0
fi

# Apri il repository nel browser

if [ $1 == "browser" ]
then
	echo "Apro il repository nel browser"
	xdg-open $SERVER &
	exit 0
fi

echo "Il comando specificato è errato. Avvia lo script senza argomenti per visualizzare le opzioni disponibili"
exit 1;


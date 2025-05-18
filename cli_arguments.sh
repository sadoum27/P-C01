#!/bin/bash

# Script : cli_arguments.sh
# Objectif : Afficher les arguments ligne par ligne
# Utilise : $@, boucle
# Auteur : [Votre nom]
# Date : [Date]

if [ "$#" -eq 0 ]; then
    echo "Erreur : aucun argument fourni."
    exit 1
fi

index=1
for arg in "$@"; do
    echo "Argument $index: $arg"
    index=$((index + 1))
done

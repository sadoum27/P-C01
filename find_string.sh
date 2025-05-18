#!/bin/bash

# Script : find_string.sh
# Objectif : Rechercher une chaîne spécifique dans un fichier
# Utilise : grep
# Auteur : [Votre nom]
# Date : [Date]

read -p "Nom du fichier : " filename

if [ ! -f "$filename" ]; then
    echo "Erreur : le fichier '$filename' n'existe pas."
    exit 1
fi

read -p "Chaîne à rechercher : " search

if grep -q "$search" "$filename"; then
    echo "La chaîne '$search' a été trouvée dans $filename."
else
    echo "La chaîne '$search' n'a pas été trouvée dans $filename."
fi

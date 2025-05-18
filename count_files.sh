#!/bin/bash

# Script : count_files.sh
# Objectif : Compter le nombre de fichiers dans un répertoire donné par l'utilisateur
# Utilise : ls, wc -l
# Auteur : [Votre nom]
# Date : [Date]

read -p "Veuillez saisir le nom du dossier : " Myfolder

if [ -d "$Myfolder" ]; then
    count=$(find "$Myfolder" -type f | wc -l)
    echo "Le dossier $Myfolder contient $count fichier(s)."
else
    echo "Erreur : le dossier '$Myfolder' n'existe pas."
    exit 1
fi

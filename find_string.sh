#!/bin/bash
# Pour trouver si une chaine de caractères existe dans un fichier, on recupère d'abord le nom du fichier
read -p " " path
# Ensuite on verifie si ce que l'utilisateur a tapé est un fichier existant
if [ ! -f "$path" ]; then 
# Si ce n'est pas un fichier, on affiche le message en dessous
     echo "Erreur : Le fichier '$fichier' n'existe pas."
     exit 1
else # Sinon (donc c'est un fichier) on recupère la chaine à chercher et on affiche le résultat
    read -p " " chaine
    grep --color=always -n "$chaine" "$path" 
fi
# Dans le cas ou la commande grep ne trouve pas la chaine dans le fichier, on affiche le message en dessous
if [ $? -ne 0 ]; then  
    echo "La chaine '$chaine' n'a pas ét trouvée dans $path."
fi

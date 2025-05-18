#!/bin/bash

# Script : simple_calculator.sh
# Objectif : Effectuer une opération mathématique simple
# Utilise : opérations arithmétiques
# Auteur : [Votre nom]
# Date : [Date]

read -p "Entrez le premier nombre : " num1
read -p "Entrez le second nombre : " num2
read -p "Entrez l'opérateur (+, -, *, /) : " op

if ! [[ "$num1" =~ ^[0-9]+$ && "$num2" =~ ^[0-9]+$ ]]; then
    echo "Erreur : veuillez entrer deux nombres valides."
    exit 1
fi

case "$op" in
    +)
        echo "Résultat : $((num1 + num2))"
        ;;
    -)
        echo "Résultat : $((num1 - num2))"
        ;;
    "*")
        echo "Résultat : $((num1 * num2))"
        ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Erreur : division par zéro."
            exit 1
        fi
        echo "Résultat : $((num1 / num2))"
        ;;
    *)
        echo "Opérateur invalide. Utilisez +, -, *, ou /."
        exit 1
        ;;
esac

#!/bin/bash
# Vérifier qu'on a exactement trois arguments
if [ "$#" -ne 3 ]; then
    echo "Usage : $0 nombre1 nombre2 opérateur"
    echo "Exemple: $0 5 3 +"
    exit 1
fi

# Affecter les arguments à des variables
nombre1="$1"
nombre2="$2"
operateur="$3"

# Vérifier que les deux nombres sont bien des entiers
if ! [[ "$nombre1" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : '$nombre1' n'est pas un nombre entier valide."
    exit 1
fi

if ! [[ "$nombre2" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : '$nombre2' n'est pas un nombre entier valide."
    exit 1
fi

# Effectuer l'opération en fonction de l'opérateur passé en argument
case "$operateur" in
    '+')
        resultat=$(( nombre1 + nombre2 ))
        ;;
    '-')
        resultat=$(( nombre1 - nombre2 ))
        ;;
    '*')
        resultat=$(( nombre1 * nombre2 ))
        ;;
    '/')
        # Vérifier la division par zéro
        if [ "$nombre2" -eq 0 ]; then
            echo "Erreur : Division par zéro n'est pas autorisée."
            exit 1
        fi
        resultat=$(( nombre1 / nombre2 ))
        ;;
    *)
        echo "Erreur : Opérateur invalide. Utilisez +, -, *, ou /."
        exit 1
        ;;
esac

echo "Résultat : $resultat"

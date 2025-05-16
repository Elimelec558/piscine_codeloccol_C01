#!/bin/bash

# Vérifier si deux arguments sont fournis (fichier + chaîne de caractères)
if [ $# -ne 2 ]; then
    echo "Usage : $0 <nom_du_fichier> <chaîne_recherchée>"
    exit 1
fi

# Récupérer les arguments
FICHIER="$1"
CHAINE="$2"

# Vérifier si le fichier existe
if [ ! -f "$FICHIER" ]; then
    echo "Erreur : Le fichier \"$FICHIER\" n'existe pas."
    exit 1
fi

# Recherche de la chaîne dans le fichier
if grep -q "$CHAINE" "$FICHIER"; then
    echo "La chaîne '$CHAINE' a été trouvée dans $FICHIER."
else
    echo "La chaîne '$CHAINE' n'a pas été trouvée dans $FICHIER."
fi

#!/bin/bash

# Vérifier si un argument est fourni
if [ $# -eq 0 ]; then
    echo "Erreur : Veuillez indiquer un répertoire."
    echo "Utilisation : $0 <répertoire>"
    exit 1
fi

# Vérifier si le répertoire existe
if [ ! -d "$1" ]; then
    echo "Erreur : Le répertoire \"$1\" n'existe pas."
    exit 1
fi

# Initialiser le compteur
nb_fichiers=0

# Lire les fichiers et les compter
for fichier in "$1"/*; do
    if [ -f "$fichier" ]; then
        ((nb_fichiers++))  # Incrémente le compteur
    fi
done

# Afficher le résultat
echo "Le dossier \"$1\" contient $nb_fichiers fichier(s)."

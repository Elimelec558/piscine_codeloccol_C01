#!/bin/bash

# Vérifier si un argument est fourni
if [ $# -eq 0 ]; then
    echo "Usage : $0 <répertoire>"
    exit 1
fi

# Vérifier si le répertoire existe
if [ ! -d "$1" ]; then
    echo "Erreur : Le répertoire \"$1\" n'existe pas."
    exit 1
fi

# Compter le nombre de fichiers
nb_fichiers=$(ls -1 "$1" | wc -l)
echo "Le dossier \"$1\" contient $nb_fichiers fichier(s)."
 
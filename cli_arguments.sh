#!/bin/bash

# Vérifier si des arguments ont été fournis
if [ $# -eq 0 ]; then
    echo "Usage: $0 argument1 argument2 ..."
    exit 1
fi

count=1

# Boucle pour traiter les arguments avec shift
while [ $# -gt 0 ]; do
    echo "Avant shift, arguments : $@"
    echo "Argument $count: $1"
    shift  # Décale les arguments
    echo "Après shift, arguments restants : $@"
    count=$((count + 1))
done

#!/bin/bash

# Vérifier si un argument (répertoire) est passé en ligne de commande
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <chemin_du_repertoire>"
    exit 1
fi

REPERTOIRE="$1"

# Vérifier si le répertoire existe
if [ ! -d "$REPERTOIRE" ]; then
    echo "Erreur : Le répertoire spécifié n'existe pas."
    exit 1
fi

echo "Analyse de l'utilisation du disque pour : $REPERTOIRE"
echo "------------------------------------------------------"

# Afficher l'utilisation globale du disque
echo "Utilisation globale du disque :"
df -h "$REPERTOIRE"

echo ""
# Afficher l'utilisation détaillée des fichiers et sous-répertoires
echo "Utilisation détaillée :"
du -h --max-depth=1 "$REPERTOIRE"

exit 0



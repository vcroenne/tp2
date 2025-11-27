#!/bin/bash
#!/bin/bash

# Vérifie qu'un argument a été donné
if [ -z "$1" ]; then
    echo "Erreur : aucun nom de branche fourni."
    echo "Utilisation : bash create_branch.sh nom_de_branche"
    exit 1
fi

# Création de la branche
echo "Création de la branche : $1"
git branch "$1"

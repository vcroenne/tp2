#!/bin/bash

# Vérifier qu'un message de commit est fourni
if [ -z "$1" ]; then
    echo "Erreur : aucun message de commit fourni."
    echo "Utilisation : bash auto_git.sh \"message du commit\""
    exit 1
fi

# Étape 1 : git add *
echo "Ajout des fichiers modifiés..."
git add *

# Étape 2 : git commit -m "message"
echo "Création du commit..."
git commit -m "$1"

# Étape 3 : git push
echo "Push vers GitHub..."
git push

echo "✔️ Script terminé avec succès."


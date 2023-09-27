#!/bin/bash

# Paramètres de connexion à la base de données Oracle
DB_USER="votre_utilisateur"
DB_PASSWORD="votre_mot_de_passe"
DB_SID="SID_de_votre_base"

# Répertoire de destination pour la sauvegarde
BACKUP_DIR="/chemin/vers/votre/repertoire/de/sauvegarde"

# Nom du fichier de sauvegarde
BACKUP_FILE="backup_$(date +'%Y%m%d_%H%M%S').dmp"

# Export de la base de données
expdp $DB_USER/$DB_PASSWORD@$DB_SID \
  directory=$BACKUP_DIR \
  dumpfile=$BACKUP_FILE \
  full=y

# Vérification du succès de l'export
if [ $? -eq 0 ]; then
  echo "Sauvegarde de la base de données Oracle terminée avec succès."
else
  echo "Échec de la sauvegarde de la base de données Oracle."
fi

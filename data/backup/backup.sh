#!/bin/bash

# Variables
DB_USER="okanban"  # Nom d'utilisateur de la base de données
DB_NAME="okanban"  # Nom de la base de données
BACKUP_DIR="/data/backup"  # Répertoire où les sauvegardes seront stockées
DATE=$(date +"%Y%m%d%H%M%S")  # Date et heure actuelles, formatées

# Sauvegarde de la base de données
pg_dump -U $DB_USER $DB_NAME > $BACKUP_DIR/$DB_NAME-$DATE.sql

# Message de confirmation
echo "La sauvegarde de la base de données $DB_NAME a été réalisée avec succès dans $BACKUP_DIR/$DB_NAME-$DATE.sql"
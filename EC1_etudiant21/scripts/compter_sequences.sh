#!/bin/bash

# Cree le dossier de sortie
mkdir -p analyses/prelim

# Fichier de sortie pour les resultats
output_file="analyses/prelim/sequence_count.txt"

echo "Fichier Fastq | Nombre de sequences" > $output_file

# Compter les lignes des fichiers .fastq.gz dans le dossier data/raw_data/
for file in data/raw_data/*.fastq.gz
do
  # Chaque fichier .fastq possède 4 lignes mais une seule des lignes contient la sequence, on divise donc les lignes par 4
  seq_count=$(zcat "$file" | echo $((`wc -l`/4)))

  # Recupere seulement le nom du fichier sans le chemin complet
  file_name=$(basename "$file")

  # Écrit le resultat dans le fichier de sortie
  echo "$file_name | $seq_count" >> $output_file
done

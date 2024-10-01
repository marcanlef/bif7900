#!/bin/bash

# Création de la structure du dossier d'analyse
mkdir -p results
mkdir -p scripts
mkdir -p data/adaptors

# Ajout des liens symboliques
ln -sf /home/public/EtudeCas1/raw_data/ data/raw_data
ln -sf /home/public/rna_seq/reference/ data/reference

# Copie du fichier adaptors.fa
cp /home/public/rna_seq/demo/adaptors.fa data/adaptors/

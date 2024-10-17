#!/bin/bash


# Variables
inputfile="/home/public/EtudeCas1/condition1_vs_condition2.csv"
crdir="./resultats/compte_rendu.md"


# Calcul du nombre total de genes differentiellement exprimes
diffexp_genes=$(awk -F',' '$6<0.05' $csvdir | wc -l)

# Calcul du nombre de genes sous-exprimes
sousreg_genes=$(awk -F',' '{if($6<0.05 && $5<0) print $1}' $inputfile | wc -l)

# Calcul du nombre de gènes sur-exprimés
surreg_genes=$(awk -F',' '{if($6<0.05 && $5>0) print $1}' $inputfile | wc -l)


# Affichage des résultats
echo "" >> $crdir
echo "## Partie 2.4: Analyses d'expression différentielles" >> $crdir
echo "Nombre de gènes différentiellement exprimés: $diffexp_genes" >> $crdir
echo "Nombre de gènes sous-exprimés dans la condition 1 par rapport à la condition 2: $sousreg_genes" >> $crdir
echo "Nombre de gènes sur-exprimés dans la condition 1 par rapport à la condition 2: $surreg_genes" >> $crdir

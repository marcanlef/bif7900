# Compte-rendu Étude de cas 1

## Partie 1.2 : Analyse preliminaire des donnees

### Presentations des resultats du comptage des sequences.

Fichier Fastq | Nombre de sequences
condition1_rep1_R1.fastq.gz | 4436656
condition1_rep1_R2.fastq.gz | 4436656
condition2_rep1_R1.fastq.gz | 4081828
condition2_rep1_R2.fastq.gz | 4081828



## Partie 2.1 : Analyses de qualite

### Per base sequence quality

On peut voir que la qualite des donnees de sequencage (score Phred) diminue plus on augmente dans la position des paires de bases, ce qui est chose frequente chez le sequencage Illumina. 
Puisque le score Phred represente la probabilite qu'une base soit incorrecte et que le score Phred diminue avec la position, on peut assumer que les erreurs de sequencage sont plus
frequentes plus la position augmente.

### Algorithme de nettoyage

Pour regler le probleme de la question precedente, on peut utiliser l'algorithme de nettoyage Trimmomatic "Trailing" qui permet de supprimer
les sequences en bas du seuil, ce qui nous permet de garder que les sequences de bonnes qualites.



## Partie 2.2: Nettoyage des sequences

### condition1_rep1
Input Read Pairs: 4436656 Both Surviving: 3394683 (76.51%) Forward Only Surviving: 1022317 (23.04%) Reverse Only Surviving: 3631 (0.08%) Dropped: 16025 (0.36%)

### condition2_rep1
Input Read Pairs: 4081828 Both Surviving: 3125620 (76.57%) Forward Only Surviving: 952844 (23.34%) Reverse Only Surviving: 2168 (0.05%) Dropped: 1196 (0.03%)



## Partie 2.4: Analyses d'expression différentielles

Nombre de gènes différentiellement exprimés: 3627
Nombre de gènes sous-exprimés dans la condition 1 par rapport à la condition 2: 1769
Nombre de gènes sur-exprimés dans la condition 1 par rapport à la condition 2: 1858





#### Pour .gitignore:
echo ./analyses/qc/ >> .gitignore
echo ./analyses/logs/ >> .gitignore
echo ./analyses/quant/ >> .gitignore
echo ./analyses/trimming/ >> .gitignore
echo ./resultats/.ipynb_checkpoints/ >> .gitignore

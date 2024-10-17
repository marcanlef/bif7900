#Trace des commandes pour la partie 2


#1. Creation des dossiers
mkdir ./analyses/qc ./analyses/logs

#2. Analyses de qualite FastQC
fastqc -o analyses/qc/ data/raw_data/condition1_rep1_R1.fastq.gz data/raw_data/condition1_rep1_R2.fastq.gz data/raw_data/condition2_rep1_R1.fastq.gz data/raw_data/condition2_rep1_R2.fastq.gz > analyses/logs/fastqc_output.log 2> analyses/logs/fastqc_error.log

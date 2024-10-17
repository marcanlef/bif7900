#!/bin/bash


# Creation des variables
outdir="./analyses/quant/"
logdir="./analyses/logs/"
datadir="./analyses/trimming/"
refdir="./data/reference/"

# Creation du repertoire final
mkdir -p "${outdir}condition1_rep1/"
mkdir -p "${outdir}condition2_rep1/"

# Quantification des sequences avec Kallisto
kallisto quant -i "${refdir}Homo_sapiens.GRCh38.cds.all.fa.idx" -o "${outdir}condition1_rep1/" "${datadir}condition1_rep1_R1_paired.trim.fastq.gz" "${datadir}condition1_rep1_R2_paired.trim.fastq.gz" "${datadir}condition1_rep1_R1_unpaired.trim.fastq.gz" "${datadir}condition1_rep1_R2_unpaired.trim.fastq.gz" >> "${logdir}quant.log" 2>> "${logdir}quant.err"
kallisto quant -i "${refdir}Homo_sapiens.GRCh38.cds.all.fa.idx" -o "${outdir}condition2_rep1/" "${datadir}condition2_rep1_R1_paired.trim.fastq.gz" "${datadir}condition2_rep1_R2_paired.trim.fastq.gz" "${datadir}condition2_rep1_R1_unpaired.trim.fastq.gz" "${datadir}condition2_rep1_R2_unpaired.trim.fastq.gz" >> "${logdir}quant.log" 2>> "${logdir}quant.err"
echo "${logdir}quant.log" >> .gitignore
echo "${logdir}quant.err" >> .gitignore

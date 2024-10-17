#!/bin/bash

# Creation repertoire output

mkdir -p analyses/trimming

# Creation des variables

outdir="./analyses/trimming/"
logdir="./analyses/logs/"
datadir="./data/raw_data/"
adapdir="./data/adaptors/adaptors.fa"
crdir="./resultats/compte_rendu.md"


# Trimmer les sequences et ensuite les compter

for i in $(ls "$datadir"*_R1.fastq.gz); do
  namefile=$(echo "$i" | sed "s|$datadir||" | sed "s|1.fastq.gz||")
  java -jar /bin/trimmomatic-0.39.jar \
  PE \
  -phred33 \
  "${datadir}${namefile}1.fastq.gz" "${datadir}${namefile}2.fastq.gz" \
  "${outdir}${namefile}1_paired.trim.fastq.gz" "${outdir}${namefile}1_unpaired.trim.fastq.gz" "${outdir}${namefile}2_paired.trim.fastq.gz" "${outdir}${namefile}2_unpaired.trim.fastq.gz" \
  ILLUMINACLIP:$adapdir:2:30:10 \
  TRAILING:30 \
  MINLEN:30 >> "${logdir}_trimming.log" 2>> "${logdir}_trimming.err"
  echo "${logdir}_trimming.log" >> .gitignore
  echo "${logdir}_trimming.err" >> .gitignore
  grep "Input Read Pairs" "${logdir}_trimming.log" >> $crdir
  grep "Input Read Pairs" "${logdir}_trimming.err" >> $crdir
done

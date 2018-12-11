#!/bin/bash
#PBS -P xe2
#PBS -q express
#PBS -l walltime=5:00:00
#PBS -l mem=16GB
#PBS -l jobfs=50GB
#PBS -l ncpus=5
#PBS -l wd
#PBS -m abe
#PBS -M  james.kondilios@anu.edu.au

cat /g/data/xe2/projects/james_directory/e.marg_assembly/Data/trimmed-qualityfiltered-reads.fastq | /home/801/jk9065/.local/bin/NanoLyse -r /g/data/xe2/projects/james_directory/e.marg_assembly/Data/DNA_CS.fasta > /g/data/xe2/projects/james_directory/e.marg_assembly/Data/trimmed-qualityfiltered-reads_withoutLambda.fastq;

/home/801/jk9065/.local/bin/NanoPlot -t 5 --fastq /g/data/xe2/projects/james_directory/e.marg_assembly/Data/trimmed-qualityfiltered-reads_withoutLambda.fastq -o /g/data/xe2/projects/james_directory/e.marg_assembly/Data/plot_trimmed-qualityfiltered-reads_withoutLambda

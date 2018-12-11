#!/bin/bash
#PBS -P xe2
#PBS -q normalbw
#PBS -l walltime=24:00:00
#PBS -l mem=16GB
#PBS -l jobfs=100GB
#PBS -l ncpus=1
#PBS -l wd
#PBS -m abe
#PBS -M  james.kondilios@anu.edu.au

trimmed-qualityfiltered-reads.fastq | /home/801/jk9065/.local/bin/NanoLyse -r /g/data/xe2/projects/james_directory/e.marg_assembly/Data/DNA_CS.fasta > /g/data/xe2/projects/james_directory/e.marg_assembly/Data/ControlStrand_removaled_trimmed-qualityfiltered-reads.fastq;

/home/801/jk9065/.local/bin/NanoPlot -t 5 --fastq /g/data/xe2/projects/james_directory/e.marg_assembly/Data/ControlStrand_removed_trimmed-qualityfiltered-reads.fastq -o /g/data/xe2/projects/james_directory/e.marg_assembly/Data/plot_ControlStrandRemoved_reads -t 5
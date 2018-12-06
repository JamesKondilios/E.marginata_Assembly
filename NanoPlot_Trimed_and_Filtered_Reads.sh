#!/bin/bash
#PBS -P xe2
#PBS -q express
#PBS -l walltime=3:00:00
#PBS -l mem=16GB
#PBS -l jobfs=100GB
#PBS -l ncpus=5
#PBS -l wd
#PBS -m abe
#PBS -M  james.kondilios@anu.edu.au

/home/801/jk9065/.local/bin/NanoPlot -t 5 --fastq /g/data/xe2/projects/james_directory/e.marg_assembly/Data/trimmed-qualityfiltered-reads.fastq -o /g/data/xe2/projects/james_directory/e.marg_assembly/Data/NanoPlotTrim_Filtered

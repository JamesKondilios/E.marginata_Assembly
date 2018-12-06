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

cat Ash_Emarginata_flowcell-2_SQK-LSK109_basecalled/workspace/*.fastq  | /home/801/jk9065/.local/bin/NanoFilt --headcrop 100 --tailcrop 100 -l 1000  > trimmed-reads.fastq #trim 100 bases off the start and end of each read
trimmed-reads.fastq | /home/801/jk9065/.local/bin/NanoFilt -q 7 > trimmed-qualityfiltered-reads.fastq # filter out reads with q score < 7
/home/801/jk9065/.local/bin/NanoPlot -t 1 --fastq trimmed-qualityfiltered-reads.fastq -o /NanoPlotTrim_Filtered 

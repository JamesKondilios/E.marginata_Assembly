#!/bin/bash
#PBS -P xe2
#PBS -q normalbw
#PBS -l walltime=24:00:00
#PBS -l mem=64GB
#PBS -l jobfs=300GB
#PBS -l ncpus=16
#PBS -l wd
#PBS -m abe
#PBS -M  james.kondilios@anu.edu.au

module load canu

#genome size was estimated at 580Mb - E. tindaliae
canu -correct \
  -p emarginata -d /g/data/xe2/projects/james_directory/e.marg_assembly/Data \
  genomeSize=580.7m \
  -nanopore-raw /g/data/xe2/projects/james_directory/e.marg_assembly/Data/trimmed-qualityfiltered-reads_withoutLambda.fastq

set -euo pipefail # safe mode
set -x # logging

GRID_OPTIONS="-P xe2 -q normal -l jobfs=400GB -l software=canu -l wd -N CANU_GRID -m abe -M your_email@anu.edu.au -l walltime=48:00:00"

## run canu
/g/data1a/xe2/scott/modules/canu/Linux-amd64/bin/canu \
-p Test_E_melliodora_nuclear \
-d /short/${PROJECT}/${USER}/output_directory  \
-nanopore-raw input_reads.fastq \
genomeSize=650m \
maxThreads=512 \
maxMemory=63 \
gridOptions="$GRID_OPTIONS" \
useGrid=remote \
gridEngineThreadsOption="-l ncpus=THREADS" \
executiveMemory=2 \
executiveThreads=1 \
java=/apps/java/jdk-10.0.1/bin/java \
gnuplot=/apps/gnuplot/5.2.4/bin/gnuplot

GRID_OPTIONS="-P xe2 -q normal -l jobfs=400GB -l software=canu -l wd -N CANU_GRID -m abe -M james.kondilios@anu.edu.au -l walltime=48:00:00"

module load canu

#genome size was estimated at 580Mb - E. tindaliae

canu -correct \
-p emarginata \
-d /short/xe2/jk9065/emarg_readcorrected  \
-nanopore-raw trimmed-qualityfiltered-reads_withoutLambda.fastq \
genomeSize=580m \
maxThreads=512 \
maxMemory=63 \
gridOptions="$GRID_OPTIONS" \
useGrid=remote \
gridEngineThreadsOption="-l ncpus=THREADS" \
executiveMemory=2 \
executiveThreads=1 \
java=/apps/java/jdk-10.0.1/bin/java \
gnuplot=/apps/gnuplot/5.2.4/bin/gnuplot

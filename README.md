# E.marginata_Assembly #

## Progress ##
1. Adapter removal - trimmed 100 bases off each side of all reads (NanoFilt)
2. Short read removal - removed all reads with < 1000 bases (NanoFilt)
3. Quality filtering - removed all reads with a q score < 7 (after trimming so that average score is increased an d all the reads arent removed in this step) (NanoFilt)
4. Lambda strand removal - removed reads corresponding to the lambda control strand (NanoLyase)

## TODO ##
* Read correction  (align all reads to all reads) - replace the original noisy read sequences with consensus sequences computed from overlapping reads.
* Read trimming task - use overlapping reads to decide what regions of each read are high-quality sequence, and what regions should be trimmed. After trimming, the single largest high-quality chunk of sequence is retained.
* Unitig construction - finds sets of overlaps that are consistent, and uses those to place reads into a multialignment layout. The layout is then used to generate a consensus sequence for the unitig.

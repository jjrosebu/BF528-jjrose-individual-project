# BF528--Jason Rose Individual Project Repository Contents
Data Curator Project 3:
1. fastqc.qsub -- Batch job submission for running fastqc on each set of samples.
2. star_example.qsub -- Example batch job submission of running STAR. I had created one for each sample, but only providing an example here.
3. multiqc.qsub -- Batch job submission to run multiqc on fastqc and STAR output.

Biologist Project 3:
1. fastqc.sub
2. proj3_biologist_part1.R -- R code on taking programmer normalized counts with a < 0.01 p-value threshold. Outputs a text file of REFSEQ_MRNA names to be used in DAVID.
4. proj3_biologist_part2.R -- Code for creating a heatmap of MOA samples the normalized counts from the programmer.

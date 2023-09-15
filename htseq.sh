#!/bin/bash
#SBATCH --account=bgmp   ### change this to your actual account for charging
#SBATCH --partition=interactive       ### queue to submit to
#SBATCH --reservation=bgmp-res
#SBATCH --job-name=htseq    ### job name
#SBATCH --output=htseq_%j.out   ### file in which to store job stdout
#SBATCH --error=htseq_%j.err    ### file in which to store job stderr
#SBATCH --time=4:00:00                ### wall-clock time limit, in minutes
#SBATCH --mem=32G              ### memory limit per node, in MB
#SBATCH --nodes=1               ### number of nodes to use
#SBATCH --ntasks-per-node=1     ### number of tasks to launch per node
#SBATCH --cpus-per-task=8       ### number of cores for each task
conda activate QAA

/usr/bin/time htseq-count --stranded=yes /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_aligned_readsAligned.out.sam /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Mus_musculus.GRCm39.110.gtf > /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_standard.txt
/usr/bin/time htseq-count --stranded=reverse /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_aligned_readsAligned.out.sam /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Mus_musculus.GRCm39.110.gtf > /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_standardreverse.txt
/usr/bin/time htseq-count --stranded=yes /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2aligned_readsAligned.out.sam /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Mus_musculus.GRCm39.110.gtf > /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2_standard.txt
/usr/bin/time htseq-count --stranded=reverse /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2aligned_readsAligned.out.sam /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Mus_musculus.GRCm39.110.gtf > /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2_standardreverse.txtq
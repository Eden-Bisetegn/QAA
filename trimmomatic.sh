#!/bin/bash
#SBATCH --account=bgmp   ### change this to your actual account for charging
#SBATCH --partition=interactive       ### queue to submit to
#SBATCH --reservation=bgmp-res
#SBATCH --job-name=trimmomatic    ### job name
#SBATCH --output=trimmomatic_%j.out   ### file in which to store job stdout
#SBATCH --error=trimmomatic_%j.err    ### file in which to store job stderr
#SBATCH --time=4:00:00                ### wall-clock time limit, in minutes
#SBATCH --mem=32G              ### memory limit per node, in MB
#SBATCH --nodes=1               ### number of nodes to use
#SBATCH --ntasks-per-node=1     ### number of tasks to launch per node
#SBATCH --cpus-per-task=8       ### number of cores for each task
conda activate QAA

/usr/bin/time trimmomatic PE -phred33 /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2E_fox_S6_L008_R1.adaptcut.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2E_fox_S6_L008_R2.adaptcut.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2E_fox_S6_L008_R1.paired.trimmed.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2E_fox_S6_L008_R1.unpaierd.trimmed.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2E_fox_S6_L008_R2.paired.trimmed.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/7_2E_fox_S6_L008_R2.unpaierd.trimmed.fastq.gz\
    LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35
/usr/bin/time trimmomatic PE -phred33 /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_S0_L008_R1.adaptcut.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_S0_L008_R2.adaptcut.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_S0_L008_R1.paierd.trimmed.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_S0_L008_R1.unpaierd.trimmed.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_S0_L008_R2.paired.trimmed.fastq.gz\
    /projects/bgmp/bisetegn/bioinfo/Bi623/fastqc/Undetermined_S0_L008_R2.unpaierd.trimmed.fastq.gz\
    LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35
#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --mail-user     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=4                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB
#can find files to upload in the directory mentioned on slack
#SBATCH --error=7_2E_fox_S6_L008_R2-g%j.err                        #reqired: error account
#SBATCH --out=7_2E_fox_S6_L008_R2-g%j.out                        #reqired: output account

#/usr/bin/time -v ./Qualityscore.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/Undetermined_S0_L008_R1_001.fastq.gz -o Undetermined1.txt -l 101 -n Undetermined1.png

# /usr/bin/time -v ./Qualityscore.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/Undetermined_S0_L008_R2_001.fastq.gz -o Undetermined2.txt -l 101 -n Undetermined2.png

# /usr/bin/time -v ./Qualityscore.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/7_2E_fox_S6_L008_R1_001.fastq.gz -o 7_2E_fox_S6_L008_R1.txt -l 101 -n  7_2E_fox_S6_L008_R1.png

/usr/bin/time -v ./Qualityscore.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/7_2E_fox_S6_L008_R2_001.fastq.gz -o 7_2E_fox_S6_L008_R2.txt -l 101 -n  7_2E_fox_S6_L008_R2.png

#!/bin/bash

#this script is used for test time for STRcaller

# put all data into a directory and go to this directory 

#bamlist=" HG002.SequelII.merged_15kb_20kb.pbmm2.GRCh38.haplotag.10x.bam"
cd /media/xuewen/XW18T/GenomeInABottle
#bamlist="HG03750.bam"
bamlist="HG002_GRCh38_ONT-UL_GIAB_20200122.phased.bam"
for b in $bamlist
do
sample=${b/.bam/}
echo $sample
 if [ ! -f $b.bai ];then
   echo "index bam"
   samtools index -b $b
fi
python3 lociBam.py -l STRRegionsV5xwlinuxBest.bed -b ${sample}.bam -t 10
python3 STRPacBio_dev.py -l STRRegionsV5xwlinuxBest.bed -b ${sample}.loc.bam -o ${sample}.str

done

#!/bin/bash

#this script is used for test time for STRaiter Razor

# put all data into a directory and go to this directory 

#bamlist="HG03750.bam"
bamlist="HG002.SequelII.merged_15kb_20kb.pbmm2.GRCh38.haplotag.10x.bam"
thread=10
for b in $bamlist
do
sample=${b/.bam/}
echo $sample
if [ ! -f $b.fastq ];then
   echo "get fastq seq. not count the time"
   samtools fastq $b -@ $thread >$sample.fastq
fi
#note no SE33 config information
time ./str8rzr -c strRazor.21marker.config -p 10 -f 2  -o ${sample}.razor.str $sample.fastq


done

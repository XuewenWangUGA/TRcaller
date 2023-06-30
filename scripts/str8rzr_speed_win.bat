#!/bin/bash

#this script is used for test time for STRaiter Razor

# put all data into a directory and go to this directory 


rem note no SE33 config information
rem time ./str8rzr -c strRazor.21marker.config -p 10 -f 2  -o ${sample}.razor.str $sample.fastq


rem time for   HG03750.sort.fastq
rem cd /d/GenomeInABottle
rem time /c/STRtest/win_speed/str8rzr.exe -c strRazor.21marker.config -p 10 -f 2  -o HG03750.sort.razor.str  HG03750.sort.fastq  

rem time for 
rem time /c/STRtest/win_speed/str8rzr.exe -c strRazor.21marker.config -p 10 -f 2 -o HG002.SequelII.merged_15kb_20kb.pbmm2.GRCh38.haplotag.10x.razor.str HG002.SequelII.merged_15kb_20kb.pbmm2.GRCh38.haplotag.10x.fastq

rem prompt $t$g
rem D:\GenomeInABottle\win_speed\
cd D:\GenomeInABottle
str8rzr.exe -c strRazor.21marker.config -p 10 -f 2  HG002.SequelII.merged_15kb_20kb.pbmm2.GRCh38.haplotag.10x.fastq
prompt $t$g


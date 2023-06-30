#/usr/bin/bash
# HipSTR: https://hipstr-tool.github.io/HipSTR-tutorial/
# ./HipSTR/HipSTR --bams      bams/ERR194147.bam,bams/ERR194160.bam,bams/ERR194161.bam
#                --fasta     fasta/all_chroms.fa
#                --regions   regions.bed
#                --str-vcf   trio.marshfield.vcf.gz
#                --log       trio.marshfield.log
#                --viz-out   trio.marshfield.viz.gz
#                --min-reads 25 --def-stutter-model
tooldir=~/tools/HipSTR
cd /mnt/data0/xuewen/MS_STRcaller
threadxw=1 #not support parallel
outdir="/mnt/data0/xuewen/HipSTR"
gseq="GRCh38_full_analysis_set_plus_decoy_hla.fa"
# inf="HG002.GRCh38.300x.bam"  #no @RG in header
inf="HG03750.bam"
config="STRRegionsV5xwlinuxBest.bed"
$tooldir/HipSTR --fasta $gseq --bams $inf --regions STRRegionsV5xwlinuxBest_hipSTR.bed --str-vcf $inf.hip.vcf.gz --viz-out $inf.viz.gz --min-reads 2 --def-stutter-model 

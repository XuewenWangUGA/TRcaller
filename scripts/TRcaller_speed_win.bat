
rem #this script is used for test time for STRcaller

rem # put all data into a directory and go to this directory 

rem for: "HG03750.bam"

rem version 0.4 of core ExtractReadInBAM_mincount.jar (included all sort and index internally)
time python3 STRPacBio_dev.py -l STRRegionsV5xwwinBest.bed -b HG002.SequelII.merged_15kb_20kb.pbmm2.GRCh38.haplotag.10x.loc.bam -o HG002.SequelII.merged_15kb_20kb.pbmm2.GRCh38.haplotag.10x.loc.bam.win.str

time python3 STRPacBio_dev.py -l STRRegionsV5xwwinBest.bed -b HG03750.sort.bam -o HG03750.sort.bam.win.str

time python3 STRPacBio_dev.py -l STRRegionsV5xwwinBest.bed -b HG002_10xG_NA24385_GRCh38.bam -o HG002_10xG_NA24385_GRCh38.bam.str
done

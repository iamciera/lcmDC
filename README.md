#Dan Chitwood LCM Notebook

Date: October 2014
Author: Ciera Martinez

##Making Count Data table
I recieved the files from Brad Townsley in the Sinha Lab.  The reads were pre-processed by Brad. The files that I started with are located in an IRODs folder containing all raw data and pre-processing steps: [https://de.iplantcollaborative.org/de/?type=data&folder=/iplant/home/bttownsley/4Mike/4Cira/DanLibsRaw2014-07](https://de.iplantcollaborative.org/de/?type=data&folder=/iplant/home/bttownsley/4Mike/4Cira/DanLibsRaw2014-07).  Brad proceesed the reads through mapping with bowtie.

I used ```sam2count.R``` to get read counts on SAM files generated from the mapping.  Script here: [sam2counts.R](https://github.com/iamciera/Scripts-and-Protocols/blob/master/RNAseq/scripts/sam2counts.R)

Since the SAM files were not concatenated before mapping, the reads were seperated into multiple files. I had to add together columns and do some renaming so samples matched library nomeclature.  The details of the clean up are in the script: [cleanCountData.R](https://github.com/iamciera/lcmDC/blob/master/R/cleanCountData.Rmd).

##RNAseq

I was reading into how to analyse this data correctly and it appears as though the voom package is the best.  I do not know this package, nor have a looked at developmental series data.  We can talk about further exploring this option.

##Clustering using Self Organizing Map

Used `kohonen` R package.  See analysis for code specifics. 















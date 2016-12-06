###2016-12-05T23:06:26
Initating git repository for this project

###2016-12-05T23:20:16
Running script samtools_pileup.sh with commented out section that was originally run. This should put output in data/sequences_pileup_edited/, based on the recommendations here: http://samtools.sourceforge.net/mpileup.shtml, http://seqanswers.com/forums/showthread.php?t=8509. Note that these recommendations are also based on this document relevant_docs/NIHMS49873-supplement-supp_material.docx, which is based on the following paper: http://www.nature.com/nature/journal/v487/n7407/full/nature11174.html.

On second thought, it might make more sense to use a more modern pipeline, composed of several different steps that can do the quality filtering for me based on GATK. A good outline is found here https://gencore.bio.nyu.edu/variant-calling-pipeline/ Will write script.

###2016-12-06T11:46:05
Edited the samtools_pileup script for a bug. 

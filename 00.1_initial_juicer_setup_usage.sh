# pwd
cd /home/rad/users/gaurav/projects/seqAnalysis/hic

# Source: https://github.com/aidenlab/juicer/wiki/Installation#directory-structure

# Install juicer
cd /home/rad/packages
git clone https://github.com/theaidenlab/juicer.git
cd juicer
ln -s CPU/scripts scripts
cd scripts/
wget http://hicfiles.tc4ga.com.s3.amazonaws.com/public/juicer/juicer_tools_1.14.08.jar
ln -s juicer_tools_1.14.08.jar juicer_tools.jar
cd ..

# Run juicer: https://bioinformaticsworkbook.org/dataAnalysis/GenomeAssembly/Hybrid/Scaffolding_with_HiC_Juicer.html
# Softlink and index your reference
cd /home/rad/packages/juicer
mkdir references
cd references
ln -s /home/rad/packages/data/fasta/human/hg19/hg19.fa hg19.fa
ln -s /home/rad/packages/data/fasta/human/hg19/hg19.fai hg19.fai
bwa index hg19.fa
cd ..

# Predict the fragment sizes from a restriction enzyme digest for your genome
# mkdir restriction_sites
# cd restriction_sites/
# python2.7 ../misc/generate_site_positions.py MboI MaskedMysteryGenome.fasta /09_JuicerScaff/04_HicReads/juicer/references/MysteryGenome.fasta
# #created "MysteryGenome.fasta_MboI.txt"
# cd ..

# Create a chromosome sizes file
cd /home/rad/packages/juicer
bioawk -c fastx '{print $name"\t"length($seq)}' references/hg19.fa > references/hg19_chrom.sizes

# Softlink all fastq files to fastq folder
cd /home/rad/packages/juicer
mkdir fastq
cd fastq
for f in /media/rad/HDD1/hic/tcelldev/fastq/*gz ; do ln -s $f;done
cd ..

# Run juicer
cd /home/rad/packages/juicer
bash scripts/juicer.sh -y restriction_sites/hg19_HindIII.txt -z references/hg19.fa -p references/hg19_chrom.sizes -S dedup
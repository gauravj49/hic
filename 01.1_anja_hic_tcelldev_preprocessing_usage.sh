# pwd
cd /home/rad/users/gaurav/projects/seqAnalysis/hic

# Copy files to the HDD1
ls /media/nas/temporary/PUB_CRCs/hic/*.gz | parallel --progress --eta -j 32 'rsync -arvP {} /media/rad/HDD1/hic/tcelldev/fastq'

# Rename the files with new naming convention complianced with illumina naming convention
# Naming convention: ExperimentInfo_Species_SeqProtocol_SeqType_Read
# 1) Experiment info: ExperimentName-CellLine-SpecialCondition-ReplicateNumber
# 2) Species: Human, mouse, etc.
# 3) SeqProtocol: Rnaseq, ChIPseq etc.
# 4) SeqType: paired end or single end
# 5) Read: R1 for side 1 and R2 for side 2
# Example: 
#   - TransPB-CD4-CD4PosTcells-Rep3_mm_atacseq_se_R1.fastq.gz
#   - TransPB-CD4-GSM2056292-Rep1_mm_atacseq_pe_R1.fastq.gz and TransPB-CD4-GSM2056292-Rep1_mm_atacseq_pe_R2.fastq.gz

mv SRR3269900_1.fastq.gz TcellDev-HSC-HSPCtoTcell-Rep1_mm_hic_pe_R1.fastq.gz
mv SRR3269902_1.fastq.gz TcellDev-CLP-HSPCtoTcell-Rep1_mm_hic_pe_R1.fastq.gz
mv SRR3269904_1.fastq.gz TcellDev-DN2-HSPCtoTcell-Rep1_mm_hic_pe_R1.fastq.gz
mv SRR3269905_1.fastq.gz TcellDev-DN3-HSPCtoTcell-Rep1_mm_hic_pe_R1.fastq.gz
mv SRR3269907_1.fastq.gz TcellDev-DP-HSPCtoTcell-Rep1_mm_hic_pe_R1.fastq.gz
mv SRR3269908_1.fastq.gz TcellDev-HSC-HSPCtoTcell-Rep2_mm_hic_pe_R1.fastq.gz
mv SRR3269909_1.fastq.gz TcellDev-CLP-HSPCtoTcell-Rep2_mm_hic_pe_R1.fastq.gz
mv SRR5183424_1.fastq.gz TcellDev-DN2-HSPCtoTcell-Rep2_mm_hic_pe_R1.fastq.gz
mv SRR3269911_1.fastq.gz TcellDev-DN3-HSPCtoTcell-Rep2_mm_hic_pe_R1.fastq.gz
mv SRR3269913_1.fastq.gz TcellDev-DP-HSPCtoTcell-Rep2_mm_hic_pe_R1.fastq.gz
mv SRR5183440_1.fastq.gz TcellDev-HSC-HSPCtoTcell-Rep3_mm_hic_pe_R1.fastq.gz
mv SRR5183436_1.fastq.gz TcellDev-CLP-HSPCtoTcell-Rep3_mm_hic_pe_R1.fastq.gz
mv SRR5183432_1.fastq.gz TcellDev-DN2-HSPCtoTcell-Rep3_mm_hic_pe_R1.fastq.gz
mv SRR5183423_1.fastq.gz TcellDev-DN3-HSPCtoTcell-Rep3_mm_hic_pe_R1.fastq.gz
mv SRR5183421_1.fastq.gz TcellDev-DP-HSPCtoTcell-Rep3_mm_hic_pe_R1.fastq.gz
mv SRR3269900_2.fastq.gz TcellDev-HSC-HSPCtoTcell-Rep1_mm_hic_pe_R2.fastq.gz
mv SRR3269902_2.fastq.gz TcellDev-CLP-HSPCtoTcell-Rep1_mm_hic_pe_R2.fastq.gz
mv SRR3269904_2.fastq.gz TcellDev-DN2-HSPCtoTcell-Rep1_mm_hic_pe_R2.fastq.gz
mv SRR3269905_2.fastq.gz TcellDev-DN3-HSPCtoTcell-Rep1_mm_hic_pe_R2.fastq.gz
mv SRR3269907_2.fastq.gz TcellDev-DP-HSPCtoTcell-Rep1_mm_hic_pe_R2.fastq.gz
mv SRR3269908_2.fastq.gz TcellDev-HSC-HSPCtoTcell-Rep2_mm_hic_pe_R2.fastq.gz
mv SRR3269909_2.fastq.gz TcellDev-CLP-HSPCtoTcell-Rep2_mm_hic_pe_R2.fastq.gz
mv SRR5183424_2.fastq.gz TcellDev-DN2-HSPCtoTcell-Rep2_mm_hic_pe_R2.fastq.gz
mv SRR3269911_2.fastq.gz TcellDev-DN3-HSPCtoTcell-Rep2_mm_hic_pe_R2.fastq.gz
mv SRR3269913_2.fastq.gz TcellDev-DP-HSPCtoTcell-Rep2_mm_hic_pe_R2.fastq.gz
mv SRR5183440_2.fastq.gz TcellDev-HSC-HSPCtoTcell-Rep3_mm_hic_pe_R2.fastq.gz
mv SRR5183436_2.fastq.gz TcellDev-CLP-HSPCtoTcell-Rep3_mm_hic_pe_R2.fastq.gz
mv SRR5183432_2.fastq.gz TcellDev-DN2-HSPCtoTcell-Rep3_mm_hic_pe_R2.fastq.gz
mv SRR5183423_2.fastq.gz TcellDev-DN3-HSPCtoTcell-Rep3_mm_hic_pe_R2.fastq.gz
mv SRR5183421_2.fastq.gz TcellDev-DP-HSPCtoTcell-Rep3_mm_hic_pe_R2.fastq.gz


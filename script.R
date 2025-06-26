############################Candidate Gene Analysis####################

setwd("C:/Users/ehtis/OneDrive - New Mexico State University/SUNNY/Research Projects/Fruit Morphology Projects/GWAS/Candidate gene analysis")

# Read the GFF3 file for Capsicum annuum, skipping comment lines starting with '#'
file <- read.delim("Capsicum_annuum.ASM51225v2.60.chr.gff3", header=F, comment.char="#")

# Extract only the rows where the feature type (column V3) is 'gene'
gene_dataset <- file[file$V3 == "gene",]

# Set the position of the SNP marker
position = 283763587  # Genomic position of the SNP marker

# Define a 1 Mb window around the SNP: 500,000 bp upstream and downstream
srt <- position - 500000  # Start of the upstream flanking region
stop <- position + 500000  # End of the downstream flanking region

# Filter genes on chromosome 1 (V1) within the 1 Mb region (V4 > srt and V5 < stop)
dataset <- gene_dataset[gene_dataset$V4 > srt & gene_dataset$V5 < stop & gene_dataset$V1 == 1,]

# Save the filtered genes to a CSV file, naming it with the SNP position
write.csv(dataset, paste0("SNP_1_ARA", position, ".csv"), row.names=F)
\# Candidate Gene Analysis



\## Overview

This R script performs candidate gene analysis by extracting gene features from a GFF3 file within a specified genomic region around a Single Nucleotide Polymorphism (SNP) marker. The script filters genes based on chromosome and a defined flanking region, then saves the results to a CSV file. This is useful for identifying candidate genes near SNPs for applications in genetic research, such as plant breeding, disease association studies, or functional genomics.



\## Prerequisites

\- \*\*R\*\*: Version 3.6 or higher

\- \*\*Input File\*\*: A GFF3 file containing genomic annotations (e.g., genes, exons) for the organism of interest  

&nbsp; Ensure the GFF3 file is in the same directory as the script or provide the correct file path.



\## Script Description

The script (`snp\_analysis.R`) performs the following steps:

1\. Reads a GFF3 file, ignoring comment lines starting with `#`.

2\. Filters for features labeled as `gene` in the third column of the GFF3 file.

3\. Defines a genomic region around a user-specified SNP position using a customizable flanking window (e.g., ±500,000 bp).

4\. Extracts genes within the specified region on a user-defined chromosome.

5\. Saves the filtered gene data to a CSV file named dynamically based on the SNP position and chromosome.



\## Usage

1\. Place the GFF3 file in the same directory as the script or update the file path in the script.

2\. Open R or an R environment (e.g., RStudio).

3\. Modify the script parameters:

&nbsp;  - Set the `position` variable to the desired SNP position.

&nbsp;  - Adjust the flanking region size (default: ±500,000 bp) in the `srt` and `stop` calculations.

&nbsp;  - Specify the target chromosome in the filtering step (e.g., `V1 == 1` for chromosome 1).



The output CSV file will be created in the working directory, named based on the SNP position and chromosome.



\## Input File Format

The input is a standard GFF3 file with tab-delimited columns.



Key columns used:

\- `V1`: Chromosome or sequence ID (e.g., 1, chr1)

\- `V3`: Feature type (e.g., gene)

\- `V4`: Start position of the feature

\- `V5`: End position of the feature



\## Output

\- A CSV file containing the filtered gene features within the specified genomic region.

\- The file name is dynamically generated (e.g., `SNP\_\[chromosome]\_\[position].csv`).

\- Columns match the GFF3 file structure, with no row names included.



\## Customization

\- \*\*SNP Position\*\*: Modify the `position` variable to analyze a different SNP.

\- \*\*Flanking Region\*\*: Adjust the flanking window size by changing the value in the `srt` and `stop` calculations.

\- \*\*Chromosome\*\*: Update the chromosome filter (e.g., `V1 == "chrX"`) to target a different chromosome.

\- \*\*Output File Name\*\*: Modify the `paste0` function to customize the output file name format.



\## Notes

\- Ensure the GFF3 file is correctly formatted and accessible.

\- Verify that the chromosome identifiers in the GFF3 file match the filter used in the script (e.g., `1`, `chr1`).

\- For large GFF3 files, ensure sufficient memory is available in R.

\- The script can be adapted for other feature types (e.g., exons, CDS) by modifying the `V3` filter.




setwd("C:/Users/jason/Desktop/BU/BF528/project_3")

##Importing counts
ER_norm_counts<-read.csv("ER_deseq_norm_counts.csv")
PPARA_norm_counts<-read.csv("PPARA_deseq_norm_counts.csv", row.names= 1)
DNA_norm_counts<-read.csv("DNA_deseq_norm_counts.csv", row.names= 1)

##Merging counts and moving gene ID column to row names
norm_counts_combined <- as.data.frame(c(ER_norm_counts, PPARA_norm_counts, DNA_norm_counts))
row.names(norm_counts_combined)<-norm_counts_combined[,'X']
norm_counts_combined <- subset(norm_counts_combined, select = -c(1))

##Removing control vehicles to only display concordance
norm_counts_combined2 <- subset(norm_counts_combined, select = -c(4, 5, 6, 7, 8, 9, 13, 14, 15, 16, 17, 18, 22, 23, 24, 25, 26, 27))

##Heatmap creation
norm_counts_combined2 <- as.matrix(norm_counts_combined2)
heatmap(norm_counts_combined2,ylab = "Samples")
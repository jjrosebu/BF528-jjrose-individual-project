setwd("C:/Users/jason/Desktop/BU/BF528/project_3")
library(dplyr)

ER_DEG<- read.csv("4__ER_deseq_results.csv", header=T)
PPARA_DEG<-read.csv("4__PPARA_deseq_results.csv", header=T)
DNA_DEG<-read.csv("4__DNA_deseq_results.csv", header=T)

##Sig threshold for pathway analysis with a more strict cutoff, and no more than 3000 for DAVID to accept
ER_sig_DEG <- subset(ER_DEG, pvalue < 0.01)
PPARA_sig_DEG <- subset(PPARA_DEG, pvalue < 0.01)
DNA_sig_DEG <- subset(DNA_DEG, pvalue < 0.01)
DNA_sig_DEG <- top_n(DNA_sig_DEG, -3000)

write.table(ER_sig_DEG[1], "ER_sig_DEG.txt", row.names = F, quote = F)
write.table(PPARA_sig_DEG[1], "PPARA_sig_DEG.txt", row.names = F, quote = F)
write.table(DNA_sig_DEG[1], "DNA_sig_DEG.txt", row.names = F, quote = F)
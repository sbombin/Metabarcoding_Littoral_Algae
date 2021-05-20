rm(list=ls())
library(data.table)
library(splitstackshape)
library(readxl)
setwd("~/Desktop/all.files/usearch.pipeline/")

bw1a <- read.table("bw50.r1.unpaired.filtered.uniques.otu.sortm.taxonomy/bw50.r1.unpaired.filtered.uniques.otu_tax_assignments.txt")
bw1aa <- read.table("bw50.r1.unpaired.table.txt")
#sum(bw1.pear$V2)
bw1a.comb<- merge.data.frame(bw1a,bw1aa, by = "V1")
bw1a.comb.split <- cSplit(bw1a.comb,2,sep=";",drop=FALSE)
#grep("unassigned",bw1a.comb$V2.x,ignore.case=T)

bw1b <- read.table("bw50.r2.unpaired.filtered.uniques.otu.sortm.taxonomy/bw50.r2.unpaired.filtered.uniques.otu_tax_assignments.txt")
bw1bb <- read.table("bw50.r2.unpaired.table.txt")
bw1b.comb<- merge.data.frame(bw1b,bw1bb, by = "V1")
bw1b.comb.split <- cSplit(bw1b.comb,2,sep=";",drop=FALSE)

bw1c <- read.table("bw50.tr_merg.usr_merg.trimm.filtered.uniques.otu.sortm.taxonomy/bw50.tr_merg.usr_merg.trimm.filtered.uniques.otu_tax_assignments.txt")
bw1cc <- read.table("bw50.tr_merg.usr_merg.trimm.table.txt")
bw1c.comb<- merge.data.frame(bw1c,bw1cc, by = "V1")
bw1c.comb.split <- cSplit(bw1c.comb,2,sep=";",drop=FALSE)

bw1d <- read.table("bw50.tr_merg.usr_nmer.r1.trimm.filtered.uniques.otu.sortm.taxonomy/bw50.tr_merg.usr_nmer.r1.trimm.filtered.uniques.otu_tax_assignments.txt")
bw1dd <- read.table("bw50.tr_merg.usr_nmer.r1.trimm.table.txt")
bw1d.comb<- merge.data.frame(bw1d,bw1dd, by = "V1")
bw1d.comb.split <- cSplit(bw1d.comb,2,sep=";",drop=FALSE)

bw1e <- read.table("bw50.tr_merg.usr_nmer.r2.trimm.filtered.uniques.otu.sortm.taxonomy/bw50.tr_merg.usr_nmer.r2.trimm.filtered.uniques.otu_tax_assignments.txt")
bw1ee <- read.table("bw50.tr_merg.usr_nmer.r2.trimm.table.txt")
bw1e.comb<- merge.data.frame(bw1e,bw1ee, by = "V1")
bw1e.comb.split <- cSplit(bw1e.comb,2,sep=";",drop=FALSE)

setwd("~/Desktop/")
write.csv(bw1a.comb.split,"bw50a.comb.split.usrch.csv")
write.csv(bw1b.comb.split,"bw50b.comb.split.usrch.csv")
write.csv(bw1c.comb.split,"bw50c.comb.split.usrch.csv")
write.csv(bw1d.comb.split,"bw50d.comb.split.usrch.csv")
write.csv(bw1e.comb.split,"bw50e.comb.split.usrch.csv")

write.table(bw1.comb.pear,"bw1.comb.pear.txt",sep = "\t")


bw25_combined_all <- read_excel("~/Desktop/bw49.combined.all.sortm.xlsx")
aa<-data.frame(subset(bw25_combined_all, V2.x=="Unassigned"))
##sum(aa$V2.y)  
write.csv(aa,"bw49.Unassigned.sortm.csv")

cc <- data.frame(subset(bw25_combined_all, V2.x_2=="Chlorophyta"))
dd <- data.frame(subset(bw25_combined_all, V2.x_3=="Chlorophyta"))
ee <- data.frame(subset(bw25_combined_all, V2.x_4=="Chlorophyta"))
write.csv(dd,"bw49b.Chlorophyta.sortm.csv")

sum(ee$V2.y)
sum(dd$V2.y)
sum(cc$V2.y)

cc <- data.frame(subset(bw25_combined_all, V2.x_2=="Rhodophyta"))
dd <- data.frame(subset(bw25_combined_all, V2.x_3=="Rhodophyta"))
ee <- data.frame(subset(bw25_combined_all, V2.x_4=="Rhodophyta"))
write.csv(dd,"bw48.Rhodophyta.sortm.csv")

cc <- data.frame(subset(bw25_combined_all, V2.x_2=="Cyanobacteria"))
dd <- data.frame(subset(bw25_combined_all, V2.x_3=="Cyanobacteria"))
ee <- data.frame(subset(bw25_combined_all, V2.x_4=="Cyanobacteria"))
write.csv(cc,"bw47.Cyanobacteria.sortm.csv")

cc <- data.frame(subset(bw25_combined_all, V2.x_2=="Chromista"))
dd <- data.frame(subset(bw25_combined_all, V2.x_3=="Chromista"))
ee <- data.frame(subset(bw25_combined_all, V2.x_4=="Chromista"))
write.csv(cc,"bw49.Chromista.sortm.csv")

cc <- data.frame(subset(bw25_combined_all, V2.x_02=="Ochrophyta"))
dd <- data.frame(subset(bw25_combined_all, V2.x_03=="Ochrophyta"))
ee <- data.frame(subset(bw25_combined_all, V2.x_04=="Ochrophyta"))
write.csv(dd,"bw47.Ochrophyta.sortm.csv")

cc <- data.frame(subset(bw25_combined_all, V2.x_02=="Haptophyta"))
dd <- data.frame(subset(bw25_combined_all, V2.x_03=="Haptophyta"))
ee <- data.frame(subset(bw25_combined_all, V2.x_04=="Haptophyta"))
write.csv(dd,"bw47.Haptophyta.sortm.csv")

cc <- data.frame(subset(bw25_combined_all, V2.x_2=="Stramenopiles"))
dd <- data.frame(subset(bw25_combined_all, V2.x_3=="Stramenopiles"))
ee <- data.frame(subset(bw25_combined_all, V2.x_4=="Stramenopiles"))
write.csv(cc,"bw49.Stramenopiles.csv")

xxx <- read.table("~/Desktop/sherwood.database/SherwoodLab_UPA_LSU_Tax_v0.01.1.txt")
xxxz <- cSplit(xxx,2,sep=";",drop=FALSE)
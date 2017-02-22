
rm(list=ls())
require(Biostrings)
CgPromoter=readDNAStringSet("Cg_promoter_200bp.fasta",format = "fasta")
head(CgPromoter)
cc = oligonucleotideFrequency(CgPromoter, 8,with.labels=TRUE,simplify.as="collapsed")
dat = as.data.frame(cc[(cc>100)])
barplot(dat[,1],names.arg = rownames(dat))
table(dat)
head(dat)
xcj
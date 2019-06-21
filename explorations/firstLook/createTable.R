genes <- LETTERS
geneSets <- c("KEGG_ABC_TRANSPORTERS", "KEGG_GLYCEROLIPID_METABOLISM", "REACTOME_GAP_JUNCTION_ASSEMBLY")

mtx <- matrix(0, nrow=length(genes), ncol=length(geneSets), dimnames=list(genes, geneSets))

gs1 <- sample(genes, 5)
gs2 <- sample(genes, 12)
gs3 <- sample(genes, 12)

mtx[gs1, "KEGG_ABC_TRANSPORTERS"] <- 1
mtx[gs2, "KEGG_GLYCEROLIPID_METABOLISM"] <- 1
mtx[gs3, "REACTOME_GAP_JUNCTION_ASSEMBLY"] <- 1

apply(mtx, 1, sum)




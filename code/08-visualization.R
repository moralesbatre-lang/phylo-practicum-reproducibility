library(ape)
library(phangorn)
library(phytools)

gene_trees <- read.tree("../results/04-all_gene_trees.tre")

plot(gene_trees[[1]], use.edge.length = FALSE)

rtre <- root(gene_trees[[1]],
             outgroup = "H_vulgare_HVens23",
             resolve.root = TRUE)

plot(rtre)

supertree <- read.tree("../results/07-supertree.tre")
plot(supertree, use.edge.length = FALSE)



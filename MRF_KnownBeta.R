library(igraph)

### input network and p-value
netwk = read.csv("network.csv")
pv = read.table("pval.txt")
netwk = netwk[,c(2:ncol(netwk))]
pv = pv[,1]
netwk = as.matrix(netwk)
rownames(netwk) = colnames(netwk)
G = graph.adjacency(netwk, mode="undirected")
plot(G)

### 

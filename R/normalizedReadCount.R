#Normalized Read Count

#Using edgeR to get normalized read count
library(edgeR)

counts <- read.table("../data/countData4.txt")
names(counts)
counts[is.na(counts)] <- 0
head(counts)

#First get normalized read count
y <- DGEList(counts=counts)

#Look at samples 
y$samples

#low samples = 3rd.leaf.7, 2nd.SAM.4, 5th.leaf.3

##Look at library size
y$pseudo<- equalizeLibSizes(y)

write.csv(y$pseudo$pseudo,"../data/normalized_count_file.csv")

#If you want to go further into differentiatl gene expression
#Make a vector of all unique library types, which just means remove the last digit from names(counts). Then you simiply take that vector and name it group

#pattern = ".\\d$"
#group <- gsub(pattern, "", names(counts))
#dge <- DGEList(counts = counts, group = group)
#ect.

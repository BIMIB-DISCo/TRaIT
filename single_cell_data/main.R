# install the TRONCO library if required
if (!require("TRONCO")) {
    source("https://bioconductor.org/biocLite.R")
    biocLite("TRONCO")
    library("TRONCO")
}

# load the data
load("dataset_Navin_TNBC.RData")
head(dataset_Navin_TNBC)

# perform the analysis by TRaIT Edmonds
source('TRaIT.R')

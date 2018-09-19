# install the TRONCO library if required
if (!require("TRONCO")) {
    source("https://bioconductor.org/biocLite.R")
    biocLite("TRONCO")
    library("TRONCO")
}

# load the data
load('data.RData')
head(data)

# perform the analysis with TRaIT Edmonds and PRIM
source("TRaIT.R")

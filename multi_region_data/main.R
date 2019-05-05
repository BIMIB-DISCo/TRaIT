###########################################################################
#
# TRaIT/TRONCO Examples -- CRC Case Study COADREAD
#
###########################################################################
# Copyright (c) 2015-2019, The TRONCO Team (www.troncopackage.org)
# email: tronco@disco.unimib.it
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the GNU GPL v3.0
# which accompanies this distribution
###########################################################################


### Install the TRONCO library if required.

if (!require("TRONCO")) {
    source("https://bioconductor.org/biocLite.R")
    biocLite("TRONCO")
    library("TRONCO")
}


### Load the data

load('data.RData')
head(data)

### Perform the analysis with TRaIT Edmonds and PRIM

source("TRaIT.R")

### end of file -- main.R


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


# Install the TRONCO library if required

if (!require("TRONCO")) {
    source("https://bioconductor.org/biocLite.R")
    biocLite("TRONCO")
    library("TRONCO")
}


# Load the data

load("dataset_Navin_TNBC.RData")
head(dataset_Navin_TNBC)


# Perform the analysis by TRaIT Edmonds
source('TRaIT.R')

#### end of file -- main.R


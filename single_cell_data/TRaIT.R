# set the seed
SEED = 483775

# set the error rates to the values suggested in the reference paper
epos = 1.24e-6
eneg = 0.0972

# load the data
dataset = import.genotypes(dataset_Navin_TNBC)

# infer the progression with Edmonds algorithm
edmonds = tronco.bootstrap(tronco.edmonds(dataset,epos=epos,eneg=eneg, boot.seed = SEED))

# save the results to file
save(edmonds,file="edmonds.RData")

plot_graph = function( model, title, file ) {
    model = change.color(model, type='variant', new.color='lightblue3')
    oncoprint(model, file = paste0(file, '_data.pdf'), title = title)
    tronco.plot(model, 
        edge.cex = 1.5,          # scale edge size
        legend.cex = .5,         # scale legend size
        scale.nodes = .6,        # scale node size
        confidence = c('tp', 'pr', 'hg'), # display p-values for these statistics 
        disconnected = FALSE,        # do not display nodes without incoming/outgoing edges
        height.logic = .3,       # scale logical connectives
        file = paste0(file, '.pdf'),
        title = title)
}

plot_graph(edmonds,title="EDMONDS",file="edmonds")

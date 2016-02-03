set.seed(15)
simDat <- data.frame(ID=1:10,
                     Value=rpois(10, lambda=5),
                     Apples=sample(c(TRUE,FALSE),10, replace=TRUE))

simDat$Apples[4] <- NA

# save(simDat, "data/simDat.rda")
# OR
# use_data(simDat)

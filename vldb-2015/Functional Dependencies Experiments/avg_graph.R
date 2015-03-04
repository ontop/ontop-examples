#Script for itranspossing averaging the *.table.txt files over the selectivities. The output can be pasted into Experiment[DB2,postgres]AvgSelectivity.tex
# Run with
# Rscript --slave --vanilla ../avg_graph.R <table with values> > avg.table

args <- commandArgs(TRUE)
db2_joins <- read.csv(args[1],sep="&",header=FALSE,skip=0)
db2_split <- as.matrix(split(db2_joins,rep(1:4,each=3)))
transp <- apply(db2_split,1,t)
correct <- unsplit(transp,rep(1:4))
cor <- as.matrix(as.data.frame(correct))
db2_means <- .colMeans(cor,m=3,n=12)
db2_graph <- cbind(as.matrix(c(1:12)),db2_means)
db2_coords_tmp <- apply(db2_graph,1,paste,sep="",collapse=",")
db2_coords <- paste(db2_coords_tmp,sep="",collapse=")(")
cat("(",db2_coords,")")

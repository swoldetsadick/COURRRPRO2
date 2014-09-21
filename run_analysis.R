url <- "http://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
download.file(url, "repdata-data-StormData.csv", mode="wb")

#library(data.table)
sample <- read.csv("./repdata-data-StormData.csv", nrows=500)
classes <- lapply(sample, class)
classes <- lapply(classes, function(x) ifelse(x=="integer","factor", x))
name <- names(sample)
str(sample)

data <- read.csv("./repdata-data-StormData.csv", header=TRUE, sep= ",", col.names = name)
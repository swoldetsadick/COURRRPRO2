url <- "http://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
download.file(url, "repdata-data-StormData.csv", mode="wb")
data <- read.csv("./repdata-data-StormData.csv", nrows=50)
class(data)
str(data)

data <- read.csv("./repdata-data-StormData.csv",header=TRUE,
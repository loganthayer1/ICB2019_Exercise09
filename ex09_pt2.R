#script that generates 2 plots from data.txt
#separates by north, south, east, west, in a bar plot of the means 
#and a scatter plot of all obs (color coded?)

allData <- read.table("data.txt", sep = ",", header = TRUE)
NorthData <- allData[allData$region=="north",]
SouthData <- allData[allData$region=="south",]
EastData <- allData[allData$region=="east",]
WestData <- allData[allData$region=="west",]

NorthObs <- NorthData$observations
SouthObs <- SouthData$observations
EastObs <- EastData$observations
WestObs <- WestData$observations

df_obs <- data.frame(NorthObs,SouthObs,EastObs,WestObs)
colnames(df_obs) <- c('North','South','East','West')

df_means <- data.frame(mean(NorthObs),mean(SouthObs),mean(EastObs),mean(WestObs))
colnames(df_means) <- c('North','South','East','West')


library(ggplot2)


d <- ggplot(data = allData, aes(x = as.character(region), y = observations))
d + geom_bar(stat = "identity") + theme_classic() + 
  xlab("Region") + ylab("Observations")


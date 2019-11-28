#script that generates 2 plots from data.txt
#separates by north, south, east, west, in a bar plot of the means 
#and a scatter plot of all obs (color coded?)

allData <- read.table("data.txt", sep = ",", header = TRUE)
library(ggplot2)

#barplot of population means
d = ggplot(allData, aes(x = as.character(region), y = observations))
d  + theme_classic() + stat_summary(geom="bar", fun.y="mean") + 
  xlab("Region") + ylab("Observations")

#scatterplot
d = ggplot(allData, aes(x = as.character(region), y = observations))
d  + theme_classic() + stat_summary(geom="point") + 
  xlab("Region") + 
  ylab("Observations") + 
  geom_jitter()



#The bar and scatter plots tell a very different story about the data set here.
#Whereas the bar graph appears to imply that the data sets are very very similar, 
#the scatter plot displays a vast difference in the spreads. This implies that the 
#very close-value means could be falsely interpreted fairly easily unless the 
#spread of the data was taken into account as well. Thus the scatter plot perhaps
#presents some context that would be important to consider when looking at mean similarity.
#Find data on two variables that are related to each other
#Enter data into txt file (or excel then save a txt file)
#write a script that loads the text file, produces a scatterplot, includes a trend line

ScatterData <- read.table("scatterdata.txt", header = TRUE, sep = ",")
temperature <- as.numeric(ScatterData$temperature)
ice.cream.sales <- as.numeric(gsub("\\$", "", ScatterData$ice.cream.sales))
plot(x=temperature, y=ice.cream.sales,
     col = "black",
     xlab = "Temperature (Degrees Celsius)",
     ylab = "Ice Cream Sales ($)",
     main = "Ice Cream Sales vs. Temperature")
abline(lm(ice.cream.sales~temperature), col="red")

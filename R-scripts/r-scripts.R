getwd()
ppcdata <- read.csv("PersonalComputerPrices/dataset_price_personal_computers.csv")
head(ppcdata)
View(ppcdata)
#1.Create a summary of stats for the dataset.
summary(ppcdata)
summary(ppcdatatrans)


#2.Create a correlation of stats for the ppcdataset. (provide a screen shot) (Hint: Transform may be needed)
   #For correlation to access the ppcdata, the ppcdata has to be numeric, as our ppcdataset have some values with yes and no
   #convert Yes-1 and No-0
ppcdata$cd <- gsub("no", "0", ppcdata$cd)
ppcdata$cd <- gsub("yes", "1", ppcdata$cd)
ppcdata$multi <- gsub("no", "0", ppcdata$multi)
ppcdata$multi <- gsub("yes", "1", ppcdata$multi)
ppcdata$premium <- gsub("no", "0", ppcdata$premium)
ppcdata$premium <- gsub("yes", "1", ppcdata$premium)

#Transform column to numeric
ppcdatatrans <- transform(ppcdata, cd = as.numeric(cd), multi = as.numeric(multi), premium = as.numeric(premium))
#correlation of data frame
cor(ppcdatatrans)

#3.What is the Min, Max, Median, and Mean of the Price?
summary(c(ppcdatatrans$price))

#It can also be shown individually
min(ppcdatatrans$price)
max(ppcdatatrans$price)
median(ppcdatatrans$price)
mean(ppcdatatrans$price)

#Or can be shown using favstats command like below
favstats(~price, data = ppcdatatrans)

#4.What is the correlation values between Price, Ram, and Ads?
cor(ppcdatatrans[c("price","ram", "ads")])

#5.Create a subset of the dataset with only Price, CD, and Premium.
ppcdatatrans.sub0 <- subset(ppcdatatrans, select = c("price", "cd", "premium"))
summary(ppcdatatrans.sub0)
cor(ppcdatatrans.sub0)

#6.Create a subset of the dataset with only Price, HD, and Ram where Price is greater than or equal to $1750.
ppcdatatrans.sub1 <- subset(ppcdatatrans, price >= 1750, select = c("price", "hd", "ram"))
summary(ppcdatatrans.sub1)
cor(ppcdatatrans.sub1)

#7.What percentage of Premium computers were sold? (provide a screen shot)(Hint: Categorical analysis)
find.package("ggplot2")
install.packages("ggplot2")

find.package("mosaic")
install.packages("mosaic")

#categorical analysis
library(mosaic)

tally(~premium, data = ppcdatatrans, margins = TRUE, format = "perc")

#8.How many Premium computers with CDs were sold? (Hint: Contingency table analysis)
tally(~premium+cd, data = ppcdatatrans, margins = TRUE)

#9.How many Premium computers with CDs priced over $2000 were sold? (Hint: Conditional table analysis)
tally(~premium+cd|price>2000, data = ppcdatatrans, margins = TRUE)

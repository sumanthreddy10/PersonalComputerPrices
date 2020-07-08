setwd("C:/Users/sc064997/R-Programming/wrkdir/PersonalComputerPrices")
data <- read.csv("dataset_price_personal_computers.csv")
head(data)
View(data)
#1.Create a summary of stats for the dataset. (provide a screen shot)
summary(data)


#2.Create a correlation of stats for the dataset. (provide a screen shot) (Hint: Transform may be needed)
   #For correlation to access the data, the data has to be numeric, as our dataset have some values with yes and no
   #convert Yes-1 and No-0
data$cd <- gsub("no", "0", data$cd)
data$cd <- gsub("yes", "1", data$cd)
data$multi <- gsub("no", "0", data$multi)
data$multi <- gsub("yes", "1", data$multi)
data$premium <- gsub("no", "0", data$premium)
data$premium <- gsub("yes", "1", data$premium)

#Transform column to numeric
datatrans <- transform(data, cd = as.numeric(cd), multi = as.numeric(multi), premium = as.numeric(premium))
#correlation of data frame
cor(datatrans)

#3.What is the Min, Max, Median, and Mean of the Price?
summary(c(data$price))

#4.What is the correlation values between Price, Ram, and Ads?
cor(data[c("price","ram", "ads")])

#5.Create a subset of the dataset with only Price, CD, and Premium. (provide a screen shot)
#6.Create a subset of the dataset with only Price, HD, and Ram where Price is greater than or equal to $1750. (provide a screen shot)
#7.What percentage of Premium computers were sold? (provide a screen shot)(Hint: Categorical analysis)
#8.How many Premium computers with CDs were sold? (provide a screen shot)(Hint: Contingency table analysis)
#9.How many Premium computers with CDs priced over $2000 were sold? (provide a screen shot)(Hint: Conditional table analysis)


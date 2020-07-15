

#############PIECHART###################
#Create a pie chart of the computer ram
#Label the ram sizes as follows: 2GB, 4GB, 8GB, 16GB, 24GB, 32GB
#Title the pie chart as "Computer Ram"
#Color the pie chart using the rainbow option
tppc_ram <- table(ppcdata$ram)
pie(tppc_ram, c("2GB", "4GB", "8GB", "16GB", "24GB", "32GB"), main = "Computer Ram", col = rainbow(length(tppc_ram)))


#############BARPLOT#########################
#Create a barplot of the computer screen sizes
#Label the x axis as "Screen Sizes"
#Label the y axis as "Frequency"
#Title the barplot as "Computer Screen Sizes"
#Color the bars in the barplot any color you wish.

tppc_screen <- table(ppcdata$screen)
barplot(tppc_screen, xlab = "Screen Sizes", ylab = "Frequency", main = "Computer Screeen Sizes", col = "light blue")


##############Histogram###################
#Create a histogram of the computer prices
#Label the x axis as "Prices"
#Title the histogram as "Computer Prices"
#Give the histogram any color you wish.

tppc_price <- table(ppcdata$price)
hist(tppc_price, xlab = "Prices", main = "Computer Prices", col = rainbow(length(tppc_price)))


################Box Plot#################
#Create a boxplot of the comparing the computer price and premium category
#Label the y axis as "Price"
#Label the x axis as "Premium"
#Title the boxplot as "Premium Computer Prices Distribution"
#Color the boxplot any color you wish.

boxplot(ppcdata$price~ppcdata$premium, ylab = "Price", xlab = "Premium", 
        main = "Premium Computer Prices Distribution", col = "blue")



#Scatter Plot:
#Create a scatter plot of computer price and hard drive size
#Label the x axis as "Hard Drive Size"
#Label the y axis as "Price"
#Title the scatter plot as "Computer Price vs Hard Drive Size"
#Color the scatter any color you wish.

plot(x=ppcdata$hd, y=ppcdata$price, xlab = "Hard Drive Size", ylab = "Price", 
     main = "Computer Price vs Hard Drive Size", col = "brown")

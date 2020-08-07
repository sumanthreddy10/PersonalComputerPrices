getwd()

library(ggplot2)
############ggplot2 - Bar Plot####################
##################################################

#Plot the ram sold in the computers.
#Breakout how the computer screen sizes based on the ram.
#Position the computer screen sizes side by side.
#Drilldown the dataset further based on premium.
#Label the x-axis.
#Label the y-axis.
#Give the graph a title.
#What story is presented in this visualization?

ppcdata <- read.csv("../DataSet/dataset_price_personal_computers_2.csv", na.strings = "")
View(ppcdata)
head(ppcdata)

ScreenSize <- as.factor(ppcdata$screen)

ggplot(ppcdata, aes(x = ram, fill = ScreenSize )) + facet_wrap(~premium) + theme_bw() + 
  geom_bar(position = "dodge") + ggtitle("Computer screen sizes based on ram sold in the computers with and without premium") + 
  theme(plot.title = element_text(hjust = 0.5))


#############ggplot2 - Histogram#################
################################################

#Plot the distribution of the wages of the rice production. (Use a binwidth = 5)
#Breakout the land status of ownership.
#Drilldown the dataset further based on the varieties of rice produced.
#Label the x-axis.
#Label the y-axis.
#Give the graph a title.
#What story is presented in this visualization?

dpri <- read.csv("../DataSet/dataset_production_of_rice_in_indonesia.csv", na.strings = "")
View(dpri)
head(dpri)  

ggplot(dpri, aes(x = wage, fill = status)) + facet_wrap(~varieties) + theme_bw() + geom_histogram(binwidth = 5) + 
  ggtitle("Distribution of wages based on the varieties of rice production in Indonesia") + 
  theme(plot.title = element_text(hjust = 5))


#############ggplot2 - Box Plot#################
################################################

#Plot the Day vs Tip of the meals.
#Breakout the time of day.
#Drilldown the dataset further based on gender.
#Label the x-axis.
#Label the y-axis.
#Give the graph a title.
#What story is presented in this visualization?

dtd <- read.csv("../DataSet/dataset_tipping_data_1.csv", na.strings = "")
View(dtd)
head(dtd)

ggplot(dtd, aes(x = day, y = tip, fill = time)) + facet_wrap(~sex) + theme_bw() + geom_boxplot() + 
ggtitle("Tips received for meals based on gender for particular day and time") + 
  theme(plot.title = element_text(hjust = 0.5))

###############ggplot2 -Scatter plot##################
######################################################


#Plot the petal length vs petal width of the flowers.
#Breakout the species of the flowers.
#Drilldown the dataset further based on the species.
#Label the x-axis.
#Label the y-axis.
#Give the graph a title.
#What story is presented in this visualization?

eaid <- read.csv("../DataSet/Edgar_Anderson_s_Iris_Data.csv", na.strings = "")
View(eaid)
head(eaid)  

ggplot(eaid, aes(x = Petal.Length, y = Petal.Width, shape = Species, col = Species)) +
                theme_bw() + facet_wrap(~Species) + geom_point() +
                geom_smooth(method = "lm", se = F) + 
  ggtitle("Petal Length vs Petal Width based on the species of flowers") + 
  theme(plot.title = element_text(hjust = 0.5))



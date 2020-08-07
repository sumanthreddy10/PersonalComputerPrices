getwd()

library(ggplot2)

################################################################################
################################################################################


bsfsh_data <- read.csv("../DataSet/dataset_budget_share_food_spanish_households.csv")
View(bsfsh_data)
head(bsfsh_data)

###ggplot2 - Bar Plot: (Use dataset_budget_share_Food_Spanish_Households.csv)###
####ggplot(dataset_name, aes(x=categorical, fill=categorical)) + facet_wrap(~categorical) + theme_bw() + geom_bar(position="dodge")

ggplot(bsfsh_data, aes(x=town, fill=sex)) + facet_wrap(~sex) + theme_bw() + geom_bar(position="dodge")

###Story telling for the above Bar Plot 
##The bar plot explains about 5 different types of town based on their sizes where 1 is the small town and 5 is the big ones.
##The plot shows that more than 8000 man of spanish households stays in 4th biggest town and nearly 2000 in big ones
##For females it is the same where more than 1000 females stays in 4th biggest town and a very few in smallest town

###ggplot2 - Histogram: (Use dataset_budget_share_Food_Spanish_Households.csv)

###ggplot(dataset_name, aes(x=continuous, fill=categorical)) + theme_bw() + facet_wrap(~categorical) + geom_histogram(binwidth=5)

ggplot(bsfsh_data, aes(x=age, fill=sex)) + theme_bw() + facet_wrap(~town) + geom_histogram(binwidth=10)


###ggplot2 - Box Plot: (Use dataset_budget_share_Food_Spanish_Households.csv)

##ggplot(dataset_name, aes(x=categorical, y=continuous, fill=categorical)) + theme_bw() + facet_wrap(~categorical) + geom_boxplot()

ggplot(bsfsh_data, aes(x=town, y=age, fill=sex)) + theme_bw() + facet_wrap(~town) + geom_boxplot()

##ggplot2 - Scatter Plot: (Use dataset_budget_share_Food_Spanish_Households.csv)

##ggplot(dataset_name, aes(x=continuous, y=continuous, shape=categorical, col=categorical)) + 
  ##facet_wrap(~categorical) + theme_bw() + geom_point() + geom_smooth(method="lm",se=F)


ggplot(bsfsh_data, aes(x=wfood, y=age, shape=sex, col=town)) + 
  facet_wrap(~town) + theme_bw() + geom_point() + geom_smooth(method="lm",se=F)

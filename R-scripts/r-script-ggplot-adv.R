getwd()

library(ggplot2)

################################################################################
################################################################################


bsfsh_data <- read.csv("DataSet/dataset_budget_share_food_spanish_households.csv")
View(bsfsh_data)
head(bsfsh_data)

table <- table(bsfsh_data$size)
View(table)


######Categorical---data
#town
#sex
#size

#####continuous---data
#age
#totexp
#wfood

###ggplot2 - Bar Plot: (Use dataset_budget_share_Food_Spanish_Households.csv)###
####ggplot(dataset_name, aes(x=categorical, fill=categorical)) + facet_wrap(~categorical) + theme_bw() + geom_bar(position="dodge")

bsfsh_data$sex <- as.factor(bsfsh_data$sex)
bsfsh_data$town <- as.factor(bsfsh_data$town)

ggplot(bsfsh_data, aes(x=sex, fill=town)) + facet_wrap(~town) + theme_bw() + geom_bar(position="dodge")  + 
      labs(x="SEX", y="COUNT", title = "BUDGET SHARE FOOD BASED ON SEX & TOWN") + theme(plot.title = element_text(hjust = 0.5))


###ggplot2 - Histogram: (Use dataset_budget_share_Food_Spanish_Households.csv)

###ggplot(dataset_name, aes(x=continuous, fill=categorical)) + theme_bw() + facet_wrap(~categorical) + geom_histogram(binwidth=5)

ggplot(bsfsh_data, aes(x=age, fill=sex)) + theme_bw() + facet_wrap(~town) + geom_histogram(binwidth=5) + 
  labs(x="SEX", y="COUNT", title = "DISTRIBUTION OF AGE BASED ON SEX & TOWN") + theme(plot.title = element_text(hjust = 0.5))


###ggplot2 - Box Plot: (Use dataset_budget_share_Food_Spanish_Households.csv)

##ggplot(dataset_name, aes(x=categorical, y=continuous, fill=categorical)) + theme_bw() + facet_wrap(~categorical) + geom_boxplot()

ggplot(bsfsh_data, aes(x=sex, y=age, fill=town)) + theme_bw() + facet_wrap(~sex) + geom_boxplot() + 
  labs(x="SEX", y="COUNT", title = "DISTRIBUTION OF AGE BASED ON SEX & TOWN") + theme(plot.title = element_text(hjust = 0.5))

##ggplot2 - Scatter Plot: (Use dataset_budget_share_Food_Spanish_Households.csv)

##ggplot(dataset_name, aes(x=continuous, y=continuous, shape=categorical, col=categorical)) + 
  ##facet_wrap(~categorical) + theme_bw() + geom_point() + geom_smooth(method="lm",se=F)


ggplot(bsfsh_data, aes(x=totexp, y=wfood, shape=town, col=town)) + 
  facet_wrap(~town) + theme_bw() + geom_point() + geom_smooth(method="lm",se=F) + 
  labs(x="totexp", y="wfood", title = "TOTEXP VS WFOOD BROKEN DOWN BY TOWN") + theme(plot.title = element_text(hjust = 0.5))

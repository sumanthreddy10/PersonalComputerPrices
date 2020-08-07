getwd()

dssd <- read.csv("../DataSet/dataset_student_survey_data.csv", na.strings = "")
View(dssd)
head(dssd)

#categorical analysis
library(mosaic)

#How many females do not exercise in the dataset?
tally(~Sex+Exer, data = dssd, margins = TRUE)


dspt <- read.csv("../DataSet/dataset_survival_of_passengers_on_the_titanic.csv", na.strings = "")
View(dspt)
head(dspt)


#What percentage of females purchased a 2nd class ticket in the dataset
tally(~Sex+PClass, data = dspt, margins = TRUE, format = "perc")


getwd()


#Create a pie chart of the Exer Add the following: Title, Labels, Color
student <- read.csv('DataSet/dataset_student_survey_data.csv')
View(student)
head(student)

student_table <- table(student$Exer)
View(student_table)
pie(student_table, c("Freq", "None", "Some"), main = "Students categorized who Excercise", col = rainbow(length(student_table)))


#Create a pie chart of the sex. Add the following: Title, Labels, Color. 
#(Use Dataset: dataset_self_reports_of_height.csv)
heights <- read.csv('DataSet/dataset_self_reports_of_height.csv')
View(heights)
head(heights)

heights_table <- table(heights$sex)
View(heights_table)
pie(heights_table, c("Female", "Male"), main = "Self Reports of height based on Sex", col = rainbow(length(heights_table)))

#Create a pie chart of the day. Add the following: Title, Labels, Color. 
#(Use Dataset: dataset_tipping_data.csv)
tipping <- read.csv('DataSet/dataset_tipping_data.csv')
View(tipping)
head(tipping)

tipping_table <- table(tipping$day)
View(tipping_table)
pie(tipping_table, c("Friday", "Saturday", "Sunday", "Thursday"), main = "Tipping on Particular day", col = rainbow(length(tipping_table)))

#Create a pie chart of the survived. Add the following: Title, Labels, Color.
#(Use Dataset: dataset_survival_of_passengers_on_the_titanic.csv)
titanic_survival <- read.csv('DataSet/dataset_survival_of_passengers_on_the_titanic.csv')
View(titanic_survival)
head(titanic_survival)

titanic_survival_table <- table(titanic_survival$Survived)
View(titanic_survival_table)

pie(titanic_survival_table, c("NotSurvived", "Survived"), main = "Passengers Survival on the Titanic", col = rainbow(length(titanic_survival_table)))


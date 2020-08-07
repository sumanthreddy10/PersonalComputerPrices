getwd()
studentData <- read.csv("../DataSet/dataset_student_survey_data.csv")
head(studentData)
View(studentData)

#How many males and females over the age of 22 exist in the dataset?
library(mosaic)
tally(~Sex|Age>22, data = studentData, margins = TRUE)

#What percentage of females eat her meal on Saturday are in the dataset
tippingData <- read.csv("../Dataset/dataset_tipping_data.csv")
head(tippingData)
View(tippingData)

tally(~sex |day=="Sat", data = tippingData, margins = TRUE, format = "perc")


titanicData <- read.csv("../DataSet/dataset_survival_of_passengers_on_the_titanic.csv")
head(titanicData)
View(titanicData)

#What proportion of males survived are in the dataset
tally(~Sex |Survived==1, data = titanicData, margins = TRUE, format = "perc")

#Create a pie chart of the sex. Add the following: Title, Labels, Color
heightsData <- read.csv("../DataSet/dataset_self_reports_of_height.csv")
head(heightsData)
View(heightsData)

table_heightsData <- table(heightsData$sex)
pie(table_heightsData, c("M", "F"), main = "Self reports of Heights By Sex", col = rainbow(length(table_heightsData)))


studentData <- read.csv("../DataSet/dataset_student_survey_data.csv")
head(studentData)
View(studentData)

table_studentData <- table(studentData$Smoke)

#Create a barplot of the smoke.

barplot(table_studentData, xlab = "Smoke", ylab = "Frequency", 
        main = "Student data of smoking", col = rainbow(length(table_studentData)))




#Create a histogram of the max price. Add the following: 
#Title, Labels, Color. (Use Dataset: dataset_us_car_price_data.csv)

carData <- read.csv("../DataSet/dataset_Car.csv")
head(carData)
View(carData)

table_carData <- table(carData$price6)
hist(table_carData, xlab = "Maximum Price", main = "Car Prices", col = rainbow(length(table_carData)))


#Create a scatter plot of the Minimum Price vs Maximum Price. 
#Add the following: Title, Labels, Color. (Use Dataset: dataset_us_car_price_data.csv)

plot(x=carData$price6, y=carData$price1, xlab = "Maximum Price", ylab = "Min Price", 
     main = "Maximum Car Price vs Minimum Car Price", col = "brown")

#loading the database
source("http://thegrantlab.org/misc/cdc.R")

#finding the last 20 objects in the weight column
last_20_weight <- tail(cdc$weight, n = 20)

#plotting weight against height and finding if they are correlated 
plot(cdc$height, cdc$weight, xlab = "Height (inches)", ylab = "Weight (pounds)")
cor(cdc$height, cdc$weight)

#calculating and plotting BMI
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight * 0.454
bmi <- (weight_kg)/(height_m^2)
plot(cdc$height, bmi, xlab = "Height (m)", ylab = "BMI")
cor(cdc$height, bmi)

#calculating obesity
number_obese <- sum(bmi >= 30)
sum(bmi>=30)

#using indexing to make a scatterplot of first hundred respondents
first_hundred <- cdc[1:100, c("height", "weight")]
plot(first_hundred$weight, first_hundred$height, xlab = "Weight", ylab = "Height")

#how many obese individuals are male in the full data set?
bmi_subset <- cdc[bmi>=30,]
table(bmi_subset$gender)
      
      
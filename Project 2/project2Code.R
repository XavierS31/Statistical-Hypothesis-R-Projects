#Project 2 Code

#Chi Square Test for Independence part b

#We will use a matrix to represent the data.
covid <- matrix(c(77, 19634,
                  833, 18908),
                nrow = 2, byrow = TRUE)

print(covid)

#Use the dataset for a chisq test for independence
results <- chisq.test(covid, correct = F)
print(results)

#Print the expected frequencies of the test
print(results$expected)

#Required libraries for reading excel files in Jupyter Notebook
#Only required to run once
#going to keep for submission
install.packages("readxl")   
library(readxl)

#Read the file
data <- read_excel("STA4163 Project 2 Dataset.xlsx")
head(data)

attach(data)

# Keep only the columns Income and Credit Score for Simple Linear Regression
simple_linear_data <- data[, c("Income", "Rating")]

attach(simple_linear_data)

# Display the new dataset
head(simple_linear_data)

#Scatterplot Income vs Credit Score Rating
plot(Income,Rating,
     main = "Scatterplot of Income vs Credit Score Rating",
     xlab = "Income ($1,000s)",
     ylab = "Rating",
     pch = 16)

#Build the regression model
model <- lm(Rating ~ Income, data = simple_linear_data)

# Prints model
summary(model)

#95% Confidence level interval
confint(model, level = 0.95)

#Residual Plot
plot(model)

#Confidence Interval
predict(model, newdata = data.frame(Income = 56),
        interval = "confidence", level = 0.95)

#Prediction Interval
predict(model, newdata = data.frame(Income = 56),
        interval = "prediction", level = 0.95)

#For Part II - Multiple Linear Regression
# Import the full dataset from the Excel file
df<- read_excel("STA4163 Project 2 Dataset.xlsx")

# View the first few rows
head(df)

# Build the multiple regression model
model <- lm(Rating ~ Income + Age + Education, data = df)

# View the results
summary(model)
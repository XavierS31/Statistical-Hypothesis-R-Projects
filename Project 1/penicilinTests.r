#Install library and run it
install.packages("readxl")#Only once

# Load the library
library(readxl)

#Uploade the excel file and convert it to a data frame 
df <- read_excel("penicillin.xlsx")
df <- data.frame(df) #Save to datagrame
print(df) #Print the Peniclin data

#Test of Equal Variance for the Yield for the low concentration and high concentration of Corn Steep Liquor
var.test(Yield ~ Corn)

#Check Assumptions
#Normal Distribution & Same Variance

#Boxplots
boxplot(Yield ~ Treatment)

#Standard Deviations
sd(df[Treatment == "A", "yield"])
sd(df[Treatment == "B", "yield"])
sd(df[Treatment == "C", "yield"])
sd(df[Treatment == "D", "yield"])

#Run One Way Anova Test
oneway_results <- aov(Yield ~ Treatment, data = df)
summary(oneway_results)

#Run Kruskal-Wallis Test even if Anova assumptions are met.
kruskal.test(Yield ~ Treatment, data = df)

#Two-Factor ANOVA Test
twoway_results <- aov(Yield ~ Treatment + Corn + Treatment:Corn, data = df)
summary(twoway_results)

#If we reject the Null Hypothesis we proceed to run test 2 and 3

#Test 2:

# Run Tukey’s HSD for the Treatment factor
TukeyHSD(twoway_results, which = "Treatment")

#Test 3

# Mean yield for each corn concentration
mean(df[Corn == "Low",  "yield"])
mean(df[Corn == "High", "yield"])

#Tukey Test
TukeyHSD(twoway_results, which = "Corn")


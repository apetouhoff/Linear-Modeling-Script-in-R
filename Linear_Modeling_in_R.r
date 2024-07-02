print("Linear Modeling in R")

args <- commandArgs(TRUE)
arg1 <- args[1]
print(arg1)


df = read.csv("regrex1.csv") #Reading the csv
head(df) #looking at the data frame 

png(file="original.png")
plot(df$x, df$y, xlab="x",ylab="y")
#plotting the scatter plot for the data frame

model <- lm(df$y ~ df$x, data = df) #creating the linear regression model for the dataframe 

summary_model = summary(model) #creating a new variable summary_model which summarizes the model 

summary_model #prints the summary_model

summary_model$r.squared #pulling the r-sqaured value from the summary_model

coef(model) #calling the coefficents of the model

coef(model)[1] #calling the intercept of the model

coef(model)[2] #calling the slope of the model

y_pred = predict(model, df) #predicting the linear regression model

y_pred #print the values of the prediction model

png(file="YPred.png")
plot(df$x, y_pred, type="l", xlab="x", ylab="y")#plotting the prediction model

png(file="Combined.png")
plot(df$x, df$y, xlab="x",ylab="y") 
lines(df$x,y_pred) #plotting the prediction model with the origination scatter plot data



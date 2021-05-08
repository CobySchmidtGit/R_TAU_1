#Reading the input CSV file of Apartment prices
assign1.csv<-read.csv("assign1.csv")

ger#Plotting a Histogram with 20 columns/bins
hist(assign1.csv$y, breaks=20)

#plotting a X->Y graph where X is number of Food Shops and Y is the number of Dog Gardens
plot(assign1.csv$X5,assign1.csv$X4)

#alignment of printing
options("scipen"=10, "digits"=7)

#Linear Regression of y by x1,x2,x3,x4,x5
mdl1 <- lm(y ~ X1+X2+X3+X4+X5 , data = assign1.csv)

#Printing Summary
summary(mdl1)

#Linear Regression of y by x1,x2,x3,x4,x5
mdl2 <- lm(y ~ X1+X2+X3 , data = assign1.csv)

#Printing Summary
summary(mdl2)

#Linear Regression of y by x1,x2,x3,x4,x5
mdl3 <- lm(y ~ X1+X2+X3+X5 , data = assign1.csv)

#printing Summaery
summary(mdl3)

#Linear Regression of y by x1,x2,x3,x4,x5
mdl4 <- lm(y ~ X1+X2+X3+X4 , data = assign1.csv)

#Printing Summary
summary(mdl4)


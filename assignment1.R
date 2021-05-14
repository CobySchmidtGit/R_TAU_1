#Reading the input CSV file of Apartment prices
assign1.csv<-read.csv("assign1.csv")

#Plotting a Histogram with 20 columns/bins
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

#checking Multi-colinearity
multcol = lm(X4~X5, data = assign1.csv)

#printing summary
summary(multcol)

#Splitting the set between apartments that has a dog garden and ones that do not
has_dog_garden = assign1.csv[assign1.csv[,5] == 1,]

#The other way around for apartment that do not have a dog garden
dont_have_dog_garden = assign1.csv[assign1.csv[,5] == 0,]

#Doing Linear regression just for apartments with a Dog garden and another without
md4_have=lm(y ~ X4, data = has_dog_garden)

md4_dont=lm(y ~ X4, data = dont_have_dog_garden)

#plotting to get a general impression of how X4 effects y
plot(assign1.csv$y~assign1.csv$X4)

#summary of the lr for the apartments that have a dog garden
summary(md4_have)

#Summary of the lr for the apartments that do not have a dog garden
summary(md4_dont)


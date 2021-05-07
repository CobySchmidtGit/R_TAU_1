#Reading the input CSV file of Apartment prices
assign1.csv<-read.csv("~/Downloads/assign1.csv")

#Plotting a Histogram with 20 columns/bins
hist(assign1.csv$y, breaks=20)

#plotting a X->Y graph where X is number of Food Shops and Y is the number of Dog Gardens
plot(assign1.csv$X5,assign1.csv$X4)

options("scipen"=10, "digits"=7)

mdl1 <- lm(y ~ X1+X2+X3+X4+X5 , data = assign1.csv)

summary(mdl1)

mdl2 <- lm(y ~ X1+X2+X3 , data = assign1.csv)

summary(mdl2)

mdl3 <- lm(y ~ X1+X2+X3+X5 , data = assign1.csv)

summary(mdl3)

mdl4 <- lm(y ~ X1+X2+X3+X4 , data = assign1.csv)

summary(mdl4)


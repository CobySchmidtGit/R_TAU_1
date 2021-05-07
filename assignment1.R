#Reading the input CSV file of Apartment prices
assign1.csv<-read.csv("~/Downloads/assign1.csv")

#Plotting a Histogram with 20 columns/bins
hist(assign1.csv$y, breaks=20)

#plotting a X->Y graph where X is number of Food Shops and Y is the number of Dog Gardens
plot(assign1.csv$X5,assign1.csv$X4)
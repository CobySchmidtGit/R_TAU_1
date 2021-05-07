#Reading the input CSV file of Apartment prices
assign1.csv<-read.csv("~/Downloads/assign1.csv")

hist(assign1.csv$y, breaks=20)


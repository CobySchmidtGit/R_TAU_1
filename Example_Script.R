#### Reading and saving tables ####

# Let's take the data set iris and store it as an object named "df"
df<-iris

# Save the file to csv
write.csv (x = df,file ="iris_data.csv")        #export to csv


# Read csv file to new data frame
my.iris<-read.csv(file = "iris_data.csv")     #import csv file


#### Take a look at the data ####
head(df) 
nrow(df)  
ncol(df)
dim(df)
names(df)
mean(df$Sepal.Length)
summary(df)

# Understand squared brackets [,]
df[1,] # df is 2d as it has [rows,cols], this way we print the first row of the data
df$Sepal.Length[1] # df$Sepal.Length is a vector (1d), thus will have no "," in the brackets. 
df[1,1] #print the value in the first row and first column.

#### Data Viz ####
plot(df$Sepal.Length,df$Petal.Length) 

plot(df$Sepal.Width,df$Sepal.Length) # Whats can we learn from this figure?
plot(df$Sepal.Width,df$Sepal.Length, col=df$Species, pch=19) # Why is this figure better?
boxplot(df$Sepal.Length~df$Species) # What about this one??

pairs(df) 

# let's     distinguish between different spices
pairs(df,col=df$Species)

#### Regressions ####
lm1<-lm(Sepal.Length~.,df) 
coef(lm1)
#Equiv to:
lm1.a<-lm(Sepal.Length~Sepal.Width+Petal.Length+Petal.Width+Species,df)
coef(lm1.a)


lm2<-lm(Sepal.Length~Sepal.Width+Petal.Length,df)

#Results of estimating the latter model
summary(lm2)

#sometimes it is enough to take a look at:
lm2
# or even:
coef(lm2)
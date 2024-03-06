
#Libraries

library(readr)
library(tidyverse)

#Train dataset
df <- read.csv(file.choose())

shape1 <- paste("Columns", ncol(df))
shape1

#Test dataset
test <- read.csv(file.choose())


shape <- paste("Number of Columns", ncol(test), "Number of Entries", nrow(test))
shape


#definitions
def <- read.csv(file.choose())
ncol(def)
nrow(def)
glimpse(def)
View(def)
#EDA
head(df, n=4)

#Column names
colnames(df)

#Viewing the data
View(df)

glimpse(df)

data.entry(df)


#data structure
str(df)

#statistical summary
summary(df)


#class
class(df)

#factoring the columns
df$country <- as.factor(df$country)

#Misiing values
df 

# VISUALIZATION



#Libraries

library(readr)
library(tidyverse)
library(dplyr)

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
missing <- df %>%
  filter(!complete.cases(.))

data.entry(missing)

train <- df %>%
  filter(complete.cases(.))

paste("Number of Columns", ncol(train), "Number of Entries", nrow(train))
# VISUALIZATION
Library(ggplot2)
ggplot(train, aes(x=country, y=total_cost)) +
 geom_boxplot()+
  geom_jitter()
?group_by

#Selecting specific columns
payment <- train %>%
  select(payment_mode, total_cost)
 
payment

#grouping by the payment mode feature
payment_gp <- payment %>%
  group_by(payment_mode) %>%
  summarize(avg = mean(total_cost))
payment_gp


str(payment_gp)

ggplot(payment_gp, aes(x=payment_mode, y=avg))+
  geom_bar(stat="identity", fill="peachpuff") +
  labs(title = "Payment mode Visual",
       y = "Average Cost",
       x = "Payment Mode Used",
       caption = "Source: Tanzania Tourism")

#Scatter plot
 # one can change few things:
 # - alpha - opaquesness
  #- shape = square etc


# one can use geom_smooth
# frequency polygon; geom_freqpoly
#show.legend = FALSE

# +theme_minimal()  means that you are removing the background color of a grid
#?theme_minimal

#Faceting 
# facet_wrap(~species)


View(train)

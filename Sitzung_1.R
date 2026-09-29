# *********************** #
# AM1 WS 2026/2027 
# Übungsblatt Sitzung 2
# Verfasserin: Eva Scheel
# *********************** #


# check working directory, where R "is looking for" files
getwd()

# read data as a dataframe: 
selfie_data <- read.csv(file = "page_ugly_selfies.csv", sep=",")

# the following also works, why?
selfie_data <- read.csv("page_ugly_selfies.csv")

# check out the description of the function (e.g. which arguments it 
# takes and which ones are the default values)
?read.csv()

# selfie_data is a "data.frame" object
class(selfie_data)

## **** Dataframe inspection ***** ##

# We first inspect the data using Rbase functions

# to get the first and last n rows 
head(selfie_data, n = 10) 
tail(selfie_data, , n = 20)

# to get the number of rows and columns
nrow(selfie_data) 
ncol(selfie_data) 

# to get a summary of the dataframe
# also shows you if there are any missing values ("NA"s)
summary(selfie_data) 

# to count the number of missing values, we can "nest" two functions:
  # 1. is.na() to assess whether a value is NA or not
  # 2. sum() to count the number of values that are TRUE (i.e. that are NAs)
sum(is.na(selfie_data))

# to show which row(s) contain(s) missing values
which(is.na(selfie_data))



# Now we load a collection of packages called "tidyverse"
library(tidyverse)

# dplyr offers the glimpse() function to get a better 
# glimpse at  the data than using head()
glimpse(selfie_data) 

# to get the column names 
names(selfie_data) 

# to count number of occurrences of a variable
count(selfie_data, Gender) 
count(selfie_data, Distance)

## **** Dataframe manipulation ***** ##

# select

# filter

# mutate





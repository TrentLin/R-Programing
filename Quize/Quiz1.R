# read data
data <- read.csv("hw1_data.csv",header=TRUE)
# check class
x <- 4
class(x)
# check class
y <-c(4,TRUE)
class(y)
# rbind
x1 <-c(1,3,5)
y1 <-c(3,2,10)
rbind(x1,y1)
# List
x <- list(2, "a", "b", TRUE)
x[[1]]
# vector
x <- 1:4
y <- 2:3
x+y
# Q10
x <- c(17, 14, 4, 5, 13, 12, 10) 
x[x > 10] == 4
x
x[x > 10] <- 4
x
# Q16 How many missing values are in the Ozone column of this
  #data frame?
x1 <- na.omit(data$Ozone) # put the non-missing values of x into new vector x1
length(x1) #count the number of non-missing values

# Q17 What is the mean of the Ozone column in this dataset?
  #Exclude missing values (coded as NA) from this calculation
mean(x1)

# Q18 Extract the subset of rows of the data frame where Ozone values
  #are above 31 and Temp values are above 90. 
  #What is the mean of Solar.R in this subset?
data2 <- subset(data, Ozone > 31 & Temp > 90) # Create new dataframe 
mean(data2$Solar.R) # Claculate mean of Solar.R

# Q19 What is the mean of "Temp" when "Month" is equal to 6?
data3 <- subset(data,Month == 6) # Create new dataframe 
mean(data3$Temp) # Claculate mean of Temp

# Q20What was the maximum ozone value in the month of May (i.e. Month = 5)?
data4 <- subset(data,Month == 5) # Create new dataframe
max(data4$Ozone,na.rm = FALSE)

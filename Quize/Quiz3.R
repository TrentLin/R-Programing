#Q1
library(datasets)
data(iris)
iris
#篩選DataSet Species="virginica"
virginica <- subset(iris,Species == "virginica")
virginica
#計算Sepal.Length平均值
mean <- mean(virginica$Sepal.Length)
#Q2
#計算iris 'Sepal.Length', 'Sepal.Width', 
#'Petal.Length', 'Petal.Width'平均值
x <-apply(iris[, 1:4], 2, mean)
x
#Q3
library(datasest)
data(mtcars)
mtcars
#calculate the average miles per gallon (mpg) 
#by number of cylinders in the car (cyl)
sapply(split(mtcars$mpg, mtcars$cyl), mean)
#Q4
meanhorsepower <-sapply(split(mtcars$hp,mtcars$cyl),mean)
meanhorsepower
abs(82.63636-209.21429)
#Q5
debug(ls)
ls

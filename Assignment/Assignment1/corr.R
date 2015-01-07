source("complete.R")
source("getmonitor.R")
corr <- function(directory, threshold = 0) {
  result <- c()
  data <- data.frame()
  subdata <- data.frame()
  # 將directory中Complete運算出來
  data <- complete(directory)
  # 找出nobs > threshold的文件
  subdata <- subset(data, data$nobs > threshold)
  for(i in subdata$id){
  # 取出第i個檔案
  mydata <- getmonitor(i,directory)
  # 刪除檔案中NA的Row
  mydata <- na.omit(mydata)
  # 計算sulfate & nitrate的correlations
  core <- cor(mydata$sulfate,mydata$nitrate)
  result <- append(result,core)
  }
  return(result)
}



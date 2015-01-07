# Use getmonitor.R
source("getmonitor.R")
complete <- function(directory, id = 1:332){
  result <- data.frame()
  data <- c()
  for (i in id){
    # 讀取第i個csv檔案
    data <- getmonitor(i, directory)
    # 刪除data中有NA的row
    data <- na.omit(data)
    # 建立用有id,nobs兩個欄位dataframe
    # id記錄第幾筆資料,nobs紀錄非NA值得row數
    mydata <- data.frame("id"=i,"nobs"=nrow(data))
    result <- rbind(result,mydata)
  }
  return(result)
}

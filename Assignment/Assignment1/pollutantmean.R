source("getmonitor.R") # Use getmonitor
pollutantmean <- function(directory, pollutant, id = 1:332){
  result <- c()
  data_pool <- c()
  for(i in id) {
    # 讀取第i個csv檔案
    data <- getmonitor(i, directory)
    # 先取出pollutant後再刪除na
    data <- na.omit(data[,pollutant])
    # 將csv檔案資料收集在一起
    data_pool <- c(data_pool, data)
  }
  result <- mean(data_pool) #計算平均值
  return(result)
}

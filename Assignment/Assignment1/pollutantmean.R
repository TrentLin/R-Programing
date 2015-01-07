source("getmonitor.R") # Use getmonitor
pollutantmean <- function(directory, pollutant, id = 1:332){
  result <- c()
  data_pool <- c()
  for(i in id) {
    # Ū����i��csv�ɮ�
    data <- getmonitor(i, directory)
    # �����Xpollutant��A�R��na
    data <- na.omit(data[,pollutant])
    # �Ncsv�ɮ׸�Ʀ����b�@�_
    data_pool <- c(data_pool, data)
  }
  result <- mean(data_pool) #�p�⥭����
  return(result)
}
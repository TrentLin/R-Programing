# Use getmonitor.R
source("getmonitor.R")
complete <- function(directory, id = 1:332){
  result <- data.frame()
  data <- c()
  for (i in id){
    # Ū����i��csv�ɮ�
    data <- getmonitor(i, directory)
    # �R��data����NA��row
    data <- na.omit(data)
    # �إߥΦ�id,nobs������dataframe
    # id�O���ĴX�����,nobs�����DNA�ȱorow��
    mydata <- data.frame("id"=i,"nobs"=nrow(data))
    result <- rbind(result,mydata)
  }
  return(result)
}
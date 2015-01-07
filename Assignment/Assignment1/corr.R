source("complete.R")
source("getmonitor.R")
corr <- function(directory, threshold = 0) {
  result <- c()
  data <- data.frame()
  subdata <- data.frame()
  # �Ndirectory��Complete�B��X��
  data <- complete(directory)
  # ��Xnobs > threshold�����
  subdata <- subset(data, data$nobs > threshold)
  for(i in subdata$id){
  # ���X��i���ɮ�
  mydata <- getmonitor(i,directory)
  # �R���ɮפ�NA��Row
  mydata <- na.omit(mydata)
  # �p��sulfate & nitrate��correlations
  core <- cor(mydata$sulfate,mydata$nitrate)
  result <- append(result,core)
  }
  return(result)
}


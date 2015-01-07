rankhospital <- function(state, outcome, num ="best"){
  ##讀取outcome data
  data <- read.csv("outcome-of-care-measures.csv",colClasses="character",na.strings=c("Not Available","NA"))
  #設定"heart attack","heart failure","pneumonia"欄位為數值
  data[,11] <- as.numeric(data[,11])
  data[,17] <- as.numeric(data[,17])
  data[,23] <- as.numeric(data[,23])
  #Check that state and outcome are valid
  if(!(state %in% data$State)) {
    stop("invalid state") 
  }
  if(!(outcome %in% c("heart attack","heart failure","pneumonia"))) {
    stop("invalid outcome")
  }
  #subset data filter state == State
  subdata <- subset(data, data[,7]==state)
  #filter outcome and show Hospital.Name by num
  if(outcome == "heart attack" ){
    subdata <- subdata[order(subdata[,11],subdata[,2]),]#排序
    subdata <- subset(subdata, !is.na(subdata[,11])) #過濾NA
    if(num == "best"){
      print(subdata[1,]$Hospital.Name)
    }
    else if(num == "worst"){
      len <- as.numeric(nrow(subdata))
      print(subdata[len,])$Hospital.Name
    }
    else{
      print(subdata[num,])$Hospital.Name
    }
  }
  else if(outcome == "heart failure"){
    subdata <- subdata[order(subdata[,17],subdata[,2]),]#排序
    subdata <- subset(subdata, !is.na(subdata[,17])) #過濾NA
    if(num == "best"){
      print(subdata[1,]$Hospital.Name)
    }
    else if(num == "worst"){
      len <- as.numeric(nrow(subdata))
      print(subdata[len,])$Hospital.Name
    }
    else{
      print(subdata[num,])$Hospital.Name
    }
  }
  else if(outcome == "pneumonia"){
    subdata <- subdata[order(subdata[,23],subdata[,2]),]#排序
    subdata <- subset(subdata, !is.na(subdata[,23])) #過濾NA
    if(num == "best"){
      print(subdata[1,]$Hospital.Name)
    }
    else if(num == "worst"){
      len <- as.numeric(nrow(subdata))
      print(subdata[len,])$Hospital.Name
    }
    else{
      print(subdata[num,])$Hospital.Name
    }
  }
}
#best function
best <- function(state, outcome){
  #讀取outcome-of-care-measures.csv
  data <- read.csv("outcome-of-care-measures.csv",colClasses="character",na.strings=c("Not Available","NA"))
  #設定"heart attack","heart failure","pneumonia"欄位為數值
  data[,11] <- as.numeric(data[,11]) #heart attack
  data[,17] <- as.numeric(data[,17]) #heart failure
  data[,23] <- as.numeric(data[,23]) #pneumonia
  #Check that state and outcome are valid
  if(!(state %in% data$State)) {
    stop("invalid state") 
  }
  if(!(outcome %in% c("heart attack","heart failure","pneumonia"))) {
    stop("invalid outcome")
  }
  #subset data filter state == State
  subdata <- subset(data, data[,7]==state)
  #filter outcome and show Hospital.Name for min row 
  if(outcome == "heart attack" ){
    irow <- which.min(subdata[,11])
    print(subdata[irow,]$Hospital.Name)
  }
  else if(outcome == "heart failure"){
    irow <- which.min(subdata[,17])
    print(subdata[irow,]$Hospital.Name)
  }
  else if(outcome == "pneumonia"){
    irow <- which.min(subdata[,23])
    print(subdata[irow,]$Hospital.Name)
  }
}
#source("best.R")
#source("submitscript3.R")


data <- read.csv("outcome-of-care-measures.csv",colClasses="character")
colnames(data)[7] <- "s" #state
colnames(data)[2] <- "h" #hospital
colnames(data)[11] <- "ha" #heart attack
data[,11] <- as.numeric(data[,11]) #heart attack
data[,17] <- as.numeric(data[,17]) #heart failure
data[,23] <- as.numeric(data[,23]) #pneumonia
temp <- tapply(data$ha, data$s, function(x) rank(x, ties.method="first"))
data$o <- unlist(temp) #order by state
data[, c("h","s","o")]
if(num == "best"){
  result <-
}
else if(num == "worst"){
  result <-
} 
else if(is.numeric(num)){
  result <- 
}
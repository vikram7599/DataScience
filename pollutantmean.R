pollutantmean <- function(directory, pollutant, id = 1:332) {
  curDir <- getwd()
  setwd(directory)
  comV = 0
  tot = 0
  for (i in id){
    if (i <10){
      file_name <- paste("00" , i, ".csv", sep = "")
    }
    else if(i<100 & i>= 10){
      file_name <- paste("0",i,".csv" , sep = "")
    }
    else{
      file_name <- paste(i,".csv" , sep = "")
    }
    #print(i)
    
    data <- read.csv(file_name)
    x <- data[[pollutant]]
    y <- x[!is.na(x)]
    m <- sum(y)
    comV = comV + m
    tot = tot + length(y)
    #print(comV)
  }
  setwd(curDir)  
  comV/tot
}

# 
# data <- read.csv('023.csv')
# x <- data[['nitrate']]
# y <- x[!is.na(x)]
# mean(y)
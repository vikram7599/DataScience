complete <- function(directory, id = 1:332){
  
  curDir <- getwd()
  setwd(directory)
  
  nobs = c()
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
    
    x <- data[["sulfate"]]
    y <- x[!is.na(x)]
    m <- length(y)
    nobs <- append(nobs, m)
    
    #print(comV)
  }
  setwd(curDir)
  
  my_data <- data.frame(id,nobs)
  my_data

  
}  
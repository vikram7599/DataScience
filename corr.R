corr <- function(directory, threshold = 0){
  curDir <- getwd()
  setwd(directory)
  
  corr_vec = c()
  
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
    y <- data[["nitrate"]]
    
    x_new <- x[!is.na(x) & !is.na(y)]
    y_new <- y[!is.na(x) & !is.na(y)]
    
    
    
    if(length(x_new) >= threshold){
      corr_v = cor(x_new, y_new)
      corr_vec = append(corr_vec, corr_v)
    }
    
  }
  setwd(curDir)
  corr_vec
  
}  
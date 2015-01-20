complete<- function(directory, id){
  setwd(paste("C:/Users/jspin/Desktop", directory, sep="/"))
  
  idvec <- vector()
  compvec <- vector()
  file_list = list.files()
  
  for (i in id){
    idvec <- rbind(idvec, i)
    compvec <- rbind(compvec, sum(complete.cases(read.csv(file_list[i]))))
  }
  
  idvechar <- as.character(idvec)
  require(reshape2)
  dataframecc <- data.frame(idvechar, compvec)
  colnames(dataframecc) <- c("id", "nobs")
  dataframe <- complete.cases(dataframecc)  
  dd <- dataframecc[dataframe, ]
  dd
  
  #assign("dataframe", dd, envir = .GlobalEnv)
  #assign("file_list", file_list, envir = .GlobalEnv)
}

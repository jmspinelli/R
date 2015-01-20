corr <- function(directory, threshold = 0) {
            
      complete(directory, 1:332)
      tfvector <- (dataframe$nobs > threshold)
      idlist <- dataframe$id[tfvector]
      corrvec <- numeric()
      
      for (x in idlist){
        sample <- read.csv(file_list[x])
        corrvec <- rbind(corrvec, cor(sample$nitrate, sample$sulfate, use = "complete.obs"))
      }
      assign("correlation_vector", corrvec, envir = .GlobalEnv)
      return(correlation_vector)
}

#aggregate pollution 
#unzip("rprog-data-specdata.zip")

pollutantmean <- function(directory, pollutant, id = 1:332) {
      setwd(directory)
      
      file_list = list.files()
      data <- data.frame()
      
      for (i in id){
        data <- rbind(data, read.csv(file_list[i]))
      }
      mean(data[[pollutant]], na.rm=TRUE)
      
}

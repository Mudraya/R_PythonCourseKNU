
get_data <- function(directory, filename) {
  filename <- toString(filename)
  filename <- paste(paste(rep(0, 3-nchar(filename)), collapse=""), filename, ".csv", sep="")
  return(read.csv(file.path(directory, filename)))
}

pmean <- function(directory, pollutant, id=1:332) {
  values <- c()
  for(filename in id)
  {
    data <- get_data(directory, filename)
    values <- c(values,data[[pollutant]])
  }
  return(mean(values, na.rm=TRUE))
}

complete <- function(directory, id) {
  result <- data.frame("id", "nobs")
  for(filename in id)
  {
    data <- get_data(directory, filename)
    result[nrow(result)+1, ] = list(filename, nrow(data[!is.na(data$sulfate)&!is.na(data$nitrate), ]))
  }
  return(result)
}

corr <- function(directory, threshold=0) {
  result = c()
  for(filename in 1:332)
  {
    data <- get_data(directory, filename)
    sub_data <- data[!is.na(data$sulfate)&!is.na(data$nitrate), ]
    if (nrow(sub_data)>threshold)
    {
      result <- c(result, cor(sub_data$sulfate, sub_data$nitrate))
    }
  }
  return(result)
}


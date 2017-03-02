# sorting function
exchange.sort.asc <- function(input_vector, decreasing = F){
  if (decreasing == F){
    vector_length <- length(input_vector)
    for(i in 1:(vector_length - 1)){
      for(j in (i + 1):vector_length){
        if(input_vector[i] > input_vector[j]){
          temp <- input_vector[i]
          input_vector[i] <- input_vector[j]
          input_vector[j] <- temp
        }
      }
    }
    return(input_vector)
  }
  else{
    vector_length <- length(input_vector)
    for(i in 1:(vector_length - 1)){
      for(j in (i + 1):vector_length){
        if(input_vector[i] < input_vector[j]){
          temp <- input_vector[i]
          input_vector[i] <- input_vector[j]
          input_vector[j] <- temp
        }
      }
    }
    return(input_vector)
  }
}

# generate an unsorted vector
unsorted_vector <- round(runif(10) * 100)

# sort the unsorted vector
exchange.sort.asc(unsorted_vector, decreasing = F) # ascending
exchange.sort.asc(unsorted_vector, decreasing = T) # decreasing
 
# standard deviation function
my_std <- function(input_vector){
  sum_square <- 0
  count <- 0
  
  for (i in input_vector){
    sum_square <- sum_square + (i - mean(input_vector))^2
    count <- count + 1
  }
  
  return(sqrt(sum_square / (count -1)))
}

# generate a vector
vector <- round(runif(10) * 100)

# calculate the standard deviation of the vector
my_std(vector)

# check if the standard deviation is corrected by using my_std function
sd(vector)


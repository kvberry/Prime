library(devtools)
library(roxygen2)
numbers <- c(1:1000)
numbers


devtools::use_data(numbers, overwrite = TRUE)

prime_number <- function(number){
flag = 0
if(number > 1) {
  flag = 1
  for(i in 2:(number-1)) {
    if ((number %% i) == 0) {
      flag = 0
      break
    }
  }
}
if(number == 2)    flag = 1
if(flag == 1) {
  return(TRUE)
} else {
  return(FALSE)
}
}

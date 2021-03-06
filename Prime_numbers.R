###############################################################################
## How to find prime numbers
## By: Monica Huayta
## Contact: monica.huayta@pucp.pe
###############################################################################

find_prime <- function(max_value){
  prime <- c(2)
    for (n in 3:max_value) {
    j = n
    new_vec <- 0
    
    for (i in 2:(j-1)) {
      
      if ((j %% i) == 0) {
        new_vec <- new_vec + 1
      } else {
        new_vec <- new_vec + 0
      }
    }
    
    if (sum(new_vec)>0) {
      prime <- prime
    } else {
      prime <- append(prime,j)
    }
  }
  
  final <- c()
  final <- paste(prime[1], prime[2], sep='&')
  for (i in 3:length(prime)) {
    final <- paste(final, prime[i], sep='&') 
  }
  return(final)
}

find_prime(max_value = 1000)


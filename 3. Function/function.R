# Syntax ####

sum_two_vals <- function(x, y){
  print(paste("Value of x:", x))
  print(paste("Value of y:", y))
  return(x+y)
}

sum_two_vals(10, 20)
#  "Value of x: 10"
#  "Value of y: 20"
#  30

sum_two_vals(x = 50, y = 100 )
#  "Value of x: 50"
#  "Value of y: 100"
#  150


greet <- function (name){
  print(paste("Hello", name))
}

greet(name = "Arham")  # "Hello Arham"
greet("Ushan") # "Hello Ushan"


greet2 <- function (name){
  cat("Hello", name)
}
greet2("Zarif")  # Hello Zarif


# Check Even Odd Numbers
check_even_odd <- function(n){
  if(n % 2 == 0){
    return
  }
}





















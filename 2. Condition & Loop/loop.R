# For Loop #### 
x <- 1:4
x
for(i in x){
  print(i)
}
# 1 2 3 4


fruits <- c('APPLE', 'BANANA', 'Cucumber')
for(x in fruits){
  print(x)
}
# 'APPLE', 'BANANA', 'Cucumber'


x = 1:4
for(i in x){
  print(paste('square of', i, 'is', i^2))
}
#  "square of 1 is 1"
#  "square of 2 is 4"
#  "square of 3 is 9"
#  "square of 4 is 16"


# While Loop ####
i <- 1
while(i <= 5){
  print(paste("I love Bangladesh", i))
  i = i + 1
}
#  "I love Bangladesh 1"
#  "I love Bangladesh 2"
#  "I love Bangladesh 3"
#  "I love Bangladesh 4"
#  "I love Bangladesh 5"



# repeat ####
repeat{
  print("It is an infinite loop. Press esc to stop.")
  Sys.sleep(1)  # Pause for 1 sec
}

# Stop when counter exceeds 4
counter <- 1
repeat{
  print(counter)
  counter <- counter + 1
  if(counter > 4){
    break
  }
}
# 1 2 3 4

cumsum(1:10)  #  1  3  6 10 15 21 28 36 45 55

cumulaative_sum <- 0
i <- 1
repeat{
  cumulaative_sum <- cumulaative_sum + i
  print(cumulaative_sum)
  i <- i + 1
  if(cumulaative_sum > 20){
      break
  }
}
#  1  3  6 10 15 21


# User Input ####
readline("Enter a Number:")   # That will be input a number as string

repeat{
  input <- as.integer(readline(prompt = "Enter a number between 1 and 10: "))
  if (!is.na(input) & input >= 1 & input <= 10){
    print(paste('You Entered:', input))
    break
  } else{
    print('Invalid Input')
  }
}




















# Block of codes ####
'Hello World'
5 + 5

# But to execute at the same time all the statements we can use  block of codes.
{
  print('Hello World')
  5 + 5
}
# 'Hello World'
# 10


# Conditional ####
x <- 3
if(x > 0) print('x is positive') # "x is positive"

# If we don't use indentation and block of codes that will be work.
# But for clean, readable & professional code we should use them. 

x <- 0
if (x > 0){
  print('x is a positive number')
} else if (x == 0){
  print('x is equal to zero')
} else {
  print("x is a negative number")
}
# x is equal to zero


# Vectorized Version ####
# ifelse(test, yes, no)

x <- c(20, 35, 0, 27, 40)
ifelse(x >= 33, "Passed", "Failed") # "Failed" "Passed" "Failed" "Failed" "Passed"
ifelse(x >= 33, "Passed", ifelse(x == 0, "Zero Marks", "Failed"))
# "Failed"  "Passed"  "Zero Marks"  "Failed"  "Passed"


# Switch #### 
operation <- "root"
val <- 9

switch(
  operation,
  square = val^2,
  root = sqrt(val)
)
# 3

operation <- "square"
val <- 9

switch(
  operation,
  square = val^2,
  root = sqrt(val)
)
# 81




















# =================================================== #
# Data Types and Operators
# Author(s): Abdullah Al Sifat
# Date: Class 02 | 4 March 2024
# =================================================== #

# Vector ####  

#vector is simply a list of items that are of the same type.
#To combine the list of items to a vector, use the c() function and separate the items by a comma.


## Define Vector ####
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
x  # 1 2 3 4 5 6 7 8 9
is.vector(x) # TRUE
is.data.frame(x) # FALSE

x1 <- 10:20
x1  # 10 11 12 13 14 15 16 17 18 19 20
is.vector(x1) #True


## Sample & Probability ####
# sample(x, size, replace = FALSE, prob = NULL)

set.seed(42)
x2 <- sample(1:12, 10, replace= TRUE)
x2  # 1  5  1  9 10  4  2 10  1  8
summary(x2)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 1.00    1.25    4.50    5.10    8.75   10.00

table(x2) # frequency
# 1  2  4  5  8  9 10 
# 3  1  1  1  1  1  2 

fruits <- sample ( x = c('Apple', 'Banana', 'Cucumber', 'lichi'), size = 2, prob = c(0.5, 0.1, 0.1, 0.3 ))
fruits

income <- c(100, 330, 200, 400)
households <- c(10, 4, 2, 5)
sample(income, 2, prob = households)

## runif(Random Uniform Number) ####
set.seed(42)
x3 <- runif(10) * 10
x3   # 9.148060 9.370754 2.861395 8.304476 6.417455 ....
ceiling(x3)  # 10 10  3  9  7  6  8  2  7  8


## Length ####
fruits <- c("banana", "apple", "orang", "mango", "lemon")
fruits  # "banana" "apple"  "orang"  "mango"  "lemon" 
length(fruits)  # 5


## Sort a Vector ####
fruits <- c("banana", "apple", "orang", "mango", "lemon")
sort(fruits)  #"apple"  "banana" "lemon"  "mango"  "orang" 
sort(income) # 100 200 330 400


## Access Vectors Items ####
fruits <- c("banana", "apple", "orang", "mango", "lemon") 

fruits[4] # mango
# Access multiple elements
fruits[c(2, 5)] # "apple" "lemon"
# Access all items except for the first item
fruits[c(-3)]  # "banana" "apple"  "mango"  "lemon"
 

## Change An Item ####
fruits <- c("banana", "apple", "orang", "mango", "lemon")
fruits[3] <- 'Cucumber'
fruits  #"banana"   "apple"    "Cucumber" "mango"    "lemon"


## Repeat Vectors ####
# rep(x, times = 1, length.out = NA, each = 1)

repeat_times <- rep(c(1,2,3), times = 3)
repeat_times  # 1 2 3 1 2 3 1 2 3

x <- c(1, 2, 3)
repeat_independent <- rep(x, times= c(2, 1, 5))
repeat_independent  #1 1 2 3 3 3 3 3

repeat_each <- rep(x, each = 3)
repeat_each  # 1 1 1 2 2 2 3 3 3


## Generating Sequenced Vectors ####
# seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)),
x <- 1:10 
x  # 1  2  3  4  5  6  7  8  9 10

# To make bigger or smaller steps in a sequence, use the seq() function:
numbers <- seq(from = 0, to = 100, by= 20)
numbers  #0  20  40  60  80 100

num <- seq(from= 0, to= 5, by= 0.49)
num  # 0.00 0.49 0.98 1.47 1.96 2.45 2.94 3.43 3.92 4.41 4.90


## Loop through a vector ####
fruits <- c('Banana', 'Apple', 'Orange')
for (x in fruits){
  print(x)
}
# 'Banana', 'Apple', 'Orange'


## Join Two Vectors ####
vec1 <- c(1, 2, 3)
vec2 <- c(50, 60, 70)

vec <- c(vec1, vec2)
vec
# 1  2  3 50 60 70



# List ####

# A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable.
# To create a list, use the list() function

## Define list() ####
fruit_list <- list('Banana', 'Apple', 'Orange')
fruit_list  # 'Banana', 'Apple', 'Orange'
typeof(fruit_list)  # "list"
is.list(fruit_list) # TRUE
 

## Access & Change lists ####
fruit_list <- list('Banana', 'Apple', 'Orange')
fruit_list[2]  # Apple

fruit_list[1] <- 'Mango'
fruit_list  # 'Mango', 'Apple', 'Orange'


## Length ####
fruit_list <- list('Banana', 'Apple', 'Orange')
length(fruit_list)  # 3


## Check if Item Exists ####
fruit_list <- list('Banana', 'Apple', 'Orange')
'Orange' %in% fruit_list  # TRUE
'apple' %in% fruit_list  # FALSE


## Add list Items ####
# append(x, values, after = length(x))
# To add an item to the end of the list

fruit_list <- list('Banana', 'Apple', 'Orange')
append(fruit_list, 'Cucumber')  # 'Banana', 'Apple', 'Orange', 'Cucumber'
append(fruit_list, 'Lichi', after= 2)   # 'Banana', 'Apple', 'Lichi''Orange', 'Cucumber'


## Remove list items ####
fruit_list <- list('Banana', 'Apple', 'Orange')
fruit_list <- fruit_list[-1]
fruit_list  # 'Apple', 'Orange'


## Range of Indexes ####
#  specify a range of indexes by specifying where to start and where to end the range
fruit_list <- list('Banana', 'Apple', 'Lichi', 'Orange', 'Cucumber')
fruit_list[2:4]  #'Apple', 'Lichi', 'Orange'


## Loop through a list ####
fruit_list <- list('Banana', 'Apple', 'Orange')

for (x in fruit_list){
  print(x)
}
# 'Banana', 'Apple', 'Orange'


## Join Two Lists ####
list1 <- list("a", "b", "c")
list2 <- list(1, 2, 3)

list <- c(list1, list2)
list  # "a", "b", "c, 1, 2, 3



# Matrices ####
#matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

## Define Matrix ####
# A matrix is a two dimensional data set with columns and rows.

mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol= 3)
mat
#   1    3    5
#   2    4    6

mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
mat
#   1    4    
#   2    5
#   3    6

mat <- matrix(c('Apple', 'Banana', 'Lichi', 'Orange'), nrow = 2)
mat
#  "Apple"  "Lichi" 
#  "Banana" "Orange"


## Access Matrix Items ####
mat <- matrix(c("A", "B", "C", "D"), nrow = 2)
mat
mat[1, 2]  # 2

mat[2, ]  # "B" "D"




















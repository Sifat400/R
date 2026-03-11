
# Matrices ####
#matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

## Define Matrix ####
# A matrix is a two dimensional data set with columns and rows.

mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol= 3)
mat
#   1    3    5
#   2    4    6
is.matrix(mat)  # true
is.matrix(c(1, 2, 3)) # False
is.matrix(matrix(c(1, 2, 3), nrow = 3)) # True

mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 1)
mat
#   1    4    
#   2    5
#   3    6

mat <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, byrow = TRUE)
mat
#  1    2    3
#  4    5    6
#  7    8    9

mat <- matrix(c('Apple', 'Banana', 'Lichi', 'Orange'), 2)
mat
#  "Apple"  "Lichi" 
#  "Banana" "Orange"


## Type Conversion  ####
mat <- matrix(c('Apple', 'Banana', 'Lichi', 'Orange'), 2)
mat
#  "Apple"  "Lichi" 
#  "Banana" "Orange"
mat2 <-as.vector(mat)  
mat2  # "Apple"  "Banana" "Lichi"  "Orange"
is.vector(mat2)  #TRUE

mat3 <- as.list(mat)
mat3   # "Apple"  "Banana" "Lichi"  "Orange"
is.list(mat3)  #TRUE


mat4 <- as.data.frame(mat)
mat4
#       V1     V2
#  1  Apple  Lichi
#  2 Banana Orange
is.data.frame(mat4) # True


## Access Matrix Items ####
mat <- matrix(c("A", "B", "C", "D"), nrow = 2)
mat
# "A"  "C" 
# "B"  "D

mat[1, 2]  # C
mat[2, ]  # "B" "D"
mat[ , 1]  # "A" "B"

# Access more than one row
mat <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
mat
# 1    4    7
# 2    5    8
# 3    6    9

mat[c(1, 3), ]
#  1    4    7
#  3    6    9

mat[ , c(2, 3)]
#  4    7
#  5    8
#  6    9



## Add Rows and Columns ####
# Use the cbind() function to add additional columns in a Matrix
mat <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
new_mat <- cbind(mat, c(10, 11, 12))
new_mat
#  1    4    7   10
#  2    5    8   11
#  3    6    9   12

#Use the rbind() function to add additional rows in a Matrix:
mat <- rbind(mat, c(13, 14, 15))
mat
#  1    4    7   
#  2    5    8   
#  3    6    9 
#  13   14   15



## Remove Rows, Columns & Elements####
mat <- matrix(c(1, 2, 3, 4, 50, 6, 7, 8, 9, 10, 11, 12), nrow = 4, ncol = 3)
mat
#  1    50  9
#  2    6   10
#  3    7   11
#  4    8   12
mat <- mat[-c(2), -c(1)]
mat
#  50    9
#  7   11
#  8   12

#Removing Elements
mat <- matrix(c(1, 2, 3, 4, 50, 6, 7, 8, 9, 10, 11, 12), nrow = 4, ncol = 3)
mat <- mat[-c(1, 5) ]
mat  # 2  3  4  6  7  8  9 10 11 12

mat <- matrix(c(1, 2, 3, 4, 50, 6, 7, 8, 9, 10, 11, 12), nrow = 4, ncol = 3)
mat
#         1   50    9
# [2,]    2    6   10
# [3,]    3    7   11
# [4,]    4    8   12
mat <- mat[-c(1), -c(3)]
mat
#  2    6
#  3    7
#  4    8

mat <- matrix(c(1, 2, 3, 4, 50, 6, 7, 8, 9, 10, 11, 12), nrow = 4, ncol = 3)
mat <- mat[-c(1), ]
mat
#  2    6   10
#  3    7   11
#  4    8   12

mat <- matrix(c(1, 2, 3, 4, 50, 6, 7, 8, 9, 10, 11, 12), nrow = 4, ncol = 3)
mat <- mat[ , -c(3)]
mat
#  1   50
#  2    6
#  3    7
#  4    8


## Check if an Item Exists ####
fruits <- matrix(c('Banana', 'Apple', 'Lichi', 'Orange'), nrow= 2)
fruits
"Apple" %in% fruits  # TRUE


## Dimention- Number of rows and columns ####
fruits <- matrix(c('Banana', 'Apple', 'Lichi', 'Orange', 'Potato', 'Melon'), nrow= 3)
dim(fruits)  # 3 2


## Length of Matrix ####
fruits <- matrix(c('Banana', 'Apple', 'Lichi', 'Orange', 'Potato', 'Melon'), nrow= 3)
length(fruits)  # 6


## Combine two or more Matrices ####
#  rbind() or cbind() function to combine two or more matrices together
mat1 <- matrix(c("a", "b", "c", "d"), nrow = 2)
mat2 <- matrix(c(1, 2, 3, 4), ncol = 2)
mat3 <- matrix(c("x", "y", "c", "d"), nrow = 2)
mat <- rbind(mat1, mat2, mat3)
mat
#       [,1] [,2]
#  [1,] "a"  "c" 
#  [2,] "b"  "d" 
#  [3,] "1"  "3" 
#  [4,] "2"  "4" 
#  [5,] "x"  "c" 
#  [6,] "y"  "d"

Matrix <- cbind(mat1, mat2)
Matrix
# "a"  "c"  "1"  "3" 
# "b"  "d"  "2"  "4" 

Matrix <- cbind(mat1, mat2, mat1)
Matrix
#  "a"  "c"  "1"  "3"  "a"  "c" 
#  "b"  "d"  "2"  "4"  "b"  "d" 

## Matrix Multiplication (%*%)  ####
mat1 <- matrix(c(1, 2, 3, 4), nrow = 2)
mat2 <- matrix(c(5, 6, 7, 8), nrow = 2)
mat1
mat2
mat1 %*% mat2
#  23   31
#  34   46


## Kronecker Product ####
mat1 <- matrix(c(1, 2, 3, 4), nrow = 2)
mat2 <- matrix(c(5, 6, 7, 8), nrow = 2)
mat1
#  1    3
#  2    4
mat2
#  5    7
#  6    8

mat1 %x% mat2
#  5    7   15   21
#  6    8   18   24
#  10   14   20   28
#  12   16   24   32


## Addition & Substraction ####
mat1 <- matrix(c(1, 2, 3, 4), 2)
mat2 <- matrix(c(10, 20, 30, 40), 2)

mat1
#  1    3
#  2    4
mat2
#  10    30
#  20    40

mat1 + mat2
#  11   33
#  22   44
mat1 - mat2
#  -9  -27
#  -18  -36

mat1 + 10
#  11   13
#  12   14

mat2 - 5
#  5   25
#  15   35



## Loop Through a Matrix ####

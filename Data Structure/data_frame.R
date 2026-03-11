# Data Frame ####

## Syntax ####
student_profile <- data.frame(
  id= c(1, 2, 3, 4), 
  name = c("Abul", "Bulbuly", "Cabul", "Doly"),
  gender = c("M", "F", "M", "F")
)

student_profile
#  id    name gender
#  1  1    Abul      M
#  2  2 Bulbuly      F
#  3  3   Cabul      M
#  4  4    Doly      F


## Summarize the Data ####
student_profile <- data.frame(
  id= c(1, 2, 3, 4), 
  name = c("Abul", "Bulbuly", "Cabul", "Doly"),
  gender = c("M", "F", "M", "F")
)
summary(student_profile)
#  id           name              gender         
#  Min.   :1.00   Length:4           Length:4          
#  1st Qu.:1.75   Class :character   Class :character  
#  Median :2.50   Mode  :character   Mode  :character  
#  Mean   :2.50                                        
#  3rd Qu.:3.25                                        
#  Max.   :4.00   


## Access Items ####
student_profile <- data.frame(
  id= c(01, 02, 03, 04), 
  name = c("Abul", "Bulbuly", "Cabul", "Doly"),
  gender = c("M", "F", "M", "F")
)
student_profile[2]
#      name
#  1    Abul
#  2 Bulbuly
#  3   Cabul
#  4    Doly
student_profile["gender"]
#       gender
#  1      M
#  2      F
#  3      M
#  4      F


## Add Row ####
student_data <- data.frame(
  roll = c(01, 02, 03),
  name = c('Abul', 'Babul', 'Cabul'),
  shift =  c('Morning', 'Day', 'Day')
)

student_data <- rbind(student_data, c(05, 'Dabul', 'Morning'))
student_data
#  roll  name   shift
#  1    1  Abul Morning
#  2    2 Babul     Day
#  3    3 Cabul     Day
#  4    5 Dabul Morning


## Add Column ####
student_data <- data.frame(
  roll = c(1, 2, 3),
  name = c('Abul', 'Babul', 'Cabul'),
  shift = c('Morning', 'Day', 'Day')
)

student_data <- cbind(student_data, Blodd = c('A+', 'A-', 'O+'))
student_data
#    roll  name   shift Blodd
#  1    1  Abul Morning    A+
#  2    2 Babul     Day    A-
#  3    3 Cabul     Day    O+


## Remove Rows and Columns ####
student_data <- data.frame(
  roll = c(1, 2, 3),
  name = c('Abul', 'Babul', 'Cabul'),
  shift = c('Morning', 'Day', 'Day')
)
student_data
#  roll  name   shift
#  1  Abul Morning
#  2 Babul     Day
#  3 Cabul     Day

student_data <- student_data[-c(1), -c(2)]
student_data
#    roll shift
#     2   Day
#     3   Day


## Amount of Rows and Columns ####
student_data <- data.frame(
  roll = c(1, 2, 3),
  name = c('Abul', 'Babul', 'Cabul'),
  shift = c('Morning', 'Day', 'Day')
)
dim(student_data)  # 3 3


# You can also use the ncol() function to find the number 
# of columnsand nrow() to find the number of rows
nrow(student_data) # 3
ncol(student_data) # 3


## Length of Data Frame ####
# Use the length() function to find the number of columns in a Data Frame (similar to ncol())
student_data <- data.frame(
  roll = c(1, 2, 3),
  name = c('Abul', 'Babul', 'Cabul'),
  shift = c('Morning', 'Day', 'Day')
)
length(student_data) # 3



## Combining Data Frames ####
student_data1 <- data.frame(
  roll = c(1, 2, 3),
  name = c('Abul', 'Babul', 'Cabul'),
  shift = c('Morning', 'Day', 'Day')
)
student_data2 <- data.frame(
  roll = c(101, 102, 103), 
  name = c('DABUL', 'EBUL', 'CABUL'),
  shift = c('Morning', 'Day', 'Day')
)

student_data <- rbind(student_data1, student_data2)
student_data
#     roll  name   shift
#  1    1  Abul Morning
#  2    2 Babul     Day
#  3    3 Cabul     Day
#  4  101 DABUL Morning
#  5  102  EBUL     Day
#  6  103 CABUL     Day

student_data4 <- cbind(student_data1, student_data2)
student_data4
#     name   shift roll  name   shift
#   1    1  Abul Morning  101 DABUL Morning
#   2    2 Babul     Day  102  EBUL     Day
#   3    3 Cabul     Day  103 CABUL     Day




















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



















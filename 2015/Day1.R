######## AOC 2015 Day 1 #######
###############################

### read the puzzlr data input copied from AoC as text file ###
getwd()
input_data <- read.table(file= "./2015/InputData/2015Day1.txt", header= FALSE, sep= "")
View(input_data)

#check if the data is character string
is.character(input_data$V1)

### install stringr package ###
install.packages("stringr")
library("stringr")

str_count(input_data$V1, "(")
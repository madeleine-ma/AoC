######## Advent of Code #######
########## 2015 Day 1 #########
###############################

### read the puzzlr data input copied from AoC as text file ###
getwd()
df <- read.table(file= "./2015/InputData/2015Day1.txt", header= FALSE, sep= "")
View(df)

#check if the data is character string
is.character(df$V1)

### install stringr package ###
install.packages("tidyverse")
library("stringr")

## count total numb of floor up count 
count_up <- str_count(as.character(df$V1), coll("("))
count_up
## count total numb of floor down count 
count_down <- str_count(as.character(df$V1), coll(")"))
count_down

### Answer for Part 1 of the puzzle ###
## final floor level 
final_floor <- count_up - count_down
final_floor

#--------------------------#
### Part 2 of the puzzle ###
#--------------------------#
## finding the first index for him to enter basement floor ##

# Split input data into Vector
split_x <- unlist(strsplit(as.character(df$V1), split=character(0)))
View(split_x)

# Convert data to Numeric Values (floor up = 1, floor down = -1)
split_num <- ifelse(split_x == "(", 1, 
            ifelse(split_x == ")", -1, NA))
View(split_num)

# Find first time the value went to -1 when summing each value sequentially
#locate <- which(cumsum(split_num) == -1))
#locate
cat(paste0("What is the position of the character to first enter the basement? "), 
    which(cumsum(split_num) == -1)[1])


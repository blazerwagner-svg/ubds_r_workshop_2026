#Data Structures and Types

#There are five data types in R

#This is a double
double_var <- 3.14
typeof(double_var)

double_var_2 <- 1
typeof(double_var_2)

#This is an integer
int_var <- 4L
typeof(int_var)

#This is a complex number
complex_var <- 1 + 1i
typeof(complex_var)

#This is a LOGICAL
logical_var <- TRUE
typeof(logical_var)

#This is a character
char_var <- "This is a character"
typeof(char_var)

# Collections
# Vectors
my_vector <- vector(length = 3)
str(my_vector)

another_vector <- vector(mode='character',length=3)
str(another_vector)
another_vector[1]

double_vector <- c(5,7,9)
double_vector[3]

#We can change values in a vector
double_vector[1] <- 13

#Define a vector with multiple data types
multi_vector <- c(2,6,'3')
coercion_vector <- c('a',TRUE)

#Type coercion flow
#Logical -> integer -> double -> complex -> character

another_coercion_vector <- c(4,TRUE)

#We can go against the coercion flow
character_vector <-c('0','2','4')
converted_vector <-as.double(character_vector)

#Lists
list_example <- list(1,"a",TRUE,1+4i)
str(list_example)
#Lists can hold multiple types

#Lists are accessed a little differently
list_example[[2]]

#We can add metadata to lists
another_list <- list(
  title='Numbers',
  numbers=1:10,
  data=TRUE
)
another_list$title
another_list$numbers
str(another_list$numbers)

#Matrix
matrix_example <- matrix(0,nrow=6,ncol=3)
typeof(matrix_example)
matrix_example[1,1]

#We can check number of rows and columns
dim(matrix_example)
nrow(matrix_example)
ncol(matrix_example)

matrix_example_2 <- matrix_example + 2

#Dataframes
cats <- data.frame(
  coat = c('calico','black','tabby'),
  weight = c(2.1,5.0,3.2),
  like_catnip = c(1,0,1)
)
typeof(cats)
str(cats)
class(cats)
cats[1,1]
cats[,1]
cats[1,]

#We can access columns by name
cats
cats$weight

#We can perform operations
cats$weight + 2
cats$weight + cats$like_catnip
paste("my cat is",cats$coat)

#Add new row to dataframe
additional_cat <- data.frame(
  coat = 'tabby',
  weight = '2.3 or 2.4',
  like_catnip = 1
)

combined_cats <- rbind(cats, additional_cat)

cats[1,1]

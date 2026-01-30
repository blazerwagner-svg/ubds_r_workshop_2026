x <- c(3,4,5,6,7,8)
#Naming values of a vector
names(x) <- c('a','b','c','d','e')

head(mtcars)
xlist <- list(a = "Software Carpentry",
              b = 1:10,
              data = head(mtcars))
xlist [2][[1]]


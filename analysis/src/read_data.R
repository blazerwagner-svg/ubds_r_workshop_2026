
#Most of this doesn't work. Instructor was not informative.
#Writing the dataframe to a file
write.csv(cats, "data/feline-data.csv")

#Adding a column (variable)
age <- c(2,3,5)
cbind(cats, age)
cats

#Adding a row
newrow <- list('tortoiseshell',3.3,1,9)
cats <- rbind(cats, newrow)

#Removing a row
cats[-4,]

#Removing a column 2 ways
cats[,-4]
drop <- names(cats) %in% c("age")
!drop
cats[,!drop]

#Append dataframes
cats <- rbind(cats,cats)
cats

catnames <- data.frame(
  name = c("Sammy","Buddy","Tiny","Beedy")
)

cats <- rbind(cats,catnames)

download.file ("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv")
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/
                r-novice-gapminder/main/episodes/data/gapminder_data.csv")
str(gapminder)
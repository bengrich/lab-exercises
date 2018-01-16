## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# my.num and initials have different types,
# so they can not be summed

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# str_length is not the correct function

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# intial not found, worng variable name


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

my.vector <- c(1,2,3,4,5)
typeof(my.vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vector.one, vector.two) {
  return(paste("The difference in lengths is", length(vector.one) - length(vector.two)))
}
    
# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1,2,3)
v2 <- c(1,2,3,4,5)
CompareLength(v1,v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector.one, vector.two) {
  longer.vector <- ifelse(length(vector.one) > length(vector.two), "first", "second")
  return(paste("Your", longer.vector, "vector is longer by", abs(length(vector.one) - length(vector.two)),"elements"))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(v1,v2)


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters



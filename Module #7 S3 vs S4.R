data("iris")
head(iris, 6)
list(iris, 6)

class(iris)
isS4(iris)
typeof(iris)

s3 <- list(name = "Priscilla", age = 28, GPA = 3.8)
s3

setClass("student",
         slots = list(
           name = "character", 
           age = "numeric", 
           GPA = "numeric")
         )
s4 <- new("student", name = "Priscilla", age = 28, GPA = 3.8)
s4

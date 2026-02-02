#Candidate names
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
#Source of polls
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)
#create data frames
d1 <- data.frame(Name, ABC, stringsAsFactors = FALSE)
d1
d2 <- data.frame(Name, CBS, stringsAsFactors = FALSE)
d2
#Final result
d <- merge(d1,d2)
d
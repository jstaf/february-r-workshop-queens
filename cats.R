# this script loads and analyzes some cats

cats <- read.csv("cats.csv", as.is = TRUE)
cats$likes_string <- as.logical(cats$likes_string)

str(cats)

vec <- 4:10
vec
vec[3]
vec[1]
vec[1:3]
vec[-1]
length(vec)
vec[length(vec)]


a_list <- list(1, 4.5, TRUE, NA, c(1, 3, 54))
a_list

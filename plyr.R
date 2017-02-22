library(gapminder)
library(plyr)

gap <- gapminder
write.csv(gap, "gap.csv", row.names = FALSE)

gap <- read.csv("gap.csv")

# functions!

adder <- function(num1, num2) {
  return(num1 + num2)
}
x <- adder(3, 5)

# Turn this into a function (converts fahrenheit to kelvin)
# (Fahr - 32) * 5 / 9 + 273 = Kelvin

f_to_k <- function(fahr) {
  ans <- ((fahr - 32) * 5 / 9) + 273
  return(ans)
  #return(paste(ans, "Kelvin"))
}
f_to_k(56)

# Now create another function that does the opposite 
# conversion.

k_to_f <- function(kelv) {
  ans <- (kelv - 273) * 9 / 5 + 32
  return(ans)
}
k_to_f(f_to_k(56))

gdpByContinent <- ddply(
  .data = gap,
  .variables = c("continent", "year"),
  .fun = function(chunk) {
    return(mean(chunk$pop))
  }
)
gdpByContinent

library(doParallel)
library(microbenchmark)
ncores <- detectCores()
registerDoParallel(cores = ncores)

times <- microbenchmark(
  results <- laply(
    .data = 1:100,
    .fun = function(number) {
      Sys.sleep(0.1)
      return(number)
    }),
  results <- laply(
    .data = 1:100,
    .fun = function(number) {
      Sys.sleep(0.1)
      return(number)
    },
    .parallel = TRUE,
    .paropts = list(packages = "plyr")
  ),
  times = 1
)
results

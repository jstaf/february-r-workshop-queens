library(gapminder)
gap <- gapminder

# number <- 25
# if (number > 0) {
#   print("The number was greater than 0")
# } else if (number == 0) {
#   print("The number was equal to 0")
# } else {
#   print("The number was not greater than 0")
# }
# 
# if (number >= 20) {
#   print("The number was greater than or equal to 20")
# } 
# 
# number <- 11
# if (number > 0 || number < 10) {
#   print("number was greater than 0 or less than 10")
# }


for (variable in 1:5) {
  print(variable)
}

unique(gap$continent)

# get mean pop for every continent
for (continent in unique(gap$continent)) {
  data <- gap[gap$continent == continent, ]
  print(continent)
  print(mean(data$pop))
}

# get the mean gdp in billions for every country

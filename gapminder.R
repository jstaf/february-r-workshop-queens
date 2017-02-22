library(gapminder)

gap <- gapminder
str(gap)
colnames(gap)
dim(gap)
nrow(gap)
ncol(gap)
summary(gap)

mean(gap$gdpPercap)
sum(as.numeric(gap$pop))
sd(gap$gdpPercap)

numbers <- c(1, 5, 10, 15, 3, 5, 67, NA, NA)
numbers >= 10
numbers[numbers >= 10]
mean(numbers)

mean(numbers[!is.na(numbers)])

mean(numbers, na.rm = TRUE)

text <- c("a", "b", "a", "d", "cheesecake")
text[text != "a"]


head(gap)
tail(gap)
gap[1000:1005, ]

gap[gap$country == "Canada", ]
asia <- gap[gap$continent == "Asia",]
unique(asia$continent)
unique(asia$country)

text[text %in% c("a", "cheesecake")]

# Get the mean GDP per capita for China, Canada, Cambodia
# together.
countries <- gap[gap$country %in% c("China", "Canada", "Cambodia"), ]
countries
mean(countries$gdpPercap)

# And as bonus compute the GDP for these countries as well
# for each of the years (in billions of dollars).
# Hint: you can do math on columns
countries$gdp <- countries$gdpPercap * countries$pop / 1000000000
countries
countries

countries <- gap[gap$country == c("China", "Canada", "Cambodia"), ]
unique(countries$country)

text
text == c("a", "b")
text == c("a", "b", "a", "b", "a")

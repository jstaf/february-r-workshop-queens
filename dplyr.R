library(dplyr)
library(gapminder)

gap <- gapminder

europe <- gap %>% 
  #select(country, continent, year, gdpPercap) %>% 
  filter(continent %in% c("Europe", "Asia")) %>% 
  group_by(continent, year) %>% 
  mutate(gdp = gdpPercap * pop / 1e9) %>% 
  summarize(
    mean_gdp = mean(gdp),
    mean_pop = mean(pop)
  )

# Get me the mean and standard error of the mean of population for 
# the years 1952, 1962, 1972 for the continents of Africa and Asia,
# grouped by continent and year.

# Standard error of the mean = sd(something) / sqrt(length(something))

popData <- gap %>% 
  filter(year %in% c(1952, 1962, 1972)) %>% 
  filter(continent %in% c("Africa", "Asia")) %>% 
  group_by(continent, year) %>% 
  summarise(mean_pop = mean(pop),
            stderr_pop = sd(pop) / sqrt(length(pop)))
popData



# get everything starting with a string
library(stringr)
test <- gap %>% 
  filter(str_detect(continent, "^Eur"))

a <- c(1, 2, 3) 
b <- c(1, 4, 7)
a == b




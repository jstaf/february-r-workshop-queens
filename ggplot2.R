library(ggplot2)
library(gapminder)

gap <- gapminder

ggplot(gap, aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggplot(data = gap, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_smooth(color = "red") + geom_smooth(method = "lm") + geom_point() + 
  scale_x_log10()

ggplot(gap) +
  geom_point(aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(aes(x = log10(gdpPercap), y = lifeExp)) + xlim(c(0, 1000))

# Make a plot of lifeExp by year, make the size equal pop, 
# color == continent. 

ggplot(gap, aes(x = as.factor(year), y = lifeExp)) +
  geom_boxplot() + ylab("Life Expectancy (years)") + xlab("") +
  ggtitle("Interesting plot") + theme_bw()
ggsave("plot-name.png")


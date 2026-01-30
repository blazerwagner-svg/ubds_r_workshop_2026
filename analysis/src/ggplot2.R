library(ggplot2)

gapminder <- read.csv('data/gapminder_data.csv')

ggplot(data = gapminder,
       mapping=aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(data=gapminder,
       mapping=aes(x = year, y = lifeExp)) + 
  geom_point()

ggplot(data=gapminder,
       mapping=aes(x = year, y = lifeExp,
                   color = continent)) +
  geom_line()

ggplot(data=gapminder,
       mapping=aes(x=year, y=lifeExp,
                   group=country, color=continent)) +
  geom_line() + geom_point()

ggplot(data=gapminder,
       mapping=aes(x=year, y=lifeExp,
                   group=country))+
  geom_line(mapping=aes(color=continent)) +
  geom_point()

ggplot(data=gapminder,
       mapping=aes(x=year, y=lifeExp,
                   group=country))+
  geom_point() +
  geom_line(mapping=aes(color=continent))
  
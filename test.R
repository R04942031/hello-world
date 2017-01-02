library(ggplot2)

set.seed(1)
y1 <- cumsum(rnorm(100))
x <- seq_along(y1)

y2 <- y1 + abs(rnorm(100, 3))

my.df <- data.frame(x, y1, y2)
library(ggthemes)
ggplot(my.df, aes(x = x, y = y1)) +
  geom_line()

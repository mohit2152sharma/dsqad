library(ggplot2)

ggplot(mpg, aes(displ, hwy)) + geom_point(colour = "blue")

ggsave('../../images/answers/a_10112020.png', width = 300, height = 180, units = 'mm')

library(ggplot2)

ggplot(mpg, aes(displ, hwy)) + geom_point(aes(colour = "blue"))

ggsave('../../images/questions/q_10112020.png', width = 300, height = 180, units = 'mm')

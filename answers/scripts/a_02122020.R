library(ggplot2)
tble = data.frame(x = c(1,3,2,4),
                  y = c(2,5,1,3))
tble

ggplot(tble, aes(x,y)) + geom_line()
ggsave('../../images/answers/a_02122020_1.png', width=300, height=180, units='mm')

ggplot(tble, aes(x,y)) + geom_path()
ggsave('../../images/answers/a_02122020_2.png', width=300, height=180, units='mm')
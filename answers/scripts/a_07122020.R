library(ggplot2)

tble = data.frame('x' = rep(c(1,2,3),2),
                  'y' = c(1,2,3,4,5,6),
                  'group' = c(rep('Group1', 3), rep('Group2', 3)))
tble
ggplot(tble, aes(x,y)) + geom_line()
ggsave('../../images/answers/a_07122020_1.png', width=300, height=180, units='mm')

ggplot(tble, aes(x,y,group=group)) + geom_line()
ggsave('../../images/answers/a_07122020_2.png', width=300, height=180, units='mm')

ggplot(tble, aes(x,y,fill=group)) + geom_line()
ggsave('../../images/answers/a_07122020_3.png', width=300, height=180, units='mm')

ggplot(tble, aes(x,y,color=group)) + geom_line()
ggsave('../../images/answers/a_07122020_4.png', width=300, height=180, units='mm')


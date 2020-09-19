library(ggplot2)

tble = data.frame(x = seq(-5, 10, length.out = 10000))
tble$y1 = dnorm(tble$x)
tble$y2 = dnorm(tble$x, 5, 2)

ggplot() +
  geom_line(data=tble, aes(x=x, y=y1), color='red') +
  geom_line(data=tble, aes(x=x, y=y2), color='steelblue') +
  geom_polygon(data = rbind(c(1,0), subset(tble, x>1, c(x,y1)), c(tble[nrow(tble), 'y1'], 0)),
               aes(x,y1, fill='f1')) +
  geom_polygon(data = rbind(c(tble[1,'y2'],0), subset(tble, x<1, c(x,y2)), c(1,0)),
               aes(x,y2, fill='f2')) +
  geom_polygon(data = rbind(c(1,0), subset(tble, x>1, c(x, y2)), c(tble[nrow(tble), 'y2'], 0)),
               aes(x,y2,fill='f3'), alpha=0.5) +
  geom_segment(aes(x=1, y=0, xend=1, yend=0.5), linetype='dashed', color='black') +
  annotate(geom='text', x=0, y=0.43, label=expression(H[0])) +
  annotate(geom='text', x=5, y=0.23, label=expression(H[1])) +
  scale_fill_manual(name='Region', values=c(f1='red', f2='steelblue', f3='yellow'), labels=c('A', 'B', 'C')) +
  scale_x_continuous(limits=c(-5,10), expand=c(0,0))+
  scale_y_continuous(limits=c(0,0.5), expand=c(0,0))+
  theme(#axis.text=element_blank(),
        axis.ticks=element_blank(),
        axis.title=element_blank(),
        axis.line=element_line(color='black'),
        panel.grid=element_blank())

ggsave('../../images/questions/q_26092020.png', width=300, height=180, units='mm')
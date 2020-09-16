library(tidyverse)
library(latex2exp)

x0 = seq(-8,8, length=200)
unif = function(y, x=x0) dunif(x, min=y[[1]], max=y[[2]])
temp_list = list(c(-6,-2), c(-1,3), c(3.5,7.5))
y = lapply(temp_list, unif)
y[[4]] = x0
df = do.call(cbind.data.frame, y)
colnames(df) = c('first', 'second', 'third', 'x')
df = gather(df,-x, key='unif_dist', value='unif')
cols = c('first'='black', 'second'='orange', 'third'='green')

ggplot(df, aes(x = x, y=unif)) +
  ylim(c(0,0.5)) +
  geom_line(aes(col=unif_dist), show.legend = FALSE) +
  geom_area(aes(fill=unif_dist),alpha=0.2) +
  labs(y= 'Probability Density', x='X', title= 'PDFs', fill='distribution') +
  scale_fill_manual(values = cols,
                    breaks = c('first', 'second', 'third'),
                    labels = c('d1', 'd2', 'd3')) +
  scale_color_manual(values = cols)

ggsave('../../images/questions/q_23092020.png', width=300, height=180, units='mm')
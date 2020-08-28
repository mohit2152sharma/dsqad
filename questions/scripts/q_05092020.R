library(ggplot2)

ggplot(
  data = data.frame(x = seq(-5, 10, length.out = 1000)),
  aes(x = x)
) +
  geom_segment(aes(x = 0.4, 
                   y = 0, 
                   xend = 0.4, 
                   yend = dnorm(0.4),
                   color = 'option A')) +
  geom_segment(aes(x = 1.2,
                   y = 0,
                   xend = 1.2,
                   yend = dnorm(1.2),
                   color = 'option B')) +
  geom_segment(aes(x = 2,
                   y = 0,
                   xend = 2,
                   yend = dnorm(2, 5, 2),
                   color = 'option C'))+
  geom_segment(aes(x = 2.5,
                   y = 0,
                   xend = 2.5,
                   yend = dnorm(2.5, 5, 2),
                   color = 'option D'))+
  stat_function(
    fun = dnorm,
    color = 'red'
  ) +
  stat_function(
    fun = dnorm,
    args = list(mean = 5, sd = 2),
    color = 'steelblue'
  ) +
  scale_x_continuous(limits = c(-5,10),
                     expand = c(0,0)) +
  scale_y_continuous(limits = c(0, 0.5),
                     expand = c(0,0)) +
  scale_color_manual(name = 'Options',
                     values = c(`option A` = '#C39BD3', 
                                `option B` = '#85C1E9', 
                                `option C` = '#7DCEA0', 
                                `option D` = '#808B96'),
                     labels = c('option A', 'option B', 'option C', 'option D')) +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        axis.ticks = element_blank(),
        axis.line = element_line(color = 'black'),
        plot.background = element_rect(fill = '#EAEDED'),
        panel.background = element_rect(fill = '#EAEDED'),
        panel.grid = element_blank())

ggsave('../../images/questions/q_05092020.png', width = 300, height = 180, units = 'mm')
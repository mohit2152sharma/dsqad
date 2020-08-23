library(ggplot2)
library(patchwork)

plot_fn = function(df, option){
  ggplot(df, aes(x=x, y=values))+
    geom_line() +
    labs(title=paste0('Option ', option), x='F', y='Density') +
    theme_classic() +
    geom_vline(aes(xintercept = 0), color = 'red', linetype = 'longdash')
}

norm_dist = data.frame('x' = seq(-10, 10, 0.01),
                       'values' = dnorm(seq(-10, 10, 0.01)))
opt_a = plot_fn(norm_dist, 'A') 

f_dist_b = data.frame('x' = seq(0, 10, 0.01),
                       'values' = df(seq(0,10,0.01), 1,1))
opt_b = plot_fn(f_dist_b, 'B')

f_dist_c = data.frame('x' = seq(-10, 10, 0.01),
                    'values' = df(seq(-10, 10, 0.01), 5, 10))
opt_c = plot_fn(f_dist_c, 'C')

f_dist_d = data.frame('x' = seq(0,10,0.01),
                        'values' = df(seq(0,10,0.01), 100,100))
opt_d = plot_fn(f_dist_d, 'D')
opt_d

(opt_a + opt_b)/(opt_c + opt_d)

ggsave('../../images/questions/q_24082020.png', width = 300, height = 180, units = 'mm')

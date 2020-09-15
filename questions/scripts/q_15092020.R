library(ggplot2)
library(patchwork)

plot_fn = function(df, option){
  if(is.infinite(max(df$values))) ymax = 3 else ymax = max(df$values)
  
  ggplot(df, aes(x=x, y=values))+
    geom_line() +
    labs(title=paste0('Option ', option), x=expression(x), y=expression(f[k](x)), subtitle = expression(X^{2})) +
    theme_light() +
    theme(plot.subtitle = element_text(hjust = 0.5)) +
    geom_vline(aes(xintercept = 0), color = 'red', linetype = 'longdash') +
    scale_x_continuous(limits = c(min(df$x), max(df$x)), expand = c(0,0)) +
    scale_y_continuous(limits = c(min(df$values), ymax), expand = c(0,0))
}

norm_dist = data.frame('x' = seq(-10, 10, 0.01),
                       'values' = dnorm(seq(-10, 10, 0.01)))
opt_a = plot_fn(norm_dist, 'A') 

chi_dist_b = data.frame('x' = seq(-10, 10, 0.01),
                      'values' = dchisq(seq(-10,10,0.01), 1,1))
opt_b = plot_fn(chi_dist_b, 'B')

chi_dist_c = data.frame('x' = seq(-10, 10, 0.01),
                      'values' = dchisq(seq(-10, 10, 0.01), 5, 10))
opt_c = plot_fn(chi_dist_c, 'C')

chi_dist_d = data.frame('x' = seq(-10,10,0.01),
                      'values' = dchisq(seq(-10,10,0.01), 16, 4))
opt_d = plot_fn(chi_dist_d, 'D')
opt_d

opt_a + opt_b + opt_c + opt_d + plot_layout(guides = 'collect', ncol = 2)

ggsave('../../images/questions/q_15092020.png', width = 300, height = 180, units = 'mm')

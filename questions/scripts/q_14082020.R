library(ggplot2)

x = seq(0.01, 0.99, 0.01)
y = log(x/(1-x))
y = ifelse(y<0, -abs(y)^2, y^2)

df = data.frame('X'=x, 'Y'=y)

ggplot(df, aes(x=X, y=Y)) +
  geom_jitter() + theme_classic() +
  labs(title = "Can you guess the spearman coefficient?")

ggsave('../../images/questions/q_14082020.png')

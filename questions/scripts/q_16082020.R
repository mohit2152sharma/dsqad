library(ggplot2)
library(patchwork)

#option A
x = seq(-1,1,0.01)
y = 5*x^2 + rnorm(length(x))
ml = lm(y~x)
p1 = ggplot(ml, aes(x=.fitted, y=.resid)) +
  geom_point() +
  labs(title='Option A', subtitle='Residuals vs Fitted', x='Fitted values', y='Residuals') +
  theme_classic()

#option B
x = seq(1,100,0.25)
e = rnorm(length(x), 0, sqrt(x^2))
y = x + e
ml = lm(y~x)
p2 = ggplot(ml, aes(x=.fitted, y=.resid)) + 
  geom_point() +
  labs(title='Option B', subtitle='Residuals vs Fitted', x='Fitted values', y='Residuals')+
  theme_classic()

#option C
x = seq(1,100,1)
y = x + rnorm(length(x))
ml = lm(y~x)
p3 = ggplot(ml, aes(x=.fitted, y=.resid))+
  geom_point() +
  labs(title='Option C', subtitle='Residuals vs Fitted', x='Fitted values', y='Residuals') +
  theme_classic()

(p1+p3)/p2

ggsave('../../images/questions/q_16082020.png', width=300, height=180, units = 'mm')

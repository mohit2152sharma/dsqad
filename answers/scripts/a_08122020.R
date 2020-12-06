library(ggplot2)
library(patchwork)

df <- data.frame(x = rnorm(2000), y = rnorm(2000))
norm <- ggplot(df, aes(x, y)) + xlab(NULL) + ylab(NULL)
p1 = norm + geom_point(shape=1) + labs(title = "Option A: Hollow circles")
p2 = norm + geom_point(shape=".") + labs(title = "Option B: Pixel Sized points") 
p3 = norm + geom_point(alpha=1/10) + labs(title = "Option C: Transparent points")

p1 + p2 + p3

ggsave('../../images/answers/a_08122020_2.png', width=300, height=60, units='mm')

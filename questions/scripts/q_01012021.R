library(ggplot2)

#optin A
p.a <- list(
  geom_point(),
  geom_smooth(method="lm", se=FALSE)
)

#option B
p.b <- c(
  geom_point(),
  geom_smooth(method='lm', se=FALSE)
)

#option C
p.c <- geoms(
  geom_point(),
  geom_line(method="lm", se=FALSE)
)

#option D
p.d <- data.frame(
  geom_point(),
  geom_smooth(method="lm", se=FALSE)
)

ggplot(mtcars, aes(mpg, disp)) + p.a

#ggsave('q_01012021_2.png', width=300, height=180, units='mm')

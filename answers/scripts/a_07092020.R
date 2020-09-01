z <- list(a = list(b = 9, c = "hello"), d = 1:5)

#The different ways of selecting hello
z$a$c

z[['a']][['c']]

z[[1]][[2]]

z[[c('a', 'c')]]

z[[c(1, 2)]]

z[1][[1]][[2]]

z[1][['a']][['c']]

z[1]$a$c
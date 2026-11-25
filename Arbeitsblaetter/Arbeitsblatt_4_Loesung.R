library(tidyverse)


word_rts <- read.csv('datasets/ELP_frequency.csv', sep='\t')


m1 <- lm(RT ~ 1 + Log10Freq, data = word_rts)
m2 <- lm(log(RT,base=10) ~ 1 + Log10Freq, data = word_rts)

library(broom)


tidy(m1$coefficients)

m1.0 <- lm(RT ~ 1, data = word_rts)
m2.0 <- lm(log(RT,base=10) ~ 1, data = word_rts)

sse1 <- sum((fitted(m1) - word_rts$RT)^2)
sse1.0 <- sum((fitted(m1.0) - word_rts$RT)^2)

1 - (sse1/sse1.0)

sse2 <- sum((fitted(m2) - log(word_rts$RT,base=10))^2)
sse2.0 <- sum((fitted(m2.0) - log(word_rts$RT,base=10))^2)

1 - (sse2/sse2.0)

glance(m1)$r.squared
glance(m2)$r.squared




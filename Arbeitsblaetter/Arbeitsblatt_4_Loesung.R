library(tidyverse)


word_rts <- read.csv('datasets/ELP_frequency.csv', sep='\t')


m1 <- lm(RT ~ 1 + Log10Freq, data = word_rts)
m2 <- lm(log(RT,base=10) ~ 1 + Log10Freq, data = word_rts)

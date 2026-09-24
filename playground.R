library(ggplot2)
library(lme4)
nettle <- read.csv('nettle_1999_climate.csv')


hist(nettle$Langs, col = 'salmon')


ggplot(nettle, aes(x=Population, y=Langs)) + 
  geom_point() + 
  geom_smooth(method = "lm",
              se = FALSE) 


ggplot(nettle, aes(x=MGS, y=Langs)) + 
  geom_point() + 
  geom_smooth(method = "lm",
              se = FALSE) 


ggplot(nettle, aes(x=MGS, y=Population)) + 
  geom_point() + 
  geom_smooth(method = "lm",
              se = FALSE) 


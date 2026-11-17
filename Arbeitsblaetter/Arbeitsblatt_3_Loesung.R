
word_rts <- read.csv('datasets/ELP_frequency.csv', sep='\t')

word_rts <- word_rts |>
  mutate(log_RT = log(RT))

x_bar <- mean(word_rts$RT)
sd <- sd(word_rts$RT)


word_rts <- word_rts |>
  mutate(z_score = (RT - x_bar)/sd)

pnorm(700, mean=x_bar, sd = sd) - pnorm(600, mean=x_bar, sd = sd) 
qnorm(1-0.025, mean=x_bar, sd = sd)

x_bar + 1.96*sd


word_rts |>
  mutate(first_letter = substr(Word,1,1)) |>
  ggplot(aes(x=first_letter)) + 
  geom_bar(stat = 'count')




library(tidyverse)

data_students <- read.csv('datasets/studierenden_groesse.csv', sep='\t')

sum(is.na(data_students))
anyNA(data_students)

colnames(data_students)
nrow(data_students)

summary(data_students)


## Aufgabe 3.1

mean(data_students$groesse_cm)
median(data_students$groesse_cm)


## Aufgabe 3.2

data_students |>
  count(haarlaenge) |>
  arrange(desc(n))

data_students |>
  count(geburtsmonat) |>
  arrange(desc(n))

## Aufgabe 3.3

table(data_students$haarlaenge, data_students$geburtsmonat)

## Aufgabe 4.1

x_bar <- mean(data_students$groesse_cm)
n <- length(data_students$groesse_cm)
sum_diff1 <- sum(sapply(data_students$groesse_cm, function(x) (x-x_bar)^2))/(n-1)
# alternativ:
sum_diff2 <- sum(((data_students$groesse_cm - x_bar)^2)) / (n-1)
# alternativ
sum3 <- 0
for (i in 1:length(data_students$groesse_cm)){
  sum3 <- sum3 + ((data_students$groesse_cm[i] - x_bar)^2)
}
sum_diff3 <- sum3 / (n-1)


sum_diff1 == sum_diff2 
sum_diff1 == sum_diff3

sqrt(sum_diff1)

sd(data_students$groesse_cm)


hoehe <- data_students$groesse_cm


# Alternative mit dplyr-Syntax

data_students |>
  mutate(diff = (groesse_cm - x_bar)^2) |>
  summarise(variance = sum(diff)/(n-1)) |>
  mutate(sd = sqrt(variance))

## Aufgabe 4.2

quantiles <- quantile(data_students$groesse_cm, probs = c(0.25, 0.75))
quantiles[2] - quantiles[1]

IQR(data_students$groesse_cm)



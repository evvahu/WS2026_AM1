library(dplyr)
studierende <- read.csv('../Studierende.csv', sep='\t')

studierende |>
  filter(praesentiert == 0 & AB4) |>
  sample_n(2, replace=F) |>
  select(Vorname)


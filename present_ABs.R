library(dplyr)
studierende <- read.csv('../Studierende.csv', sep='\t')

studierende |>
  filter(praesentiert == 0 & AB2) |>
  sample_n(2, replace=F) |>
  select(Vorname)


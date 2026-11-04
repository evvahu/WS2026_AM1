
studierende <- read.csv('/Users/evascheel/Downloads/TN_LV145550100_2026-11-04.csv', sep='\t') |>
  mutate(name = paste(Familienname, Vorname, sep='_')) 

studierende |>
  filter(praesentiert == 0 & abgegeben) |>
  sample_n(2, replace=F)


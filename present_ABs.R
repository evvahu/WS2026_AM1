
studierende <- read.csv('/Users/evascheel/Downloads/TN_LV145550100_2026-11-04.csv', sep='\t')

studierende |>
  filter(praesentiert == 0 & abgegeben) |>
  sample_n(2, replace=F)


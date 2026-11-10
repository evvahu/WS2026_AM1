subtlex <- read.csv(
  file = "datasets/SUBTLEX-UK_selection.csv",
  row.names = 1,
  na.strings = c("", "NA"),
  stringsAsFactors = FALSE,
  fileEncoding = "UTF-8"
)

subtlex |> select(-CD) |> head()
save(subtlex, file = '~/Downloads/test_save.txt')
head(subtlex)

subtlex_filter_2bis10 <- subtlex  %>% #Output (links) und Input (rechts) verschieden halten
  filter(nchar(Spelling) >= 2 & nchar(Spelling) <= 10)

subtlex_filter_2bis10 %>%
  filter(!str_starts(DomPoS, 'unclassified')) |>
 distinct(DomPoS)

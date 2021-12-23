library(dplyr)
library(janeaustenr)
library(tidytext)
library(forcats)
library(ggplot2)

tweet_words <- read.csv('data/workable_data.csv') %>% 
  unnest_tokens(word, clean_text_string) %>% 
  count(modularity_count, word, sort = TRUE)

total_words <- tweet_words %>% 
  group_by(modularity_class) %>% 
  summarize(total = sum(n))

tweet_words <- left_join(tweet_words, total_words)

tweet_tf_idf <- tweet_words %>%
  bind_tf_idf(word, modularity_class, n)

tweet_tf_idf %>%
  group_by(modularity_class) %>%
  slice_max(tf_idf, n = 10) %>%
  ungroup() %>%
  ggplot(aes(tf_idf, fct_reorder(word, tf_idf), fill = modularity_class)) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~modularity_class, ncol = 2, scales = "free") +
  labs(x = "tf-idf", y = NULL)

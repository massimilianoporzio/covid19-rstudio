library(tidyverse)
library(readr)
covid_df <- read_csv("covid19.csv")
View(covid_df)

vector_cols<- colnames(covid_df)
vector_cols
dim(covid_df)
head(covid_df)
glimpse(covid_df)

covid_df_all_states <- covid_df %>% filter(Province_State=="All States")%>%
  select(-Province_State)
dim(covid_df_all_states)

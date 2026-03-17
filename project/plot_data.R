library(tidyverse)
south_asia <- read_csv(file = "sadata.csv")

# Simple plot
ggplot(data = south_asia, aes(x = date, y = life_exp, color = country)) +
  geom_line()

# Additionally add labels to the end of each line for better readability
south_asia_labels <- south_asia %>%
  group_by(country) %>%
  filter(date == max(date))  # Get the latest year for each country

ggplot(data = south_asia, aes(x = date, y = life_exp, color = country)) +
  geom_line() +
  geom_text(data = south_asia_labels, aes(label = country), hjust = -0.1, size = 4) +
  expand_limits(x = max(south_asia$date) + 3) + 
  theme_minimal() +
  theme(legend.position = "none")

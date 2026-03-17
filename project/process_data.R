library(tidyverse)
library(wbstats)

my_indicators <- c(
  life_exp = "SP.DYN.LE00.IN"
)

wbd <- wb_data(my_indicators, start_date = 2000, end_date = 2022)

cinfo <- wb_countries("iso3c")

wbd1 <- left_join(x = wbd, y = wb_countries(), 
                  by = c("country", "iso3c", "iso2c"))
south_asia <- subset(wbd1, region == "South Asia")

write_csv(south_asia, file = "sadata.csv")

pg <- read.csv("data_raw/PlantGrowth.csv")

## Create an id for each plant
pg$id <- seq_along(pg$weight)

write.csv(pg, file = "data_clean/PlantGrowth_new.csv", row.names = FALSE)

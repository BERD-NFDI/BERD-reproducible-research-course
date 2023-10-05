pg <- read.csv("data_clean/PlantGrowth_new.csv")

## Show summary of plant weight by group
by(data = pg$weight, INDICES = pg$group, FUN = summary)


## Show visual summary of plant weight by group and save as pdf
png("boxplot_weight-group.png", width = 800, height = 600, res = 120)
(p <- boxplot(weight ~ group, data = PlantGrowth, title = "Weight by treatment condition"))
dev.off()



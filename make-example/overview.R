pg <- read.csv("data_clean/PlantGrowth_new.csv")

## Show summary of plant weight by group
by(data = pg$weight, INDICES = pg$group, FUN = summary)


## Show visual summary of plant weight by group and save as pdf
pdf("boxplot_weight-group.pdf")
(p <- boxplot(weight ~ group, data = PlantGrowth))
dev.off()



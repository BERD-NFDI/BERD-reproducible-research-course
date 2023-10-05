
data_clean/PlantGrowth_new.csv: data_raw/PlantGrowth.csv preprocess.R
	Rscript preprocess.R

boxplot_weight-group.png: data_clean/PlantGrowth_new.csv overview.R
	Rscript overview.R

all: boxplot_weight-group.png

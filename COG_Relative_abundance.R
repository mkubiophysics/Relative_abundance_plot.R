library(ggplot2)
png(filename = "ip9_COG_MGE_plot", width=2000,height=1500, units = "px", res = 400)
df <- read.csv("IP9_cog_abundance_final_plot.csv")
ggplot(df, aes(x = COG_categories, y = Abundance, fill = MGEs)) + 
geom_bar(stat = "identity") + scale_fill_manual(values = c("#473C8B", "#00868B", "#CDCD00", "#6C7B8B")) + theme(panel.background = element_blank() , axis.line = element_line(colour = "black")) + xlab("COG functional categories")
dev.off()
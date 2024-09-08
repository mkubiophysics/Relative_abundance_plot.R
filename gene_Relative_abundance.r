library(ggplot2)
png(filename = "ip9_amr_plot", width=1100,height=1500, units = "px", res = 400)
df <- read.csv("ipe_amr.csv")
color <- ifelse(df$Value < 0, "magenta", "blue")

ggplot(df, aes(x = Group, y = Value)) +
  geom_bar(stat = "identity",
           show.legend = FALSE,
           fill = color,      # Background color
           color = "white") + # Border color
  xlab("Group") +
  ylab("Value") + theme(panel.background = element_blank() , axis.line = element_line(colour = "black"))
dev.off()
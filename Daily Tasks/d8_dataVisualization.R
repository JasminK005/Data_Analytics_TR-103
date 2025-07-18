# Data visualization
install.packages("ggplot2")
library(ggplot2)

set.seed(5)
x = runif(100)
My_frame = data.frame(x = seq_along(x),var = x)
My_frame

# Box Plot
Plot1 = ggplot(My_frame,aes(x = "", y = var))+geom_boxplot()
Plot1

# Density Plot
Plot2 = ggplot()+stat_function( fun = pnorm,geom = "density",xlim = c(-3,3),fill = "green")
Plot2

# Line Chart
Plot3 = ggplot(My_frame,aes(x = x, y = var))+geom_line(color = "blue")
Plot3

# Scatter Plot
Plot4 = ggplot(My_frame,aes(x = x, y = var))+geom_point(color = "red")
Plot4

# patchwork(use to combine data visualization)
install.packages("patchwork")
library(patchwork)

Plot1+Plot2
Plot1+Plot2+Plot3+Plot4
# To define the position of the visualization
design = "11
23
24"
Plot1+Plot2+Plot3+Plot4+plot_layout(design = design)

# Task
design = "123
444"
Plot1+Plot2+Plot3+Plot4+plot_layout(design = design)

wrap_plots(Plot1,Plot2,Plot3,Plot4,ncol = 2,nrow = 2, widths = c(1,1),heights = c(1,1))
# spacing
Plot1+Plot2+plot_spacer()+Plot4

# combine two rows
# column
Plot1/Plot2
# row
Plot1|Plot2

(Plot1|Plot2)/Plot3

# Task
Plot1|Plot2/Plot3
Plot1|(Plot2|Plot3)/Plot4
(Plot1|(Plot2|Plot3)/Plot4)+plot_annotation(title = 'abc', subtitle = "graph", caption = "fill")

# cow-plot
install.packages("cowplot")
library(cowplot)

plot_grid(Plot1,Plot2,Plot3,Plot4, nrow = 3 , ncol = 3)

# Task
plot_grid(Plot1,plot_grid(Plot2,Plot3), ncol = 1)

plot_grid(Plot1,plot_grid(plot_grid(Plot2,Plot3),Plot4,ncol = 1))

plot_grid(plot_grid(Plot1,Plot2,ncol = 1),Plot3,Plot4,nrow = 1)

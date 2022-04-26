# This is the code where all the graphs and tables where created



# Correlation matrix heatmap
cormat <- round(cor(precipitation),2)
melted_cormat <- melt(cormat)
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value))  + 
  geom_tile() + xlab("") + ylab("") +
  theme(axis.text.x=element_text(angle=45, hjust=1))
# Scatter plot
mslp <- ggplot(precipitation, aes(mslp, Precipitation)) + geom_smooth(method = "loess")
w <- ggplot(precipitation, aes(w, Precipitation)) + geom_smooth(method = "loess")
s <- ggplot(precipitation, aes(s, Precipitation)) + geom_smooth(method = "loess")
brestzon <- ggplot(precipitation, aes(brestzon, Precipitation)) + geom_smooth(method = "loess")
kefzon <- ggplot(precipitation, aes(kefzon, Precipitation)) + geom_smooth(method = "loess")
corunmer <- ggplot(precipitation, aes(corunmer, Precipitation)) + geom_smooth(method = "loess")
naoi <- ggplot(precipitation, aes(naoi, Precipitation)) + geom_smooth(method = "loess")
sstatlan <- ggplot(precipitation, aes(sstatlan, Precipitation)) + geom_smooth(method = "loess")
sstengch <- ggplot(precipitation, aes(sstengch, Precipitation)) + geom_smooth(method = "loess")
sstmed <- ggplot(precipitation, aes(sstmed, Precipitation)) + geom_smooth(method = "loess")
grid.arrange(mslp, w, s, brestzon, kefzon, corunmer, naoi, sstatlan, sstengch, sstmed, ncol = 3, nrow = 4)

setwd("/Users/cleme/Eagle/programming/")
df <- read.csv("Steigerwald_sample_points_all_data_subset_withNames.csv")

names(df)
head(df)

ggplot(df, aes(x=L8.ndvi, y=L8.savi))+geom_point()

ggplot(df, aes(x=L8.ndvi, y=L8.savi, colour=SRTM))+geom_point()+geom_smooth()
+facet_wrap()

ggplot()+geom_point(data=df, aes(LCname, L8.savi, colour=SRTM))

ggplot(df, aes(x=LCname, y=L8.savi)) + geom_boxplot(alpha=.5)
ggplot(df, aes(x=LCname, y=L8.savi)) + geom_boxplot(alpha=.5)+geom_point(aes(color=SRTM), alpha=7, size=1.5, position=position_jitter(width=.25,height = 0))

ggplot(df, aes(x=LCname, y=L8.savi)) + geom_jitter()
ggplot(df, aes(x=LCname, y=L8.savi)) + geom_violin()
ggplot(df, aes(x=TimeScan.NDVIavg, fill=LCname)) + geom_density(alpha=0.3)



pdf("landcover_vs_L8savi_ndvi.pdf", width = 12, height = 4)
plot <- ggplot(df, aes(x=L8.ndvi, y=L8.savi))+ geom_point(size=2)+geom_point(aes(color=LCname),size=2)+facet_grid(.~LCname)
print(plot)
dev.off()

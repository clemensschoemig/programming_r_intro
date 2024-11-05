
install.packages("suncalc")
#install.packages("V8")
library(suncalc)
getSunlightTimes(date=Sys.Date(), lat=49.782332, lon=9.970187, tz="CET")


if (!require(devtools)){install.packages(devtools)}
devtools::install_github("brooke-watson/BRRR")
library(BRRR)
library(devtools)


skrrrahh("drummaboy")
skrrrahh("snoop")
skrrrahh("94")



getwd()
setwd("/Users/cleme/Eagle/programming/")

df <- read.csv("Steigerwald_sample_points_all_data_subset_withNames.csv")
summary(df)
str(df)
names(df)
df[2:4,c("S2.7","S2.9")]

plot(df$SRTM, df$NDVIavg)
plot(df$SRTM, df$TimeScan.mNDWIavg)
plot(df$TimeScan.mNDWIavg,df$SRTM)

# hier das noch ausprobieren mit abschneiden von werten




install.packages("ggplot2")
library(ggplot2)
x11()
x <- data.frame(x=1, y=1,label="gplot2 introduction \n@ Eagle")
ggplot(data=x, aes(x=x, y=y)) + geom_text(aes(label=label), size=15)

x1 <- rnorm(1000,0,1)
x2 <- rnorm(1000,5,10)
x3 <- rep(c("catA","catB","catC","catD","catE"),200)[1:100]
x4 <- factor (rep(c("yes","no"),500))

df <- data.frame(a=x1,b=x2,c=x3,d=x4)

ggplot(df, aes(a,b, color=c)) + geom_point(alpha=5) + labs(title = "first plot", x="x axis \n and a new line")

ggplot(df, aes(a))+geom_histogram(color="white")
ggplot(df, aes(a))+geom_density()

ggplot(df)+ geom_histogram(aes(a, after_stat(density), fill="blue", colour="darkgrey"))+ geom_density(aes (a, after_stat(density)), colour="yellow")+ geom_rug( aes(a))
       

ggplot(df, aes(d,a))+geom_boxplot()+geom_jitter(alpha=5,width=3,color="blue")


ggplot(df, aes(c))+ geom_bar() + facet_grid(d ~ .)
ggplot(df, aes(a,b))+ geom_point(size=1) + geom_density2d()
ggplot(df, aes(a,b)) + geom_hex(bins=30)
ggplot(df, aes(a,b))+geom_point()+geom_smooth(methos=lm)

#a_plot <- ggplot() + geom_point(data=df, aes(x,y,colour=z))
#a_plot







names(df)
head(df)
summary(df)
ggplot(df,aes(x=L8.ndvi, y=L8.savi, colour=SRTM))+geom_point()+facet_wrap(~LCname)

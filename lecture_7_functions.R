#fun package
'
library(tidyverse)
seq(from=-10, to=10, by=0.05) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(x+pi*sin(y)), y=(y+pi*sin(x)))) +
  geom_point(alpha=1, shape=20, size=1, color="black")+
  theme_void()
'



getwd()
setwd("/Users/cleme/Eagle/programming/")

df <- read.csv("Steigerwald_sample_points_all_data_subset_withNames.csv")
summary(df)
str(df)
names(df)

spdf.obj <- df
names(spdf.obj)


'install.packages("sp")
library(sp)
coordinates(spdf.obj) <- ~x+y
'



install.packages("sf")
library(sf)

df.sf <- st_as_sf(x = df, coords = c("x", "y"), crs = 32632)
st_write(df.sf, "r_export_files/env_info_shape.shp")
st_write(df.sf, "r_export_files/env_info_geopackage.gpkg")

'st_write(df.sf, "C:/Users/cleme/Eagle/programming/r_export_files/env_info_shape.shp")
st_write(df.sf, "C:/Users/cleme/Eagle/programming/r_export_files/env_info_geopackage.gpkg")'


library(terra)
library(rnaturalearth)

germanyQuery <- germany[germany$Name =="Bavaria", ]


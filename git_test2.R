temp.min<-c(-2,-2,0,3,7,10,12,15,15,9,4,2,1,-4)
plot(temp.min, pch=3,cex=5, col="purple")
lines(lowess(temp.min, col="red"))
print()

install.packages("fortunes")
library(fortunes)
fortune()

install.packages("cowsay")
library(cowsay)
say("Hello World!")


someone_say_hello<- function(){
  animal <- sample(names(animals), 1)
  say(paste("Hello, i'm a", animal, ".", collapse = ""), by=animal)
 }
 someone_say_hello()



install.packages("devtools")
devtools::install_github("sctyner/memer")
install.packages("memer")
library(memer)
meme_get("DistractedBf") %>%
meme_text_distbf("Earth Observation", "EAGLE student", "life")



????""

difftime("2024-12-24",Sys.Date(),units="days")
difftime("2024-12-24",Sys.Date(),units="weeks")
difftime("2024-12-24",Sys.Date(),units="secs")



poi <- read.csv("")


getwd()
setwd("/Users/cleme/Eagle/programming/")

list.files()

people_test <- read.table("table_test.xlsx", header=TRUE, stringsAsFactors=FALSE)
#hat bei mir nicht funktioniert wil real table nicht xlsx impoertieren kann (xlsx package impoert nwed)

people_test <- read.csv("table_test1.csv", header=TRUE, stringsAsFactors=FALSE)
head(people_test)
summary(people_test)




dpasta(input="X 	Location 	Min 	Max
              Partly cloudy. 	Brisbane 	19 	29
              Partly cloudy. 	Brisbane Airport 	18 	27
              Possible shower. 	Beaudesert 	15 	30
              Partly cloudy. 	Chermside 	17 	29
              Shower or two. Possible storm. 	Gatton 	15 	32
              Possible shower. 	Ipswich 	15 	30
              Partly cloudy. 	Logan Central 	18 	29
              Mostly sunny. 	Manly 	20 	26
              Partly cloudy. 	Mount Gravatt 	17 	28
              Possible shower. 	Oxley 	17 	30
              Partly cloudy. 	Redcliffe 	19 	27")
tibble::tribble(
                                ~X,          ~Location, ~Min, ~Max,
                  "Partly cloudy.",         "Brisbane",  19L,  29L,
                  "Partly cloudy.", "Brisbane Airport",  18L,  27L,
                "Possible shower.",       "Beaudesert",  15L,  30L,
                  "Partly cloudy.",        "Chermside",  17L,  29L,
  "Shower or two. Possible storm.",           "Gatton",  15L,  32L,
                "Possible shower.",          "Ipswich",  15L,  30L,
                  "Partly cloudy.",    "Logan Central",  18L,  29L,
                   "Mostly sunny.",            "Manly",  20L,  26L,
                  "Partly cloudy.",    "Mount Gravatt",  17L,  28L,
                "Possible shower.",            "Oxley",  17L,  30L,
                  "Partly cloudy.",        "Redcliffe",  19L,  27L
  )

c("X \tLocation \tMin \tMax", "Partly cloudy. \tBrisbane \t19 \t29", "Partly cloudy. \tBrisbane Airport \t18 \t27", "Possible shower. \tBeaudesert \t15 \t30", "Partly cloudy. \tChermside \t17 \t29", "Shower or two. Possible storm. \tGatton \t15 \t32", "Possible shower. \tIpswich \t15 \t30", "Partly cloudy. \tLogan Central \t18 \t29", "Mostly sunny. \tManly \t20 \t26", "Partly cloudy. \tMount Gravatt \t17 \t28", "Possible shower. \tOxley \t17 \t30", "Partly cloudy. \tRedcliffe \t19 \t27")


df <- read.csv("Steigerwald_sample_points_all_data_subset_withNames.csv")

summary(df)
plot(df)
str(df)
names(df)



X <- seq(1,100, by=2.5)
X
X[5]
X[length(X)]

Y <- seq(50,60)
Y
length(Y)


X2 <- X
X2
X2[X<=30] <- 1
X2[X>30 & X<70] <- 2
X2[X>70] <- 3
length(X)
length(X2)
X
X2
summary(X)
sum(X)
cumsum(X)
rev(X)
sample(X,10)


m1 <- matrix(c(4,7,9,12,45,99), nrow = 3)
m1

m1[,2]
m1[1,]
m1[3,2]

# m2 <- matrix(
#   c(4,7,9,12,45,99), nrow = 3)
# m2

numbers1 <- rnorm(80, mean=0, sd=1)
numbers1
matr1 <- matrix(numbers1, nrow=20, ncol=4)
matr1

test <- data.frame(A=c(1,2,3),B=c("aB1","ab2","ab3"))





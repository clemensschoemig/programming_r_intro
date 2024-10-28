temp.min<-c(-2,-2,0,3,7,10,12,15,15,9,4,2,1,-4)
plot(temp.min, pch=3,cex=5, col="purple")
lines(lowess(temp.min, col="red"))
print()
#Saving Graphs to External Files
pdf("C:\\Users\\ADMIN\\Desktop\\aaaa.pdf", width=7,height=10)
plot(breaks~wool*tension, data=warpbreaks, fun="mean", main="Based on Mean", col="orange")
dev.off()
#save as jpg
jpeg('rplot.jpg')
x<-c(1,2,3,4,5)
y<-c(10,20,30,40,50)
plot(x,y)
dev.off()
#different Plots
x <- 1:100 
y <- 0.029*x + rnorm(100)
pdf("sample.pdf", 7, 5) 
plot(x, y, pch=19, col=rgb(0.5, 0.5, 0.5, 0.5), cex=1.5)
abline(lm(y ~ x)) 
dev.off()

png("sample.png", 490, 350) 
plot(x, y, pch=19, col=rgb(0.5, 0.5, 0.5, 0.5), cex=1.5) 
abline(lm(y ~ x)) 
dev.off()

bmp("sample.bmp", 490, 350) 
plot(x, y, pch=19, col=rgb(0.5, 0.5, 0.5, 0.5), cex=1.5) 
abline(lm(y ~ x)) 
dev.off()

tiff("sample.tiff", 490, 350) 
plot(x, y, pch=19, col=rgb(0.5, 0.5, 0.5, 0.5), cex=1.5) 
abline(lm(y ~ x)) 
dev.off()

#histogram
duration = faithful$eruptions 
histinfo<-hist(duration, main="Duration for Eruptions", xlab="Eruptions", ylab="Frequency")

hist(duration, main="Duration for Eruptions", xlab="Eruptions", ylab="Frequency", col="blue", breaks=10)
colors = c("red", "yellow", "green", "violet", "orange", "blue", "pink", "cyan")
hist(duration, main="Duration for Eruptions", xlab="Eruptions", ylab="Frequency", col=colors) 
hist(duration, main="Duration for Eruptions", xlab="Eruptions", ylab="Frequency", col=colors, break=20)











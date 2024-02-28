data <- read.csv("https://people.sc.fsu.edu/~jburkardt/data/csv/biostats.csv")
colnames(data) <- c("name","sex","age","height","weight")
plot(data$height,data$weight,col="lightblue",lwd=3,xlab="height",ylab="weight",main="relationship between 
     height and weight")
dev.print(pdf,"part_vi.pdf")



install.packages("babynames")
library(babynames)
baby_10 <- babynames[sample(nrow(babynames),size=10,replace=FALSE),]

barplot(baby_10$n,names.arg = baby_10$name,
        col=ifelse(baby_10$sex==F,"pink","lightblue")
        main="number of names by gender",xlab="name",ylab="proportion",
        cex.names=0.8,beside=TRUE)
legend("topright",legend=unique(baby_10$sex),fill = c("pink","lightblue"),title = "sex")

dev.print(pdf,"part_vii.pdf")


var1 <- seq(10,60,6)
var2 <- list(1:20,letters[1:20])
var3 <- matrix(rnorm(24),nrow=12)
var4 <- matrix(rep(c(4,6,4),3),nrow=3,byrow=T)
#save the data
save(var1,var2,var3,var4,file="myvar.RData")
#clean all variables on the global environment
rm(list=ls())

load("myvar.RData")
#to see the global environment
ls()

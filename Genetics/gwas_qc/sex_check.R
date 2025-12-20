Sex <- read.table("plink.sexcheck", header=T,as.is=T)

pdf("Sex_check.pdf")
hist(sex[,6],main="Sex", xlab="F")
dev.off()

pdf("Men_check.pdf")
male=subset(sex, sex$PEDSEX==1)
hist(male[,6],main="Men",xlab="F")
dev.off()

pdf("Women_check.pdf")
female=subset(sex, sex$PEDSEX==2)
hist(female[,6],main="Women",xlab="F")
dev.off()


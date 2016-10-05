install.packages("devtools")
libary(devtools)
install_github("ndphillips/yarrr", build_vignettes=TRUE)
library(yarrr)
head(pirates)
names(pirates)
str(pirates)
dim(pirates)
mean(pirates$age)
mean(pirates$height)
table(pirates$sex)
# mean of age by sex
aggregate(formula = age ~ sex, data=pirates, FUN=mean)

#plot of two continuous variables
plot(
  x=pirates$height,
  y=pirates$weight,
  main="My first scatterplot of pirate data",
  xlab="Height",
  ylab="Weight",
  pch=16,
  col=gray(.0,.1)
)


#plot of age by sword type
pirateplot(formula = age ~ sword.type,
           data = pirates,
           main = "Pirateplot of age by favorite sword"
)


t.test(formula = age ~ headband, data = pirates,
       alternative = two.sided)

cor.test(formula = ~height + weight, data=pirates)

tat.sword.lm < lm(formula = tattoos ~ sword.type, data=pirates)

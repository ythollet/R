#Exercice 1 - Importer les données
#1
df=read.csv("velov.csv",header=TRUE,dec=",",sep=";")

#2
summary(df)
class(df$status)
class(df$CodePostal)

#3
df$status=as.factor(df$status)
df$CodePostal=as.factor(df$CodePostal)
class(df$status)
class(df$CodePostal)

#4
df$bornes=ifelse(df$capacity==(df$bikes+df$stands),"OK","KO")
View(df)


#Exercice 2 - L'histogramme

#La fonction hist()

#1
hist(x=df$capacity,main="histogramme capacity")

#2
hist(x=df$capacity,main="histogramme capacity",breaks = 6)

#3
hist(x=df$capacity,main="histogramme capacity",breaks = 6,col="red")

#4
hist(x=df$capacity,main="histogramme capacity",breaks = 6,col="red",xlab = "Capacity")

#La fonction abline()
#5
abline(a=100,b=0,col="blue",lty=2)

#Les fonctions hist(), lines() et density()

#6  
hist(x=df$capacity,main="Distribution de \n la capacité des stations",col="red",xlab = "Capacity",probability = TRUE)

#7
lines(density(df$capacity),  lty = 2,
      col = "blue",
      lwd = 4)

#8
hist(x=df$capacity,main="Distribution de \n la capacité des stations",col="red",xlab = "Capacity",probability = TRUE,ylim =  c(0,0.08))
lines(density(df$capacity),  lty = 2,
      col = "blue",
      lwd = 4)

#Exercice 3 - Le boxplot

#1
boxplot(x=df$capacity,main="Boxplot de \n la capacité des stations")

#2
boxplot(x=df$capacity,main="Boxplot de \n la capacité des stations",horizontal = TRUE)

#3
boxplot(x=df$capacity,main="Boxplot de \n la capacité des stations",horizontal = FALSE,outline = FALSE)

#4
points(mean(df$capacity),pch=15,col="red")

#La fonction par()

#5
a=subset(df,CodePostal==69007)
b=subset(df,CodePostal==69008)

par(mfrow=c(1,2))
df7=boxplot(x=a$bikes,main="vélos disponibles de le 7e", ylim = c(0,40))
df8=boxplot(x=b$bikes,main="vélos disponibles de le 8e", ylim = c(0,40))

#6
par(1,1)
boxplot(formula=bikes~bonus,data=df,main="répartition des vélos en fonction de bonus")

#Les fonctions points() et tapply().

#7
means=tapply(X=df$bikes,INDEX = df$bonus,FUN=function(X)mean(X))
print(means)
points(means,pch=15,col="red")

#Exercice 4 - Le diagramme

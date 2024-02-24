
#EXERCICE 1

setwd("C:/Users/Utilisateur/Downloads")
getwd()

bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")

dim(bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)

#EXERCICE 2

#1
summary(bodies_karts)
summary(tires)
summary(gliders)
summary(drivers)

#2
plot(x=drivers$Weight,
     y=drivers$Acceleration,
     main= "Drivers : Weight / Acceleration")
#Il semble que les deux variables soient corrélées négativement
#Il y a autant de points mais ils sont superposés car certains drivers ont les mêmes statistiques

#3
cor(x=drivers$Weight,
    y=drivers$Acceleration)

#4
a=cov(x=drivers$Weight,
      y=drivers$Acceleration)
b=sd(drivers$Weight)*sd(drivers$Acceleration)
print(a/b)

#5
a=cov(x=drivers$Weight,
      y=drivers$Acceleration)
b=sd(drivers$Weight)*sd(drivers$Acceleration)
c=a/b
c=c*c
print(c)

#6
matriceCor = cor(drivers[ , - 1])
matriceCor = round(matriceCor , 2)
View(matriceCor)

#7
install.packages("corrplot")

#8
library(corrplot)
Corrélogramme = corrplot(matriceCor, method="circle")

#9
matriceCor = round(cor(tires[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

matriceCor = round(cor(bodies_karts[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

matriceCor = round(cor(gliders[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

# EXERCICE 3

#1
resultat = drivers[ , c("Driver" , "Weight")]
View(resultat)

#2
resultat = drivers[ 1:10 , c("Driver" , "Acceleration")]
View(resultat)

#3
resultat=drivers[,-c(5,7,9)]
View(resultat)

#4
resultat=drivers[,-c("Weight","Acceleration")]
View(resultat)

#5
resultat=drivers[,c("Driver","Acceleration","Weight")]
View(resultat)

#6
resultat=drivers[c(3,12,32),]
View(resultat)

#7
resultat=drivers[c(32,3,12),]
View(resultat)

#8
rang=order(drivers$Weight)
resultat=drivers[rang,c("Driver","Weight")]
View(resultat)

#9
rang=order(drivers$Acceleration,decreasing = TRUE)
resultat=drivers[rang,c("Driver","Acceleration")]
View(resultat)

#10
rang=order(drivers$Acceleration,drivers$Weight,decreasing = c(TRUE,FALSE))
resultat=drivers[rang,c("Driver","Weight","Acceleration")]
View(resultat)


# EXERCICE 4

#1
topDriver=subset(drivers,Acceleration==max(Acceleration))
topDriver[,c("Driver","Acceleration")]

#2
topDriver=subset(drivers,Acceleration==max(Acceleration))
topDriver[,c("Driver","Acceleration")]

topGlider=subset(gliders,Acceleration==max(Acceleration))
topGlider[,c("Glider","Acceleration")]

topTire=subset(tires,Acceleration==max(Acceleration))
topTire[,c("Tire","Acceleration")]

topBody=subset(bodies_karts,Acceleration==max(Acceleration))
topBody[,c("Body","Acceleration")]







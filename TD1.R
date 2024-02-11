#EX 1
a=10
b=5
A=7.2
B=10.1
resultat=a*b
resultat=A+B
rm(a,b,A,resultat)
print(resultat)

#EX 2

#1.a
vect=c(seq(1,5))
class(vect)
print(vect[3])

#1.b
v1=1:5
print(v1)

#2
v2=v1+3
print(v2)

#3
v3=1:6

#4
v4=v3^2
print(v4)

#5
v5=v4/2
print(v5)

#6
caractere=c("Lundi", "Mardi", "Mercredi", "Jeudi",
            "Vendredi", "Samedi", "Dimanche")
class(caractere)
print(c[2,7])

#7
vecteur=c(TRUE,FALSE)
class(vecteur)
print(vecteur)

#8
vecteur=c(1.3,5.2,1.3,5.6,9.4)
class(vecteur)
print(vecteur[-3])

#9
caractere=c("Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", 
            "Août", "Septembre", "Octobre", "Novembre", "Décembre")
class(c)
print(caractere[c(1:3)])

#10
vecteur=c(-1,-2,-5,-8)
class(vecteur)
print(vecteur[c(1,4)])

#11
vecteur=c("pasteque","melon","peche")
class(vecteur)
print(vecteur[-c(1,2)])

#12
vecteur=c(1,2,NA,4)
print(class(vecteur))

#LES FONCTIONS c(), seq(), length()

#1
a=c(1:10)
print(length(a))

#2
a=seq(0,20,2)
print(a)
print(length(a))

#3
a=seq(0,-5)
print(a)

#4
a=seq(5,50,5)
print(a)
print(length(a))

#5
a=seq(10,1,-1)
print(a)
print(length(a))

#6
a=seq(0,1,0.1)
print(a)
print(length(a))

#7
a=seq(5,-5,-1)
print(a)
print(length(a))

#8
a=seq(1,10,2)
print(a)
print(length(a))

#LES FONCTIONS c(), rep()

#1
a=rep(5,3)
print(a)

#2
a=rep(c("A","B","C"),3)
print(a)

#3
a=rep(c(1:3),3)
print(a)

#4
a=rep(c("TRUE","FALSE"),4)
print(a)

#5
rm(a)

#EXERCICE 3

#Les fonctions runif(), mean(), median(), min(), max()

#1
a=runif(5,0,1)
a
mean(a)
median(a)
min(a)
max(a)

#2
a=runif(10,-5,5)
a
mean(a)
median(a)
max(a)
min(a)

#3
a=runif(100,10,20)
a
mean(a)
median(a)
max(a)
min(a)

#4
a=runif(15,50,100)
a
mean(a)
median(a)
max(a)
min(a)

#Les fonctions rnorm(), mean(), sd(), hist(), quantile()

#1
a=rnorm(20,-2,3)
a
print(paste("moyenne: ",mean(a)))
print(paste("ecart-type: ",sd(a)))
hist(a)

#2
a=rnorm(2000,-2,3)
print(paste("moyenne :", mean(a)))
print(paste("ecart type :", sd(a)))
hist(a)

#3
a=rnorm(2000,0,1)
print(paste("moyenne :",mean(a)))
print(paste("ecart type :",sd(a)))
hist(a)

#4
a=rnorm(2000,0,0.25)
quantile(a,c(0.25,0.5,0.75))

#5
a=rnorm(2000,0,0.25)
quantile(a,(seq(0.1,1,0.1)))

#6
a=rnorm(2000,0,0.25)
quantile(a,(seq(0.01,1,0.01)))

#Les fonctions sum() , round()

#1
a=rnorm(3000,2400,300)
print(paste("moyenne :",mean(a),"€"))
print(paste("ecart type :",sd(a),"€"))

#2
a=rnorm(3000,2400,300)
print(paste("moyenne :",round(mean(a),2),"€"))
print(paste("ecart type :",round(sd(a),2),"€"))

#3
a=rnorm(3000,2400,300)
print(paste("masse salariale: ",round(sum(a),0),"€"))

#4
a=rnorm(3000,2400,300)
print(paste("salaire median: ",round(median(a),0)))

#5
a=rnorm(3000,2400,300)
quantile(a,c(0.99))

#6
a=rnorm(3000,2400,300)
quantile(a,0.2)

#Les fonctions sample(), table(), prop.table() , unique(), sort()

#1
a=seq(1,6,1)
sample(a,1)

#2
a=seq(1,6,1)
sample(a,12,TRUE)

#3
a=seq(1,6,1)
b=sample(a,12,TRUE)
unique(b)

#4
a=seq(1,6,1)
b=sample(a,12,TRUE)
sort(table(b),TRUE)

#5
a=seq(1,6,1)
b=sample(a,12,TRUE)
prop.table(table(b))

#6
a=seq(1,6,1)
simulation=sample(a,100000,TRUE)

#7
a=seq(1,6,1)
simulation=sample(a,100000,TRUE)
sort(prop.table(table(simulation)),TRUE)

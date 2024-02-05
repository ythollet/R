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
vect=c(seq(1,5))
class(vect)
print(vect[3])

v1=1:5
print(v1)

v2=v1+3
print(v2)

v3=1:6

v4=v3^2
print(v4)

v5=v4/2
print(v5)

caractere=c("Lundi", "Mardi", "Mercredi", "Jeudi",
            "Vendredi", "Samedi", "Dimanche")
class(caractere)
print(c[2,7])

vecteur=c(TRUE,FALSE)
class(vecteur)
print(vecteur)

vecteur=c(1.3,5.2,1.3,5.6,9.4)
class(vecteur)
print(vecteur[-3])

caractere=c("Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", 
            "Août", "Septembre", "Octobre", "Novembre", "Décembre")
class(c)
print(caractere[c(1:3)])

vecteur=c(-1,-2,-5,-8)
class(vecteur)
print(vecteur[c(1,4)])

vecteur=c("pasteque","melon","peche")
class(vecteur)
print(vecteur[-c(1,2)])

vecteur=c(1,2,NA,4)
print(class(vecteur))

#LES FONCTIONS c(), seq(), length()

a=c(1:10)
print(length(a))

a=seq(0,20,2)
print(a)
print(length(a))

a=seq(0,-5)
print(a)

a=seq(5,50,5)
print(a)
print(length(a))

a=seq(10,1,-1)
print(a)
print(length(a))

a=seq(0,1,0.1)
print(a)
print(length(a))

a=seq(5,-5,-1)
print(a)
print(length(a))

a=seq(1,10,2)
print(a)
print(length(a))

#LES FONCTIONS c(), rep()

a=rep(5,3)
print(a)

a=rep(c("A","B","C"),3)
print(a)

a=rep(c(1:3),3)
print(a)

a=rep(c("TRUE","FALSE"),4)
print(a)


rm(a)

#EXERCICE 3

#Les fonctions runif(), mean(), median(), min(), max()


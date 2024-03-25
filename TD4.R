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

#Les fonctions barplot() et table().
#1
effectif=table(df$bonus)
barplot(height=effectif,main = "répartition station bonus")

#2
effectif=table(df$bonus)
barplot(height=effectif,main = "répartition station bonus",horiz = TRUE)

#Les fonctions barplot() ,prop.table() et legend().

#3
frequence = prop.table(effectif)
barplot(height = frequence,
        main = "Répartition en % du nombre \n de station bonus",
        horiz = TRUE)

#4
effectif = table(df$banking, df$bonus)
print(effectif)
barplot(height = effectif,
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?")
#On remarque qu'on ne sait pas distinguer les deux modalités car il n'y a pas de légende.

#5
#Calcul des pourcentages
frequence = prop.table(x = effectif)
barplot(height = frequence,
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?",
        col = c("red","green"))

#Préparer les labels
legend_labels <- colnames(frequence)
#Ajouter une légende
legend(x = "topright", 
       legend = legend_labels, 
       fill  = c("red","green"))

#Afficher les fréquences pour vérifier le graphique
print(frequence)

#6

#Calcul des pourcentages colonnes
frequence = prop.table(x = effectif, margin = 2)
barplot(height = frequence,
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?",
        col = c("red","green"))

#Préparer les labels
legend_labels <- colnames(frequence)
#Ajouter une légende
legend(x = "topright", 
       legend = legend_labels, 
       fill  = c("red","green"))

#Afficher les fréquences pour vérifier le graphique
print(frequence)

#7

#Calcul des pourcentages colonnes
frequence = prop.table(x = effectif, margin = 2)
barplot(height = frequence,
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?",
        col = c("red","green"),
        beside = TRUE)

#Préparer les labels
legend_labels <- colnames(frequence)
#Ajouter une légende
legend(x = "topright", 
       legend = legend_labels, 
       fill  = c("red","green"))

#Afficher les fréquences pour vérifier le graphique
print(frequence)

#8
pie(x = effectif,
    main = "Répartition du nombre \n de station bonus",
    col = c("yellow","green"))

#9
etiquette = paste(rownames(effectif),"\n",effectif)
pie(x = effectif,
    main = "Répartition du nombre \n de station bonus",
    col = c("yellow","green"),
    labels = etiquette)

#10
effectif=table(df$CodePostal)
tri=sort(x=effectif,decreasing = TRUE)
top10=tri[1:10]
barplot(height = top10,las=2,col=palette())

#11
effectif=table(df$CodePostal)
tri=sort(x=effectif,decreasing = TRUE)
top10=tri[1:10]
barplot(height = top10,las=2,col=colors())

#12
dev.print(device = png,file="graph.png",width=600)



# Exercice 5 - Nuage de points

#La fonction plot().

#1
plot(x = df$stands, y = df$capacity)

#2
plot(x=df$stands,y=df$capacity,xlim=c(0,60),ylim=c(0,60))

#3
df$bornes=as.factor(df$bornes)
plot(x=df$stands,y=df$capacity,xlim=c(0,60),ylim=c(0,60),col=df$bornes,pch=19)
legend(x="topright",legend = levels(df$bornes),col=palette(),pch=19)

#4
mycolors = c("red", "blue", "green")  
df$bornes=as.factor(df$bornes)
plot(x=df$stands,y=df$capacity,xlim=c(0,60),ylim=c(0,60),col=mycolors[df$bornes],pch=19)
legend(x="topright",legend = levels(df$bornes),col=mycolors,pch=19)

#5
moy_stands=mean(df$stands)
moy_capacity=mean(df$capacity)
points(x=moy_stands,y=moy_capacity,pch=15,cex = 2,col="green")




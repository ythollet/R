# EXERCICE 1
#1
df=read.csv("C:/Users/Utilisateur/Downloads/fao.csv",header=TRUE,dec=",",sep=";")

#2
nrow(df)

#3
summary(df)


# EXERCICE 2
#1
mean(df$Dispo_alim)

#2
sum(df$Population,na.rm=TRUE)

#3
sd(df$Import_viande,TRUE)
sd(df$Export_viande,TRUE)

#4
median(df$Prod_viande,TRUE)

#5
quantile(df$Dispo_alim,c(0.25,0.5,0.75))

#6
a=seq(0.01,0.99,0.01)
quantile(df$Import_viande,a)

# EXERCICE 3
#1
a=order(df$Population)
a[1:5]
df$Nom[a[1:5]]

#2
a=order(df$Population,decreasing = TRUE)
b=a[1:5]
df$Nom[b]

#3
a=order(df$Prod_viande,decreasing=TRUE)
b=a[1:5]
df$Nom[b]

#4
a=order(df$Import_viande,decreasing = TRUE)
b=a[1:5]
df$Nom[b]

#5
a=subset(df,Dispo_alim>=2300)
a[,c("Nom","Dispo_alim")]
nrow(a)

#6
a=subset(df,Dispo_alim>3500 & Import_viande>1000)
a["Nom"]

#7
subset(df,Nom %in% c("France","Belgique"))


# EXERCICE 4

#1
df$part_export=df$Export_viande/df$Prod_viande

#2
df$dispo_alim_pays=df$Dispo_alim*df$Population

#3
write.table(df,"ExportTp2.csv",";")
write.table(df, "C:/Users/Utilisateur/Downloads/ExportTp2.csv",sep=";", row.names = FALSE)

#4
sum(sum(df$Dispo_alim,na.rm=TRUE)*df$Population,na.rm=TRUE)

#5
sum(sum(df$Dispo_alim,na.rm=TRUE)*df$Population,na.rm=TRUE)/2300

# EXERCICE 5

#1
plot(df$Prod_viande,df$Export_viande)

#2
cor(df$Prod_viande,df$Export_viande,use = "complete.obs")

#3
matrice=round(cor(df[-1,-1],use = "complete.obs"),2)
View(matrice)

#4
install.packages("corrplot")

#5
library(corrplot)
matrice=round(cor(df[-1,-1],use = "complete.obs"),2)
corrplot(matrice)

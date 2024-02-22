# EXERCICE 1
#1
df=read.csv("L:/BUT/SD/Promo 2023/ythollet/R/data frame/fao.csv",header=TRUE,dec=",",sep=";")

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
a=subset(df,Nom %in% c("France","Belgique"))



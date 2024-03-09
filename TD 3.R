# EXERCICE 1
# 1
install.packages("readxl")
library(readxl)
df=read_excel(path="pokemon.xlsx",sheet = "pokemon")

#2
dim(df)

#3
summary(df)

#4
df$is_legendary <-as.factor(df$is_legendary)
df$generation <-as.factor(df$generation)
df$type <-as.factor(df$type)

#5
summary(df)


# EXERCICE 2
#1
df$attack_group=ifelse(df$attack>mean(df$attack),yes="attack+","attack-")
df$attack_group=as.factor(df$attack_group)
View(df)

#2
df$water_fire=ifelse(df$type %in%c("water","fire"),yes="yes",no="no")
View(df)

#3
df$best=ifelse(df$attack > c(quantile(df$attack,probs=0.75)) & df$defense > c(quantile(df$defense,probs=0.75)) & df$speed > c(quantile(df$speed,probs=0.75)) ,yes="yes",no="no")
View(df)


#La fonction is.na().
#1
requete=subset(df,is.na(weight_kg))
View(requete)

#1
requete=subset(df,!is.na(weight_kg))
View(requete)

#2
med_weight_kg= median(df$weight_kg,na.rm = TRUE)
df$weight_kgNa=ifelse(is.na(df$weight_kg),yes=med_weight_kg,no=df$weight_kg)

med_height_m= median(df$height_m,na.rm = TRUE)
df$height_mNA=ifelse(is.na(df$height_m),yes=med_height_m,no=df$height_m)  

View(df)



#La fonctions cut()
#1
df$weight_group=cut(df$weight_kg,breaks=3,labels=c("léger","moyen","lourd"))
View(df)

#2
df$height_m_group=cut(df$height_m,breaks = c(0,1,2,3,max(df$height_m,na.rm=TRUE)))
View(df)

#3
df$defense_group=cut(df$defense,breaks=c(quantile(df$defense,na.rm=TRUE)))
View(df)


#Exercice 3 - Agregation
#1
aggregate(x=attack~type,data=df,FUN=function(x)mean(x))

#2
aggregate(x=attack~generation+type,data=df,FUN=function(x)median(x))

#3
aggregate(x=pokedex_number~type,data=df,FUN=function(x)length(x))

#4
aggregate(x=speed~generation+type,data=df,FUN=function(x)c(moy=mean(x),mediane=median(x),effectif=length(x)))

#1
iris
class(iris)

#2
View(iris) # LE V DOIT ETRE EN MAJUSCULE

#3
nrow(iris)

#4
ncol(iris)

#5
colnames(iris)

#6
summary(iris)

#7
iris[ ,c("Sepal.Length","Species")]

#9
iris[c(100,103,105),]

#11
mean(iris$"Sepal.Length")

#12
median(iris$"Sepal.Width")

#13
sd(iris$"Petal.Length")

#14
quantile((iris$"Petal.Width"),seq(0.1,1,0.1))

# EXERCICE 2

#1
dfAnime = read.csv("L:/BUT/SD/Promo 2023/ythollet/R/TP-1 anime.csv",header=TRUE,sep=",",dec=".")
dfManga = read.csv("L:/BUT/SD/Promo 2023/ythollet/R/TP-1 manga.csv",header=TRUE,sep=",",dec=".")

#1 (2)
dfAnime = read.csv("C:/Users/Utilisateur/Downloads/TP-1 anime.csv",header=TRUE,sep=",",dec=".")
dfManga = read.csv("C:/Users/Utilisateur/Downloads/TP-1 manga.csv",header=TRUE,sep=",",dec=".")
class(dfManga)
class(dfAnime)

#2
View(dfManga)
View(dfAnime)

#3
dim(dfManga)
dim(dfAnime)

#4
mean(dfManga$Score)
mean(dfAnime$Score)

#5
sum(dfManga$Vote)
sum(dfAnime$Vote)

#6
sd(dfManga$Score)
sd(dfAnime$Score)

#7
quantile(dfManga$Score,seq(0.1,1,0.1))

# Les fonctions subset(), table() et prop.table()

# Filtre sur les Animes

#1
a=subset((dfManga),Score>9)
nrow(a)

#2
a=subset(dfManga,sum(Vote)>200000)
nrow(a)

#3
a=subset(dfManga,sum(Vote)>200000 & Score>=8)
nrow(a)

#4
a=subset(dfManga,Score>=7 & Score<=8)
nrow(a)

# Filtre sur les Animes

#1
a=table(dfAnime$Rating)
a
length(a)
prop.table(a)

#2
a=subset(dfAnime,Rating== "R - 17+ (violence & profanity)")
nrow(a)

#3
a=subset(dfAnime,(Rating=="R - 17+ (violence & profanity)" & Score>=8))
nrow(a)

#4
a=subset(dfAnime,Rating!="R - 17+ (violence & profanity)")
nrow(a)

#5
a=subset(dfAnime,Rating %in% c("PG - Children","G - All Ages"))
nrow(a)

#6
a=subset(dfAnime,!Rating %in% c("PG - Children","G - All Ages"))
nrow(a)

#7
a=subset(dfAnime,Score>=9 | Vote>=400000)
nrow(a)

# Les fonctions rbind() et write.table()

#1
dfAnime=dfAnime[,c("Title","Score","Vote","Ranked")]
dfManga=dfManga[,c("Title","Score","Vote","Ranked")]

#2
dfAnime$Type="Anime"
dfManga$Type="Manga"

#3
dfConcat=rbind(dfAnime,dfManga)
View(dfConcat)

#4
write.table(dfConcat,file="C:/Users/Utilisateur/Downloads/test.csv",";")

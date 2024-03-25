#1
par(c(1,1))
plot(NA, xlim=c(-5, 5), ylim=c(0, 1), xlab="X", 
     ylab="Densité de probabilité", 
     main="Densités de probabilité \n de lois normales")

#2
# Tracer la densité de probabilité pour chaque simulation
moyennes <- c(0, 0, 0, -2)
sigmas <- c(0.45, 1, 2.25, 0.7)
colors <- c("red", "blue", "green", "orange")
legend_labels <- c()
for (i in 1:length(moyennes)) {
  serie = rnorm(n = 1000, 
                mean = moyennes[i], 
                sd = sigmas[i])
  lines(density(serie), col = colors[i])
  legend_labels <- c(legend_labels, paste("m =", moyennes[i], ",", "s =", sigmas[i]))
}

# Ajouter une légende
legend("topright", legend=legend_labels, col=colors, lwd=2, cex=0.8)


#3
serie=rnorm(n=10000,mean = ,sd=1)

#4
hist(serie, main = "loi normal centrée-réduite",
     probability = TRUE)
lines(density(serie))

#5
median(serie)

#6
quantile(serie)

#7
probs=seq(0.01,0.99,0.01)
quantile(serie,probs)

quantile(serie,0.95)


#Les commandes pnorm() et qnorm().

#8
qnorm(p = 0.95, mean = 0, sd = 1)
pnorm(q = 1.644854, mean = 0, sd = 1)

#9
qnorm(p=0.975,mean=0,sd=1)

#10
pnorm(q=1.96,mean=0,sd=1)


#Exercice 2 - Construire la table de loi normale

#1
indices_lignes = seq(from = 0, to = 3.9, by = 0.1)
all_probas = c()
for(i in indices_lignes){
  proba=pnorm(q=i,mean=0,sd=1)
  all_probas=c(all_probas,proba)
  all_probas=round(all_probas,4)
}


#2

indices_colones = seq(from = 0.00, to = 0.09, by = 0.01)
indices_lignes = seq(from = 0, to = 3.9, by = 0.1)

#On crée un objet résultat vide.
resultat = NULL
#On parcourt les indices colonnes
for (j in indices_colones) {
  #on crée un vecteur vide pour ajouter les probas au fur et à mesure
  all_probas = c()
  #On parcourt les indices lignes
  for (i in indices_lignes){
    quantile = i + j
    proba = pnorm(q = quantile, mean = 0, sd = 1)
    #on ajoute la nouvelle proba au vecteur existant
    all_probas = c(all_probas,proba)
    all_probas = round(all_probas,digits = 4)
  }
  #On ajoute une colonne au resultat
  resultat = cbind(resultat,all_probas)
}

#3
class(resultat)
table = data.frame(resultat)
colnames(table) = indices_colones
rownames(table) = indices_lignes
View(table)



# Exercice 3 - Simulation d'une population

#1
population=rnorm(1e7,mean =171,sd=9)

#2
mean(population)
sd(population)

#3
hist(population)

#4
#observé
pop190 = population[population < 190]
length(pop190)
length(pop190) / length(population)

#en théorie
pnorm(q = 190, mean=moyenne_pop, sd=sd_pop)*1e7

#5
#observé
pop200 = population[population >= 200]
length(pop200)
length(pop200) / length(population)

#en théorie
#proba de P( X < 200cm)
proba_inf_200 = pnorm(q = 200, mean=moyenne_pop, sd=sd_pop)
#proba de P( X >= 200cm)
1 - proba_inf_200


# Exercice 4 - Simulation d'échantillon

#1



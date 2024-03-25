#1
salaire_net_cadre=function(salaire_brut)
        {salaire_net_avant_impot=salaire_brut*0.75
          return (salaire_net_avant_impot)}

salaire_net_cadre(salaire_brut = 3000)

#2
salaire_net_cadre=function(salaire_brut=2500)
{salaire_net_avant_impot=salaire_brut*0.75
return (salaire_net_avant_impot)}

salaire_net_cadre(salaire_brut = 3000)

#3
salaire_net_cadre=function(salaire_brut=2500,temps_de_travail=1)
{salaire_net_avant_impot=salaire_brut*temps_de_travail
return (salaire_net_avant_impot)}

#Test de la fonction
salaire_net_cadre(salaire_brut = 3000,
                  temps_de_travail = 0.8)




# La commande if() {}

#4
salaire_net_cadre=function(salaire_brut=2500,temps_de_travail=1){
                  if(!is.numeric(salaire_brut)){
                    return("Erreur :  le salaire brut doit être une valeur numérique")
                    
                  }
                  salaire_net_avant_impot=salaire_brut*temps_de_travail
                  return (salaire_net_avant_impot)}
#Test de la fonction
salaire_net_cadre(salaire_brut = "2000€")
salaire_net_cadre(salaire_brut = 2000)



#5
salaire_net_cadre=function(salaire_brut=2500,temps_de_travail=1){
  if(!is.numeric(salaire_brut)){
    return("Erreur :  le salaire brut doit être une valeur numérique")}
  
  if(!is.numeric(temps_de_travail) & temps_de_travail<0 & temps_de_travail>1){
    return("Erreur :  le temps de travail doit être une valeur numérique comprise entre 0 et 1")}
  
  salaire_net_avant_impot=salaire_brut*temps_de_travail
  return (salaire_net_avant_impot)}

#Test de la fonction
salaire_net_cadre(salaire_brut = 2000, temps_de_travail = "100%")
salaire_net_cadre(salaire_brut = 2000, temps_de_travail = 0.8)
salaire_net_cadre(salaire_brut = 2000, temps_de_travail = 100)


#6
salaire_net=function(salaire_brut=2500,temps_de_travail=1,statut){
  if(!is.numeric(salaire_brut)){
    return("Erreur :  le salaire brut doit être une valeur numérique")}
  
  if(!is.numeric(temps_de_travail) & temps_de_travail<0 & temps_de_travail>1){
    return("Erreur :  le temps de travail doit être une valeur numérique comprise entre 0 et 1")}
  
  if(!statut %in% c("cadre","non cadre")){
    return("erreur argument statut")
  }
  
  if(statut=="cadre"){
    salaire_net_avant_impot=salaire_brut*temps_de_travail*0.75
  }
  
  else{
    salaire_net_avant_impot=salaire_brut*temps_de_travail*0.78
  }
  
  
  return (salaire_net_avant_impot)}

#Test de la fonction
salaire_net(salaire_brut = 2000, statut = "cadre")
salaire_net(salaire_brut = 2000, statut = "non cadre")
salaire_net(salaire_brut = 2000, statut = "technicien")



#La commande else if() {}

#7
salaire_net=function(salaire_brut=2500,temps_de_travail=1,statut){
  if(!is.numeric(salaire_brut)){
    return("Erreur :  le salaire brut doit être une valeur numérique")}
  
  if(!is.numeric(temps_de_travail) & temps_de_travail<0 & temps_de_travail>1){
    return("Erreur :  le temps de travail doit être une valeur numérique comprise entre 0 et 1")}
  
  if(!statut %in% c("cadre","non cadre")){
    return("erreur argument statut")
  }
  
  if(statut=="cadre"){
    salaire_net_avant_impot=salaire_brut*temps_de_travail*0.75
  }
  
  else{
    salaire_net_avant_impot=salaire_brut*temps_de_travail*0.78
  }
  
  if(salaire_net_avant_impot<=1591){
    taux=0}
  if(salaire_net_avant_impot<=2006){
    taux=0.029}
  if(salaire_net_avant_impot<=3476){
    taux=0.099}
  if(salaire_net_avant_impot<=8557){
    taux=0.20}
  if(salaire_net_avant_impot>=8857){
    taux=0.43}
  
  salaire_net_apres_impot=salaire_net_avant_impot*(1-taux)
  
  return (salaire_net_apres_impot)}

#7 BIS
salaire_net = function(salaire_brut = 2500,temps_travail = 1, statut) {
  
  if (!is.numeric(salaire_brut)) {
    return("Erreur :  le salaire brut doit être une valeur numérique")
  }
  
  if (is.numeric(temps_travail) & (temps_travail >= 0) & (temps_travail <= 1)) {
    return("Erreur :  le temps de travail doit être une valeur numérique entre 0 et 1")
  }
  
  if (!statut %in% c("cadre","non cadre")) {
    return("Erreur :  le statut doit être cadre ou non cadre")
  }
  
  if (statut == "cadre") {
    salaire_net_avant_impot = salaire_brut * temps_travail * 0.75
  } else {
    salaire_net_avant_impot = salaire_brut * temps_travail * 0.78
  }
  
  if (salaire_net_avant_impot <= 1591) {
    salaire_net_apres_impot <- salaire_net_avant_impot
  } else if (salaire_net_avant_impot <= 2006) {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.029)
  } else if (salaire_net_avant_impot <= 3476) {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.099)
  } else if (salaire_net_avant_impot <= 8557) {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.20)
  } else {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.43)
  }
  
  return(salaire_net_apres_impot) 
  
  
#8
shifumi=function(){
  # Demander à l'utilisateur de saisir une valeur
  choix_utilisateur=readline(prompt = "Choisissez entre pierre, papier ou ciseaux : ")
  
  # Vérifier si l'utilisateur a saisi une valeur valide
  if(choix_utilisateur %in% c("pierre","papier","ciseaux")){
    # Simuler un choix aléatoire pour l'ordinateur
    choix_ordi=sample(c("pierre","papier","ciseaux"),1)
    
    # Afficher les choix de l'utilisateur et de l'ordinateur
    cat("Votre choix:",choix_utilisateur,"\n")
    cat("choix ordi:",choix_ordi,"\n")
    
    # Retourner le résultat du jeu
    if (choix_utilisateur==choix_ordi){
      return("Egalité")}
    
    else if((choix_utilisateur=="pierre" & choix_ordi=="ciseaux")|
           (choix_utilisateur=="papier" & choix_ordi=="pierre")|
           (choix_utilisateur=="ciseaux" & choix_ordi=="papier")){
            return("Vous avez gagné")}
    
    else{
      return("L'ordi a gagné")
    
    }else{
      return("Choix inavlide")
    }     
        }
    
#Test de la fonction
shifumi()
      


# Exercice 2 - Création des boucles

#1
resultat=0
for (i in c(1,2,3,4,5)){
  resultat=resultat+i
  print(paste("le resultat est ",resultat))
}

#2
somme=0
i=0
while(somme<=50){
  somme=somme+i
  print(paste("la somme est ",somme,";i=",i))
  i=i+1
}

#3 
for(i in colnames(df)){
  print(paste("la colone",i,"est de type ",class(df[,i])))
}

#4
i=0
while(i<=ncol(df)){
  print(paste("la colone",i,"est de type ",class(df[,i])))  
  i=i+1
}

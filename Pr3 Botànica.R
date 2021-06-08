#PREGUNTA 3
library(ggplot2)
Alldata <- read.csv("InformePr3Botanica.csv", sep=";", stringsAsFactors=TRUE)
#Sumo quantes espècies hi ha a cada parcel·la
S1 <- sum(Alldata$Parcella == "1")
S2 <- sum(Alldata$Parcella == "2")
S3 <- sum(Alldata$Parcella == "3")
S4 <- sum(Alldata$Parcella == "4")
S5 <- sum(Alldata$Parcella == "5")
S6 <- sum(Alldata$Parcella == "6")
#Sumo quants individus hi ha a cada parcel·la
N1 <- sum(Alldata$Nombre[Alldata$Parcella == "1"])
N2 <- sum(Alldata$Nombre[Alldata$Parcella == "2"])
N3 <- sum(Alldata$Nombre[Alldata$Parcella == "3"])
N4 <- sum(Alldata$Nombre[Alldata$Parcella == "4"])
N5 <- sum(Alldata$Nombre[Alldata$Parcella == "5"])
N6 <- sum(Alldata$Nombre[Alldata$Parcella == "6"])
#Calculo riquesa específica D=(S-1/ln(N))
D1 <- round((S1-1)/log(N1), digits = 2)
D2 <- round((S2-1)/log(N2), digits = 2)
D3 <- round((S3-1)/log(N3), digits = 2)
D4 <- round((S4-1)/log(N4), digits = 2)
D5 <- round((S5-1)/log(N5), digits = 2)
D6 <- round((S6-1)/log(N6), digits = 2)
#Data per fer el plot
Diversitat <- c(D1, D2, D3, D4, D5, D6)
Distància <- c(0,5,10,15,20, 25)
DistDiv <- data.frame (Distància, Diversitat)
#Plot:
ggplot (DistDiv, aes (Distància, Diversitat)) + geom_line(color="chartreuse3") + geom_point(size=3, shape=20, fill="white")+ theme_light() + xlim (0,25) + ylim (0,3.5) + xlab("Distància al camí (m)") + ylab("Diversitat específica") + labs(title = "Distància al camí en vers la diversitat específica", subtitle = "M del Mar Azemar, Botànica, 2020/21") + theme(plot.title = element_text(hjust = 0.5, size = 15, face = "bold"), plot.subtitle = element_text(hjust = 0.5)) + stat_smooth(formula = y ~ x, method = 'lm', color = "aquamarine3", se = FALSE)



        
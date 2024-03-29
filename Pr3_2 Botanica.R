#Plot:
library(ggplot2)
Alldata <- read.csv("InformePr3Botanica.csv", sep=";", stringsAsFactors=TRUE)
Distancia <- factor(Alldata$Dist�ncia.al.cam�..m.)
ggplot(Alldata, aes(x=Distancia, y=Nombre, group = Esp�cie, colour =Esp�cie )) + geom_line()  + geom_point(size=3, shape=20, fill="white") + theme_light() + labs(title = "Dist�ncia al cam� en vers el nombre d'individus per esp�cies:", subtitle = "M del Mar Azemar, Bot�nica, 2020/21") + xlab("Dist�ncia al cam� (m)") + 
theme(plot.title = element_text(hjust = 0.5, size = 15, face = "bold"), plot.subtitle = element_text(hjust = 0.5)) + ylab("Nombre d'individus") + ylim(0,50)

         
               

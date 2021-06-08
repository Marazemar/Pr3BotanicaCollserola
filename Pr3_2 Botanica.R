#Plot:
library(ggplot2)
Alldata <- read.csv("InformePr3Botanica.csv", sep=";", stringsAsFactors=TRUE)
Distancia <- factor(Alldata$Distància.al.camí..m.)
ggplot(Alldata, aes(x=Distancia, y=Nombre, group = Espècie, colour =Espècie )) + geom_line()  + geom_point(size=3, shape=20, fill="white") + theme_light() + labs(title = "Distància al camí en vers el nombre d'individus per espècies:", subtitle = "M del Mar Azemar, Botànica, 2020/21") + xlab("Distància al camí (m)") + 
theme(plot.title = element_text(hjust = 0.5, size = 15, face = "bold"), plot.subtitle = element_text(hjust = 0.5)) + ylab("Nombre d'individus") + ylim(0,50)

         
               

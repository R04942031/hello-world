library(stats)
library(dplyr)
library(ggplot2)
library(ggthemes)
data <- read.csv("/home/naiyun/Documents/DM/R/race_accident.csv")


#ggplot(data , aes(x=InjuryAtWork,y =Accident,fill = InjuryAtWork)) +
#  geom_bar(stat="identity")+
#  #coord_polar(theta="y")+
#scale_colour_excel() +
#  theme_solarized(light = FALSE)+
#theme_void()
#  ylab('Ratio') +
#  ggtitle('Relation between  InjuryAtWork and Accident (2009) ')

ggplot(data , aes(x=Month,group = 1)) +
  geom_line(aes(y = a),colour = "#FF3366") +
  geom_line(aes(y = b),colour = "orange")+
  geom_line(aes(y = c),colour = "yellow") +
  geom_line(aes(y = d),colour = "#009E73")+
  geom_line(aes(y = e),colour = "#56B4E9") +
  geom_line(aes(y = f),colour = "#9966FF")+  
  #coord_polar(theta="y")+
  #scale_colour_excel() +
  theme_solarized(light = FALSE)+
  #theme_void()
  ylab('Number of Suicide case ') +
  ggtitle('Suicide cases each month ')

#DeathRec<-read.csv("DataMining2016/DeathRecords2014/DeathRecords.csv",stringsAsFactors = F,header = T)

#Marital_table<-read.csv("DataMining2016/DeathRecords2014/MaritalStatus.csv",stringsAsFactors = F,header = T)

#ageRecode12<-read.csv("DataMining2016/DeathRecords2014/AgeRecode12.csv",stringsAsFactors = F,header = T)
#race<-read.csv("DataMining2016/DeathRecords2014/Race.csv",stringsAsFactors = F,header = T)

#gunDeath<-DeathRec %>%
#  filter(Icd10Code == 'W32'|Icd10Code =='W33'|Icd10Code =='W34'|Icd10Code =='X72'|Icd10Code =='X73'|Icd10Code =='X74'|Icd10Code =='X93'|Icd10Code =='X94'|Icd10Code =='X95'|Icd10Code =='Y22'|Icd10Code =='Y23'|Icd10Code =='Y24'|Icd10Code =='Y364' )

#gunDeath<-gunDeath %>%
#  filter(Race==1|Race==2) 


#ByAgeRecode12<- gunDeath%>%
#  group_by(AgeRecode12,Sex)%>%
#  summarise(fre=n())

#ggplot(ByAgeRecode12,aes(x=factor(ageRecode12[[2]]),y=fr?e,fill=sex))+
#  geom_bar(stat="identity")+
#  scale_x_discrete(name="AgeRecode")+
#scale_y_discrete(name="Percentage%",breaks=seq(0, 40, by = 2))+
#  labs(title="Percentage of Suicide Cases \n per Education Level in 2014")


#CHASEE Boxplot, White vs. Non-White
mydata<-read.csv(file.choose(),header=T)
library(ggplot2)
mydata
myplot<-ggplot(data=mydata, aes(x=factor(year), y=test, fill=race))+
  geom_boxplot() + 
  scale_x_discrete(breaks=c(2004,2005,2006,2007,2008,2009,
                            2010,2011,2012,2013),
                   labels=c("04","05","06","07","08","09",
                             "10","11","12","13")) +
  scale_y_continuous(breaks=c(0,200,400,600,800,1000),
                     labels=c("0", "200", "400", "600", "800", "1000")) +
  labs(title="Boxplot of CAHSEE, White vs. Non-White", x="", y="") 
print(myplot)

#CAHSEE Boxplpot, TD vs. SPED
mydata<-read.csv(file.choose(),header=T)
library(ggplot2)
mydata
myplot<-ggplot(data=mydata,aes(x=factor(year),y=test,fill=sped)) +
  geom_boxplot() +
  scale_x_discrete(breaks=c(2004,2005,2006,2007,2008,2009,
                              2010,2011,2012,2013),
                     labels=c("04","05","06","07","08","09",
                              "10","11","12","13")) +
  scale_y_continuous(breaks=c(0,200,400,600,800,1000),
                       labels=c("0", "200", "400", "600", "800", "1000")) +
  labs(title="Boxplot of CAHSEE, TD vs. SPED", x="", y="") 
print(myplot)

#Asian inclusion distribution in 2004
mydata<-read.csv(file.choose(),header=T)
library(ggplot2)
myplot<-ggplot(mydata,aes(x=race,y=inclusion_time)) +
  geom_boxplot(fill="cornflowerblue", color="black") +
  theme(axis.line=element_line(color="black"),
panel.grid.major=element_blank(),
panel.grid.minor=element_blank(),
panel.border=element_blank(),
panel.background=element_blank())
print(myplot)

#Asian inclusion distribution in 2013
mydata<-read.csv(file.choose(),header=T)
library(ggplot2)
myplot<-ggplot(mydata,aes(x=race,y=inclusion_time)) +
  geom_boxplot(fill="cornflowerblue", color="black")
print(myplot)

#Inclusion time among white vs. nonwhite in 2004
mydata<-read.csv(file.choose(),header=T)
library(ggplot2)
myplot<-ggplot(data=mydata,aes(x=inclusion_time, fill=race)) +
  geom_density(alpha=.3) +
print(myplot)

#inclusion time among white vs. nonwhite in 2013
mydata<-read.csv(file.choose(),header=T)
myplot2<-ggplot(data=mydata,aes(x=inclusion_time, fill=race)) +
  geom_density(alpha=.3) +
print(myplot)

#inclusion time among SPED vs. TD in 2013
mydata<-read.csv(file.choose(),header=T)
library(ggplot2)
mydata
myplot<-ggplot(data=mydata,aes(x=inclusion_time, fill=sped)) +
  geom_density(alpha=.3) +
  labs(title="Density plots of inclusion time, grouped by sped (2013)", x="", y="")
print(myplot)

#########

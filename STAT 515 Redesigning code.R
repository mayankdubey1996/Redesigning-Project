library(ggplot2)
data = data.frame(countries = c('Sweden', 'France','United States','China','Kenya','India'),
                  mobile_banking = c(99.7,96.6,93.6,78.9,74.7,53.1),
                  card_payment = c(92.7,76,67.1,17.3,11.2,10.7),
                  paying_by_mobile = c(34,11.9,31.8,14.3,55.3,4.7),
                  paying_by_internet = c(74.6,44.5,64.7,19.2,4.7,1.2))

plot1 = ggplot(data,aes(x = reorder(countries,mobile_banking),y=mobile_banking,fill=countries)) +
  geom_bar(color="black",stat = "identity") +
  labs(x = "Countries", y = "Percentage",title = "Percentage of people that use mobile banking in below countries" )+
  scale_fill_manual(values=c("#a6bddb","#2b8cbe", "#f1eef6","#d0d1e6","#045a8d","#74a9cf"))+
  geom_text(aes(label=mobile_banking), position=position_dodge(width=0.5), vjust=-0.25)
plot1  



plot2 = ggplot(data,aes(x=reorder(countries,card_payment),y=card_payment,fill=countries)) +
  geom_bar(color="black",stat = "identity") +
  labs(x = "Countries", y = "Percentage",title = "Percentage of people do card payment in 6 countries" )+
  scale_fill_manual(values=c("#a1d99b","#31a354","#edf8e9","#c7e9c0","#006d2c","#a1d99b"))+
  geom_text(aes(label=card_payment), position=position_dodge(width=0.5), vjust=-0.25)
plot2


plot3 = ggplot(data,aes(x=reorder(countries,paying_by_mobile),y=paying_by_mobile,fill=countries)) +
  geom_bar(color="black",stat = "identity") +
  labs(x = "Countries", y = "Percentage",title = "Percentage of people use mobile for payment in 6 countries" )+
  scale_fill_manual(values=c("#7fcdbb","#c7e9b4","#ffffcc","#253494","#2c7fb8","#41b6c4"))+
  geom_text(aes(label=paying_by_mobile), position=position_dodge(width=0.5), vjust=-0.25)
plot3 

plot4 = ggplot(data,aes(x=reorder(countries,paying_by_internet),y=paying_by_internet,fill=countries)) +
  geom_bar(color="black",stat = "identity") +
  labs(x = "Countries", y = "Percentage",title = "Percentage of people use internet for payment in 6 countries" )+
  scale_fill_manual(values=c("#feb24c","#fd8d3c","#ffffb2","#fed976","#bd0026","#f03b20"))+
  geom_text(aes(label=paying_by_internet), position=position_dodge(width=0.5), vjust=-0.25)
plot4 


country = c(rep('Sweden',2),rep('France',2),rep('United States',2),rep('China',2),rep('Kenya',2),rep('India',2))

payment = c("Mobile Banking", "Mobile Payment",
            "Mobile Banking", "Mobile Payment",
            "Mobile Banking", "Mobile Payment", 
            "Mobile Banking", "Mobile Payment", 
            "Mobile Banking", "Mobile Payment", 
            "Mobile Banking", "Mobile Payment")

percent = c(99.7,   34,	
            96.6,	11.9,	
            93.6,	31.8,	
            78.9,	14.3,	
            74.7,	55.3,	
            53.1,	4.7)

data_frame = data.frame(country,payment,percent)


plot5 = ggplot(data_frame, aes( y=percent, x=payment, fill = payment)) + 
  geom_bar( color = "black",stat="identity")+
  facet_wrap(~country)+
  geom_text(aes(label=percent), position=position_dodge(width=0.5), vjust=-0.25)+
  labs(x = "Payment Method", y = "Usage",title = "Percentage of people using mobile banking vs using mobile for payment" )
plot5


year = c(2010,2011,2012,2013,2014)

area = c (rep("Europe zone",5),rep("United States",5),rep("United Kingdom",5),rep("Sweden",5))
percent = c(9.1,9.3,9.5,9.9,10.3,
            6.6,6.9,7.2,7.5,7.7,
            3.5,3.6,3.6,3.6,3.6,
            3,2.7,2.6,2.3,2.1)
df = data.frame(year,area,percent)

plot6 = ggplot(df,aes(x=year,y=percent,group = area ))+
  
  geom_line(aes(color=area),size =2)+
  geom_point(shape=20, size=5,fill="red",color="black")+
  labs(x = "Years", y = "Money",title = "Liquid money in circulation in percentage of GDP" )+
  scale_color_manual(values = c("#00441b","#67000d","#fc8d59","#49006a"))+
  #geom_text(aes(label=percent), position=position_dodge(width=0.5), vjust=-.5)+
  expand_limits(y=11)
plot6

year1=c(2010,2011,2012,2013,2014,2015,2016)

continents=c(rep("Asia Pacific",7),rep("Africa",7),
             rep("North Americai",7),rep("Europe",7),
             rep("Latin America",7),rep("Middle East",7))

payment= c(65,80,95,110,115,140,163.6,
           45,55,65,70,80,90,101.3,
           25,40,50,65,75,82,90.7,
           20,25,35,50,55,60,64,
           15,17,19,20,21,21.5,22.3,
           2,2.5,3,3.5,4,4.5,6)
data1=data.frame(year1,continents,payment)

plot7 = ggplot(data1,aes(x=year1,y=payment,group = continents ))+
  geom_line(aes(color=continents),size =2)+
  geom_point(shape=20, size=5,fill="red",color="black")+
  labs(x = "Years", y = "Payment",title = "People paying by mobile phone in the world (in millions)" )+
  scale_color_manual(values = c("#00441b","#67000d","#fc8d59","#49006a","#bd0026","#f03b20"))+
  #geom_text(aes(label=payment), position=position_dodge(width=0.2), vjust=-1)+
  expand_limits(y=170)
plot7          


country1 = c(rep('Sweden',3),rep('France',3),rep('United States',3),rep('China',3),rep('Kenya',3),rep('India',3))

PaymentMethod = c("Card", "Mobile", "Internet",
             "Card", "Mobile", "Internet",
             "Card", "Mobile", "Internet",
             "Card", "Mobile", "Internet",
             "Card", "Mobile", "Internet",
             "Card", "Mobile", "Internet")

percents = c(92.7, 34  ,   74.6,	
             76  , 11.9,	44.5,	
             67.1, 31.8,	64.7,	
             17.3 , 14.3,	19.2,	
             11.2 , 55.3,	4.7,	
             10.7 , 4.7 ,	1.2)

frame = data.frame(country1,PaymentMethod,percents)


plot10 = ggplot(frame, aes( y=percents, x=PaymentMethod, fill = PaymentMethod)) + 
  geom_bar( color = "black",stat="identity")+
  facet_wrap(~country1)+
  labs(x = "Payment method", y = "Percent",title = "Comparing the payments methods of each country" )+
  geom_text(aes(label=percents), position=position_dodge(width=0.5), vjust=-0.25)+
  expand_limits(y=100)
plot10

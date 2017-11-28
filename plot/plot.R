ggplot(data = genres, aes(x = gross_coef,y = score.coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(genres$genres),colour="black",size=4
            , hjust = -0.1, alpha =0.7)+
  ggtitle("Genres Coefficient")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")

ggplot(data = actors, aes(x = gross_coef,y = score_coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(actors$actors),colour="black",size=4
            , hjust = -0.1,alpha = 0.7)

ggplot(data = directors, aes(x = gross_coef,y = score_coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(directors$directors),colour="black",size=4
            , hjust = -0.1,alpha = 0.7)+
  ggtitle("Directors Coefficient")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")

ggplot(data = directors, aes(x = gross_coef,y = score_coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(directors$directors),colour="black",size=4
            , hjust = -0.1,alpha = 0.7)+
  ggtitle("Directors Coefficient")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")

actors_filters = actors %>% 
  mutate(Attribute = "Actors") %>% 
  filter(actors %in% c("Livvy Stubenrauch",
                       "Maurice LaMarche",
                       "Keir O'Donnell",
                       "Billy Boyd",
                       "Don Rickles",
                       "John Ratzenberger",
                       "Jess Harnell",
                       "Orlando Bloom",
                       "Jennifer Lawrence",
                       "Hayley Atwell",
                       "Robert Downey Jr.",
                       "Jessica Capshaw",
                       "Christian Bale",
                       "Natalie Portman",
                       "Julia Ormond",
                       "Emma Stone",
                       "Tom Cruise"))

directors_filters = directors %>% 
  mutate(Attribute = "Directors") %>% 
  filter(directors %in% c("Chris Buck",
                          "Lee Unkrich",
                          "Tim Miller",
                          "Peter Jackson",
                          "Colin Trevorrow",
                          "Anthony Russo",
                          "Francis Lawrence"))
colnames(actors_filters)[1]="name"
colnames(directors_filters)[1]="name"

plot_data = rbind(actors_filters,directors_filters)

ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
  geom_point(size =3,aes(color = Attribute))+
  geom_text(label=paste(plot_data$name),colour="black",size=4
            , vjust = 1,alpha = 0.7)+
  ggtitle("Actors and Directors' Coefficients")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")


colnames(actors)[1]="name"
colnames(directors)[1]="name"

actors = actors %>% 
  mutate(Attribute = "Actors")

directors = directors %>% 
  mutate(Attribute = "Directors")

rbind_data = rbind(actors,directors)

ggplot(data = rbind_data, aes(x = gross_coef,y = score_coef))+
  geom_point(size =2,aes(color = Attribute))+
  ggtitle("Actors and Directors' Coefficients")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")

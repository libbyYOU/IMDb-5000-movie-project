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

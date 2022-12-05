df3["Season"]<-1
usq<-0
for(i in 1:nrow(df3)){
  if(df3$Mon[i] >= 2 & df3$Mon[i] <= 5){
    paste(df3$Season[i] <- "Prm")
  }
  else if(df3$Mon[i] >= 6 & df3$Mon[i] <= 9){
    paste(df3$Season[i] <- "M")
  }
  else if(df3$Mon[i] >= 10 & df3$Mon[i] <= 12){
    paste(df3$Season[i] <- "pom")
  }
  else if(df3$Mon[i] == 1){
    paste(df3$Season[i] <- "pom")
  }
  usq<- print(df3)
  df3.1<-data.frame(usq)
}
head(df3.1)
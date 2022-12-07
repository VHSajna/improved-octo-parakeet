# upload data 
env.ML.1960.2016$Date.2 <- as.POSIXct(env.ML.1960.2016$Date.2, format = "%d-%m-%Y")# CONVERT TO DATE


#env.ML.1960.2016$Month<-paste(as.Date(format(env.ML.1960.2016$Date.2,'%m')))# paSTE MONTH COLUMN

env.ML.1960.2016 %>%
  select(Date.2, SST, SST,Pr,SSS,SSC,ML,Month) %>%
  filter(Date.2 >= as.Date("1960-03-01") & Date.2 <= as.Date("1960-05-01"))# EXTRACT SPECIFIC SET OF MONTHS DATA

## using pipe and filter function to get pre monsoon data

env.ML.1960.2016 %>%
  select(Date.2, SST, SST,Pr,SSS,SSC,ML,Month) %>%
  filter(Month %in% c(3,4,5))

##or
filter(env.ML.1960.2016, between(date, as.Date("1960-12-01"), as.Date("2016-02-01")))

#or

filter(mydf, date >= "2014-12-02", date <= "2014-12-05")
filter(mydf, date >= "2014-12-02" & date <= "2014-12-05")

temp[(temp$date> "2014-12-03" & temp$date < "2014-12-05"),]

subset(temp, date> "2014-12-03" & date < "2014-12-05")
weather <- read.csv("hw1_data.csv")

attach(weather)
names(weather)
weather[1:5,]
mean(weather$Ozone)

sum <- 0
count <- 0

for(i in 1:153){
  if(!is.na(weather$Ozone[i])){
    count <- count + 1
    sum <- sum + weather$Ozone[i]
  }
}
153-116
sum/count

x <- subset(weather, weather$Ozone > 31 & weather$Temp >90)
mean(x$Solar.R)

y <- subset(weather, weather$Month == 6)
mean(y$Temp)

z <- subset(weather, weather$Month == 5 & !is.na(weather$Ozone))
max(z$Ozone)

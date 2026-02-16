library(tidyverse)

data1<-read.csv(file.choose())

str(data1)

head(data1)
tail(data1)

sum(is.na(data1))

data1 %>%
  select(Id,SepalLengthCm,SepalWidthCm,PetalLengthCm,PetalWidthCm,Species) %>% 
  filter(!complete.cases(.))

data1[duplicated(data1),]

data1$SepalLengthCm[is.na(data1$SepalLengthCm)] <- 
  median(data1$SepalLengthCm, na.rm = TRUE)
data1 %>% 
  filter(is.na(SepalLengthCm))

view(data1)

data1$SepalWidthCm[is.na(data1$SepalWidthCm)] <-
  median(data1$SepalWidthCm, na.rm = TRUE) 
data1 %>% 
  filter(is.na(SepalWidthCm))

data1$PetalLengthCm[is.na(data1$PetalLengthCm)] <-
  median(data$PetalLengthCm, na.rm = TRUE)
data1 %>% 
  filter(is.na(PetalLengthCm))

data1$PetalWidthCm[is.na(data1$PetalWidthCm)] <-
  median(data$PetalWidthCm, na.rm = TRUE)
data1 %>% 
  filter(is.na(PetalWidthCm))

view(data1)

write.csv(data1, file = "Cleaned_Iris.csv")

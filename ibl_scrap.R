message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)
library(httr)

message('Scraping Data')

url_dewaunited<- "https://iblindonesia.com/profile/team/126042?season=37811"
page_dewaunited <-read_html(url_dewaunited)

pemain_dewaunited <- page_dewaunited %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 1) and parent::*)]') %>% 
  html_text()
pemain_dewaunited

point_dewaunited <-page_dewaunited %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 2) and parent::*)]') %>% 
  html_text()
point_dewaunited

assist_dewaunited <-page_dewaunited %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]') %>% 
  html_text()
assist_dewaunited

rebound_dewaunited <-page_dewaunited %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 5) and parent::*)]') %>% 
  html_text()
rebound_dewaunited



url_pelitajaya<-'https://iblindonesia.com/profile/team/126036?season=37811'
page_pelitajaya<-read_html(url_pelitajaya)

pemain_pelitajaya <- page_pelitajaya %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 1) and parent::*)]') %>% 
  html_text()
pemain_pelitajaya

point_pelitajaya <-page_pelitajaya %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 2) and parent::*)]') %>% 
  html_text()
point_pelitajaya

assist_pelitajaya <-page_pelitajaya %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]') %>% 
  html_text()
assist_pelitajaya

rebound_pelitajaya <-page_pelitajaya %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 5) and parent::*)]') %>% 
  html_text()
rebound_pelitajaya




url_kesatriasolo<-'https://iblindonesia.com/profile/team/170783?season=37811'
page_kesatriasolo<-read_html(url_kesatriasolo)

pemain_kesatriasolo <- page_kesatriasolo %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 1) and parent::*)]') %>% 
  html_text()
pemain_kesatriasolo

point_kesatriasolo <-page_kesatriasolo %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 2) and parent::*)]') %>% 
  html_text()
point_kesatriasolo

assist_kesatriasolo <-page_kesatriasolo %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 3) and parent::*)]') %>% 
  html_text()
assist_kesatriasolo

rebound_kesatriasolo <-page_kesatriasolo %>% 
  html_nodes(xpath='//*[contains(concat( " ", @class, " " ), concat( " ", "scroll-x-cont", " " )) and (((count(preceding-sibling::*) + 1) = 2) and parent::*)]//td[(((count(preceding-sibling::*) + 1) = 5) and parent::*)]') %>% 
  html_text()
rebound_kesatriasolo



nama_pemain<-c(pemain_kesatriasolo,pemain_pelitajaya,pemain_dewaunited)
point_pemain<-c(point_kesatriasolo,point_pelitajaya,point_dewaunited)
assist_pemain<-c(assist_kesatriasolo,assist_pelitajaya,assist_dewaunited)
rebound_pemain<-c(rebound_kesatriasolo,rebound_pelitajaya,rebound_dewaunited)

data_ibl<-data.frame(nama_pemain,point_pemain,assist_pemain,rebound_pemain,stringsAsFactors = FALSE)
view(data_ibl)


pilih <- sample(1:40, 1, replace=FALSE)
data_ibl <- data_ibl[pilih,]

#MONGODB
message('Input Data to MongoDB Atlas')
atlas_conn <- mongo(
  collection = "ibl",
  db         = "IBL",
  url        = "mongodb+srv://kevinalifviansyah:030900@mydatabase.m9nhqtm.mongodb.net/?retryWrites=true&w=majority&appName=mydatabase"
)

atlas_conn$insert(ibl)
rm(atlas_conn)


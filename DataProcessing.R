## Install the required packages
install.packages("tidyverse")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("janitor")
## Load the required packages
library(ggplot2)
library(tidyverse)
library(lubridate)
library(dplyr)
library(modeest)
library(janitor)

   ## import previous 12 months data
Cyclistic_202101 <- read_csv("202101-divvy-tripdata.csv")
Cyclistic_202102 <- read_csv("202102-divvy-tripdata.csv")
Cyclistic_202103 <- read_csv("202103-divvy-tripdata.csv")
Cyclistic_202104 <- read_csv("202104-divvy-tripdata.csv")
Cyclistic_202105 <- read_csv("202105-divvy-tripdata.csv")
Cyclistic_202106 <- read_csv("202106-divvy-tripdata.csv")
Cyclistic_202107 <- read_csv("202107-divvy-tripdata.csv")
Cyclistic_202108 <- read_csv("202108-divvy-tripdata.csv")
Cyclistic_202109 <- read_csv("202109-divvy-tripdata.csv")
Cyclistic_202110 <- read_csv("202110-divvy-tripdata.csv")
Cyclistic_202111 <- read_csv("202111-divvy-tripdata.csv")
Cyclistic_202112 <- read_csv("202112-divvy-tripdata.csv")

Display column name for consistency 

str(Cyclistic_202101)
str(Cyclistic_202102)
str(Cyclistic_202103)
str(Cyclistic_202104)
str(Cyclistic_202105)
str(Cyclistic_202106)
str(Cyclistic_202107)
str(Cyclistic_202108)
str(Cyclistic_202109)
str(Cyclistic_202110)
str(Cyclistic_202111)
str(Cyclistic_202112)

Converting relevant so that they can stack correctly
 Cyclistic_202101 <- mutate(Cyclistic_202101, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202102 <- mutate(Cyclistic_202102, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202103 <- mutate(Cyclistic_202103,start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202104 <- mutate(Cyclistic_202104, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202105 <- mutate(Cyclistic_202105, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202106 <- mutate(Cyclistic_202106, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202107 <- mutate(Cyclistic_202107, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202108 <- mutate(Cyclistic_202108, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202109 <- mutate(Cyclistic_202109, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202110 <- mutate(Cyclistic_202110, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202111 <- mutate(Cyclistic_202111, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
Cyclistic_202112 <- mutate(Cyclistic_202112, start_station_id
                           =as.character(start_station_id),end_station_id
                           = as.character(end_station_id)
                           ,started_at = as.POSIXct(started_at,format= "%m/%d/%Y %H:%M")
                           ,ended_at= as.POSIXct(ended_at, format= "%m/%d/%Y %H:%M"))
                           
                           
Bind datasets into one big dataframe
#Combine 12 dataframes into one data frame
all_trips <- bind_rows(Cyclistic_202101, Cyclistic_202102, Cyclistic_202103, Cyclistic_202104, 
                       Cyclistic_202105, Cyclistic_202106, Cyclistic_202107, Cyclistic_202108,
                       Cyclistic_202109,Cyclistic_202110,Cyclistic_202111,Cyclistic_202112)
     
 Remove Lat & Lng
all_trips <- all_trips %>%
  select(-c(start_lat,start_lng,end_lat,end_lng))
  
 colnames(all_trips) 
 nrow(all_trips)
dim(all_trips)
head(all_trips) 
str(all_trips)
summary(all_trips)
glimpse(all_trips)
colSums(is.na(all_trips))

cleaned <- all_trips[complete.cases(all_trips),]
cleaned <- cleaned %>%
  filter(cleaned$started_at <cleaned$ended_at)

Cleaned table adding new columns(day,month,date,year)
cleaned$date <- as.Date(cleaned$started_at, format= "%m/%d/%Y %H:%M")
cleaned$month <- format(as.Date(cleaned$date), "%m")
cleaned$day <- format(as.Date(cleaned$date), "%d")
cleaned$year <- format(as.Date(cleaned$date), "%Y")
cleaned$day_of_week <- format(as.Date(cleaned$date), "%A")

glimpse(cleaned)

cleaned$ride_length <- difftime(cleaned$ended_at,
                                cleaned$started_at)
                                
  str(cleaned)    
  
  is.factor(cleaned$ride_length)
cleaned$ride_length <- as.numeric(as.character(cleaned$ride_length))
is.numeric(cleaned$ride_length)

all_trips_v2 <- cleaned[!(cleaned$start_station_name == "HQ QR" |
 cleaned$ride_length <0),]

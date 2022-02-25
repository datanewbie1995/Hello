mean(all_trips_v2$ride_length)
median(all_trips_v2$ride_length)
max(all_trips_v2$ride_length)
min(all_trips_v2$ride_length)
summary(all_trips_v2$ride_length)
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = mean)
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = median)
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = min)
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = max)

all_trips_v2$day_of_week <- ordered(all_trips_v2$day_of_week,
                                    levels=c("Sunday","Monday","Tuesday",
                                             "Wednesday","Thursday","Friday","Saturday"))
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual +
            all_trips_v2$day_of_week, FUN = mean)
            
all_trips_v2 %>%
  mutate(weekday = wday(started_at, label = TRUE)) %>%
  group_by (member_casual, weekday) %>% 
  summarise(number_of_rides = n() 
            ,average_duration = mean(ride_length)) %>%
  arrange(member_casual, weekday)
  
  #Combine start and end stations
# Remove entries that have no station name
# Separate the data frame by member or casual 
all_station <- bind_rows(data.frame("stations"=all_trips_v2$start_station_name,
                                    "member_casual" = all_trips_v2$member_casual),
                         data.frame("stations"= all_trips_v2$end_station_name,
                                    "member_casual" = all_trips_v2$member_casual))
all_station_v2 <-all_station[!(all_station$stations == "" | is.na(all_station$stations)),]
all_station_member <- all_station_v2[all_station_v2$member_casual == 'member',]
all_station_casual <- all_station_v2[all_station_v2$member_casual == 'casual',]


top_10_station <- all_station_v2 %>%
  group_by(stations) %>%
  summarise(station_count =n()) %>%
  arrange(desc(station_count)) %>%
  slice(1:10)
  
  top_10_station_member <- all_station_member %>%
  group_by(stations) %>%
  summarise(station_count =n()) %>%
  arrange(desc(station_count)) %>%
  head(n=10)
  
  top_10_station_casual <- all_station_casual %>%
  group_by(stations) %>%
  summarise(station_count =n()) %>%
  arrange(desc(station_count)) %>%
  head(n=10)
  
  all_trips_v2 %>%
  group_by(rideable_type, member_casual) %>%
  summarise(number_of_rides =n(), summarise= 'drop')
  
  all_trips_v2$started_at_hour <-as.POSIXct(all_trips_v2$started_at, "%Y-%m-%d %H:%M")

str(all_trips_v2)

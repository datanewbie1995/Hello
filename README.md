# Google Analytics Case Study_1

## Introduction

  I have been working on completing the Google Data Analytics Professional Certificate. The following case study involves a fictional bike-share company based in Chicago called Cyclistic, that wants to start a marketing strategy that will be the key to the future growth of the company.  
Data Analysis Process: Ask >Prepare >Process >Analyze >Share >Act 

 ## Ask
 
_About the Company_

  After launching Cyclistic  in 2016, the program has grown to a fleet of 5,824 bicycles that are geo-tracked and locked into 692 stations across Chicago. After using the bikes you can return the bikes to any of the 692 stations. Cyclistic marketing strategy has always relied on building general awareness and appealing to a broad consumer basis. To make this possible, the company provided flexibility in its pricing plans: single-ride passes, full-day passes, and annual memberships. Consumers who purchased the single-ride or full-day passes are referred to as casual riders. Consumers who purchased annual memberships are Cyclistic members.
	
  _Scenario_ 
  
  Your director, Lily Moreno, believes that the key to the future growth of the company is the annual members. So, you are given the task to identify trends on how annual members and casual riders use our bikes differently. From these findings, the team members can design a marketing strategy to convert casual riders to annual members.

Key Stakeholders

*Lily Moreno: The director of Marketing

*Cyclistic marketing analytics team

*Cyclistic executive team

_Business Task_:

 How do annual members and casual riders use Cyclistic bikes differently?
 
 ## Prepare
 
_Where is the data located?_	

  In order to analyze and identify the trends, Cyclistic provided me with raw data with information regarding the last 12 months Previous 12 month Datasets . The data was licensed by Motivate International Inc license. 

_How is the data organized?_

  After downloading the files, I had to unzip the files from ‘Zip” to ‘CSV’. Due to the large sizes of the datasets I will be using Rstudio to prepare, process, and analyze. Each dataset consists of 13 fields with a variety of records depending on each month’s ride. Each dataset contains data called: ride_id,rideable_type, start_station_name,start_station_id, end_station_name, end_station_id, member_casual, start_lat, end_lat,start_lng,end_lng,started_at,ended_at.

_Are there issues with bias or credibility in this data? Does your data ROCCC?_

  This case study is using public data collected by the Cyclistic, bike-share company in Chicago. Data is organized in csv files for each month and current and cited.

_How does it help you answer your question?_

  The task is to identify how casual riders and annual members differ from each other. The past 12 months data will give us insights about annual members and casual riders.

_Are there any problems with the data?_

  Looking through the datasets, I have found multiple null values and also columns have inconsistent formatting and naming that causes duplicating to occur. There are some missing values for start_station_name, start_station_id, end_station_name, and end_station_id. Also, we have to remove negative time durations.

**Tools**: 

R-studio

**Dataset**: 

Cyclistic trip data from January 2021 to December 2021
              
              

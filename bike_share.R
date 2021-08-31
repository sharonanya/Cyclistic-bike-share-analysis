# install and load  packages needed for the project
-------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)
install.packages("lubridate")
library(lubridate)
install.packages("ggplot2")
library(ggplot2)
---------------------------------------------------------------------------
# Import data from 2020 to 2021 to show recent trend through sampling
---------------------------------------------------------------------------
bike_share_2020_Q1 <-read_csv("C:/Users/User/Documents/bike_share_project/2020-Q1-divvy-tripdata.csv")
bike_share_202004 <- read_csv("C:/Users/User/Documents/bike_share_project/202004-divvy-tripdata.csv")
bike_share_202005 <- read_csv("C:/Users/User/Documents/bike_share_project/202005-divvy-tripdata.csv")
bike_share_202006 <- read_csv("C:/Users/User/Documents/bike_share_project/202006-divvy-tripdata.csv")
bike_share_202007 <- read_csv("C:/Users/User/Documents/bike_share_project/202007-divvy-tripdata.csv")
bike_share_202008 <- read_csv("C:/Users/User/Documents/bike_share_project/202008-divvy-tripdata.csv")
bike_share_202009 <- read_csv("C:/Users/User/Documents/bike_share_project/202009-divvy-tripdata.csv")
bike_share_202010 <- read_csv("C:/Users/User/Documents/bike_share_project/202010-divvy-tripdata.csv")
bike_share_202011 <- read_csv("C:/Users/User/Documents/bike_share_project/202011-divvy-tripdata.csv")
bike_share_202012 <- read_csv("C:/Users/User/Documents/bike_share_project/202012-divvy-tripdata.csv")
bike_share_202101 <- read_csv("C:/Users/User/Documents/bike_share_project/202101-divvy-tripdata.csv")
bike_share_202102 <- read_csv("C:/Users/User/Documents/bike_share_project/202102-divvy-tripdata.csv")
bike_share_202103 <- read_csv("C:/Users/User/Documents/bike_share_project/202103-divvy-tripdata.csv")
bike_share_202104 <- read_csv("C:/Users/User/Documents/bike_share_project/202104-divvy-tripdata.csv")
bike_share_202105 <- read_csv("C:/Users/User/Documents/bike_share_project/202105-divvy-tripdata.csv")
bike_share_202106 <- read_csv("C:/Users/User/Documents/bike_share_project/202106-divvy-tripdata.csv")
bike_share_202107 <- read_csv("C:/Users/User/Documents/bike_share_project/202107-divvy-tripdata.csv")
--------------------------------------------------------------------------------------------------------
# To check if the column names  are consistent
colnames(bike_share_202004)
colnames(bike_share_2020_Q1)
# The column names are consistent and do not need to be renamed or changed
----------------------------------------------------------------------------------------------------------
#To check for attributes consistency
str(bike_share_2020_Q1)
str(bike_share_202004)
------------------------------------------------------------------------------------------------------------
# To convert from char to datetime format or POSIXct
bike_share_202004$started_at <- ymd_hms(bike_share_202004$started_at)
bike_share_202004$ended_at <- ymd_hms(bike_share_202004$ended_at)
--------------------------------------------------------------------------------------------------------------------
# Since the columns are consistent we merge them into a single dataframe
bike_rides <- rbind(bike_share_2020_Q1,bike_share_202004,bike_share_202005,bike_share_202006,bike_share_202007,bike_share_202008,bike_share_202009,bike_share_202010,bike_share_202011,bike_share_202012,bike_share_202101,bike_share_202102,bike_share_202103,bike_share_202104,bike_share_202105,bike_share_202106,bike_share_202107)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Cleaning the data



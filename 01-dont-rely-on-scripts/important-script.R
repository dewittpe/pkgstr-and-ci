library(dplyr)
library(ggplot2)
library(magrittr)

Airlines <- read.csv("airlines.csv")
Airports <- read.csv("airports.csv")
Flights  <- read.csv("flights.csv")
Planes   <- read.csv("planes.csv")
Weather  <- read.csv("weather.csv")

head(Airports)

# Lets look at flights from EWR, JFK, or LGA to Denver (DEN)
table(Flights$origin)

to_denver <- filter(Flights, dest == "DEN")

# carrier median arrivial delay
median_delay <-
  to_denver %>%
  group_by(carrier) %>%
  summarize(median_delay = median(arr_delay, na.rm = TRUE)) %>%
  ungroup()

median_delay %>% filter(carrier == "UA")

# how many airlines?
n_distinct(median_delay$carrier)

# full names of the carriers
left_join(median_delay, Airlines, by = "carrier")

# Weather and delays
dat <-
  left_join(Flights,
            Weather,
            by = c("year", "month", "day", "origin", "hour"))
  
fit <- lm(arr_delay ~ precip + origin, data = dat, subset = carrier == "UA")

message(sprintf("The average difference in the arrivial delay from %s to DEN compared\nto the average arrivial delay between %s and DEN is %f.",
                levels(dat$origin)[2],
                levels(dat$origin)[1],
                coef(fit)[paste0("origin", levels(dat$origin)[2])]))






# Deliverable 1

library(dplyr)

MechaCarMPG <- read.csv('MechaCar_mpg.csv') #import MechaCar dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMPG) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMPG)) #generate summary statistics

# Deliverable 2

SuspensionCoil <- read.csv('Suspension_Coil.csv') #import SuspensionCoil dataset

library(tidyverse)

total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table with multiple columns

lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table with multiple columns

# Deliverable 3
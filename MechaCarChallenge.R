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

t.test(SuspensionCoil$PSI, mu=1500) #t-test to determine if PSI differs from population mean

Lot1 <- subset(SuspensionCoil, Manufacturing_Lot=="Lot1")

t.test(Lot1$PSI, mu=1500) #t-test to determine if PSI from Lot 1 differs from population mean

Lot2 <- subset(SuspensionCoil, Manufacturing_Lot=="Lot2")

t.test(Lot2$PSI, mu=1500) #t-test to determine if PSI from Lot 2 differs from population mean

Lot3 <- subset(SuspensionCoil, Manufacturing_Lot=="Lot3")

t.test(Lot3$PSI, mu=1500) #t-test to determine if PSI from Lot 3 differs from population mean
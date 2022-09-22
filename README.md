# MechaCar_Statistical_Analysis

Analysis of car data in R

## Overview

This analysis was performed to help AutosRUs make more sound decisions concerning their future automobile launches by looking at previously collected data. First, it is hoped that a multiple regression will help AutosRUs better understand what car features affect the MPG of future prototypes, Next, after synthesizing data on suspension coils across various lots, it is hoped that t-tests will help determine if said lots differ in PSI from the overall population. Finally, a new study will be proposed to compare performance of MechaCar vehicles against vehicles from other manufacturers. 

## Resources

- Files: MechaCar_mpg.csv and Suspension_Coil.csv
- Technologies: RStudio, R programming language

## Linear Regression to Predict MPG

The alternative hypothesis that the factors of vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive status would affect a prototype car's MPG was tested via multiple linear regression. See below for results of the multiple regression conducted in R:

![Multiple Regression](https://github.com/josephrodini/MechaCar_Statistical_Analysis/blob/main/Images/lmMPG.PNG?raw=true)

We can conclude several things from this analysis:

- Two variables do provide statistically significant prediction of MPG, namely vehicle length (t=9.56, p<0.001) and ground clearance (t=6.55, p<0.001). Vehicle weight (t=1.81, p=0.08) and spoiler angle (t=1.03, p=0.31) do not predict MPG at a level of significance.

- The hypothesis test of the slope proved significant (F=22.07, p<0.001), therefore we can say that the slope cannot be considered to be zero.

- The high R-squared value (R-squared=0.71) tells us that 71% of the variance in MPH is explained by the four variables. Therefore we can say that the linear mondel does predict MPH of MechaCar effectively.

## Summary Statistics on Suspension Coils

There is a requirement that the variance of the suspension coils for MechaCar must not exceed 100 pounds per square inch. In order to determine whether this requirement is met, summary statistics were gathered for MechaCar for both the cars from all the lots combined and for the cars from each lot individually. See the summary tables below:

- Table for lots in total

![SummaryTotal](https://github.com/josephrodini/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.PNG?raw=true)


- Table for each lot individually

![SummaryLot](https://github.com/josephrodini/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.PNG?raw=true)


Reading the tables, we can see that, overall, the cars' variance clocks in under 100 (62.29). However, breaking down variance by lot shows wildly different variances. The variances for lot one (0.98) and lot two (7.47) are very small, well under 100, while the variance for lot three (170.29) is much higher, and well over 100.

## T-Tests on Suspension Coils

The alternative hypothesis that the PSI of the MechaCars differ from the PSI of the population was tested with t-tests. See the results below:

- T-test comparing all lots together versus population

![PSITogether](https://github.com/josephrodini/MechaCar_Statistical_Analysis/blob/main/Images/ttestall.PNG?raw=true)


- T-tests comparing each lot inidividually versus population

![PSIIndividual](https://github.com/josephrodini/MechaCar_Statistical_Analysis/blob/main/Images/ttestsbylot.PNG?raw=true)


Based on the above output, we can conclude the following:

- Overall, all the cars' PSI do not differ significantly from the population PSI (t=-1.89, p=0.06). We therefore do not reject the null hypothesis.

- By lot, lot one (t=0, p=1) and lot two (t=0.52, p=0.60) do not have PSIs that are significantly different from that of the population. However, lot three's PSI does significantly differ (t=-2.09, p=0.04). 

## Study Design: MechaCar vs Competition

It is important to measure MechaCar against its competitors. Therefore the following study was designed:

### Metric to Test

We will examine MechaCar's horsepower with that of the competition: is MechaCar's horsepower different from that of its competitors?

### Hypotheses

The null hypothesis would be as follows: There is no difference in horsepower between MechaCar and its competitors. In other words, no statitstical difference will be found between MechaCar and the other makers examined.

The alternative hypothesis would be as follows: There is a difference in horsepower between MechaCar and its competitors. In other words, the horsepower of MechaCar will either be significantly higher or lower than another maker examined.

### Statistical Test

A separate two sample t-test would be needed to compare MechaCar to each competitor (i.e., MechaCar vs. Honda, MechaCar vs. Toyota, etc.). One may think that one ANOVA would suffice, but an ANOVA is an omnibus test and could prove significant even if MechaCar does not differ from any competitors (e.g., in the case that the competitors differ from each other). Only separate t-tests will definitively answer the research question.

### Data Needed

A sample of the horsepower for all the models MechaCar offers would be needed, as well as the horsepower for all the models for each company MechaCar will be compared against.

## Conclusion

Using statistics in the R programming language, we are able to gain insights into the operations of AutosRUs that help them plan for the future.



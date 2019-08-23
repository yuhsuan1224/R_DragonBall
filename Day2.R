##### R_DragonBall_Day2 #####

library(DT)
library(zoo)
library(plotly)
library(lubridate)
library(rmarkdown)
library(data.table)
library(tidyverse)
library(kableExtra)
options(dplyr.print_max=1e9)

### setup###
setwd("d:\\Desktop\\R_dragonball\\")


### input data
train0 = read.csv(file = "house-prices\\train.csv" , stringsAsFactors = F)
test0 = read.csv(file = "house-prices\\test.csv" , stringsAsFactors = F)

### plot
pairs(train0[,c("TotalBsmtSF","X1stFlrSF","X2ndFlrSF","SalePrice")] ,
      pch = 19,  cex = 0.5,
      lower.panel = NULL)

##### R_DragonBall_Day1 #####

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


### BsmtFinType convert to dummy
library(fastDummies)
train1 = fastDummies::dummy_cols(train0, select_columns = "BsmtFinType1")

### summarise of train0 which group by HouseStyle
dat<-train0%>%
  group_by(HouseStyle)%>%
  summarise(low=min(SalePrice),
            high=max(SalePrice),
            average=mean(SalePrice),
            sd=sd(SalePrice),
            number_of=n())

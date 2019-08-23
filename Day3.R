##### R_DragonBall_Day3 #####

library(tidyverse)
library(purrr)
library(tidyr)
library(plyr)

### setup###
setwd("d:\\Desktop\\R_dragonball\\")


### input data
train0 = read.csv(file = "house-prices\\train.csv" , stringsAsFactors = F)
test0 = read.csv(file = "house-prices\\test.csv" , stringsAsFactors = F)

### calculate total house area
train0$TotalSF = train0$TotalBsmtSF + train0$X1stFlrSF + train0$X2ndFlrSF

### 將 `TotalSF` 做標準化轉換
train0$TotalSF = scale(train0$TotalSF)

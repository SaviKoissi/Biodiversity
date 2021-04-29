setwd("")

library(tidyverse)
library(readxl)
library(dplyr)
library(vegan)

data <- read_xlsx("data_4_pho_Merveille.xlsx")

data %>%
  mutate (ints = cut(`DBH (cm)`, breaks =  c(-Inf,5, 10, 20, 30, 40, Inf))) %>%
  group_by(plotid, ints)%>%
  summarise(div = vegan::diversity(ba_m2_ha , index = "shannon"))
  
  

  
 
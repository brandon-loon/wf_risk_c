#######################################################################################
# This script will be synthesizing the large tif files from the wf_risk_2_communites paper into small easy to understand data frames the size of the 
#Hiawatha that can then be better understood for what they mean

######################################################################################
library(raster)
library(tidyverse)
library(sf)
library(ggplot2)
library(dplyr)
library(tmap)
######################################################################################

# loading in the files in question and assigning names then copy paste piped functions that will take them from one format, reproject CRS, Crop, extract, and reassign 
# much like I did in the last project
BP_MI <- raster::raster("./BP_MI.tif")
 
CFL_MI <- raster::raster("./CFL_MI.tif")

CRPS_MI <- raster::raster("./CRPS_MI.tif")

Exposure_MI <- raster::raster("./Exposure_MI.tif")

FLEP4_MI <- raster::raster("./FLEP4_MI.tif")

FLEP8_MI <- raster::raster("./FLEP8_MI.tif")

RPS_MI <- raster::raster("./RPS_MI.tif")

WHP_MI <- raster::raster("./WHP_MI.tif")
# image it to check whats up

image(BP_MI)
plot(BP_MI)
qtm(BP_MI)

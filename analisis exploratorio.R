options(scipen = 999)
library(dplyr)
library(ggplot2) 
library(readxl)
library(gmodels)
library(Hmisc)
library(ggthemes)
library(fdth)
encuesta <- read.csv2("train.csv")
head(encuesta,15)
freq <- fdt(encuesta$diagnosis,breaks="Sturges")
freq
hist(encuesta$diagnosis, breaks = "Sturges", main = "Histograma la distribucion de frecuencias", xlab = "frecuencias de las diagnosis", ylab = "Frecuencia")
encuesta <- tbl_df(encuesta)
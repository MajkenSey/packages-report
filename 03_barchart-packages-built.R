## remember to restart R here!
.libPaths("C:/FSDKHQ001/USERS406$/WMHS/R/win-library/3.4")
library(dplyr)
library(here)
library(readr)
library(ggplot2)

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

apt_freqtable <- read.csv(here("data","add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:
barplot <- ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
ggsave(here("figs","built-barchart.png"),barplot,height = 3)
## YES overwrite the file that is there now
## that's old output from me (Jenny)

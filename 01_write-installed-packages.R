## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
.libPaths("C:/FSDKHQ001/USERS406$/WMHS/R/win-library/3.4")
library(dplyr)
library(readr)
library(here)

packagedata <- as.data.frame(installed.packages())

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

packagedata <- packagedata[,c("Package", "LibPath", "Version", "Priority", "Built")]

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write.csv(packagedata,file = here("data","installed-packages.csv"))

## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go

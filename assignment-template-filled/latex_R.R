# ------------------------------------------------------------------------------
# Import Libraries and Modules
# ------------------------------------------------------------------------------
library(shiny)
library(shinydashboard)
library(xlsx)
library(magrittr)
library(scales)
library(ggplot2)
library(openair)
library(reshape2)
library(RODBC)
library(lubridate)
# ------------------------------------------------------------------------------
# Define Data Reading Function
# ------------------------------------------------------------------------------
read_data <- function(){
  reactive_data <- read.xlsx2(file = "CR1000_22_11_2017.xlsx", sheetIndex = 1, startRow = 5, stringsAsFactors = F, colClasses = c(Date = "Date"), colIndex = c(1, 5, 6, 8, 9, 10, 11, 15, 16))

  colnames(reactive_data) <- c("DT", "Wind.Speed", "Wind.Direction.Degree", "Solar.Rad", "Air.Temp", "Relative.Humidity", "Rain.Fall", "Visibility", "Bar.Pressure")
  reactive_data_DT <- as.POSIXct(reactive_data$DT, format="%d/%m/%Y %H:%M:%S", tz="EET")
  reactive_data[-1] <- data.frame(sapply(reactive_data[-1], as.numeric))
  reactive_data$DT <- reactive_data_DT
  reactive_data
}
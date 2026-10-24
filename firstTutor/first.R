# File:   
# Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################

library(datasets)  # Load base packages manually

# Installs pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Use pacman to load add-on packages as desired
pacman::p_load(pacman, psych, rio, tidyverse) 

# LOAD DATA ################################################
?mtcars
head(mtcars)

# WORK WITH DATA ###########################################

describe(mtcars)
View(mtcars)     # таблица в RStudio
str(mtcars)      # структура данных
summary(mtcars)  # статистическая сводка

# some plots
barplot(mtcars$cyl)             # it's worked
# Need a table with frequencies for each category
cylinders <- table(mtcars$cyl)  # Create table
barplot(cylinders)              # Bar chart
plot(cylinders)                 # Default X-Y plot (lines)

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)


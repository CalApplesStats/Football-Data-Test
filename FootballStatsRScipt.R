# Install Packages
install.packages("tidyverse")

# Load packages for creating visualisation
library(tidyverse)
library(plotly)
library(ggplot2)
library(readr)
library(readxl)

# Load our example dataset into RStudio
FootballData <- read_csv("Data/Session4_ExampleData.csv")

# Asses the new dataset
str(FootballData)

# Plot densities 
ggplot(data = FootballData, aes(x = DIsposalType, colour = DisposalLocationOccurence, fill = DisposalLocationOccurence)) +
  geom_density(alpha = 0.7)

# Create a Scatter PLot
ggplot(data = FootballData, aes(x = Quarter, y = DisposalLocationOccurence, colour = DIsposalType)) +
  geom_jitter() +
  facet_wrap(~DIsposalType, ncol = 1)


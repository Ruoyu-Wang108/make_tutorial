## ---------------------------
##
## Script name: 04_figure_3.R
##
## Author: Ruoyu Wang
##
## Date Created: 2021-04-27
##
## ---------------------------

# Load packages
suppressPackageStartupMessages({
  library(here)
  library(tidyverse)
})

# Read-in the data
fish_data <- readRDS(here("data", "clean_fish_data.rds"))

p <- ggplot(data = fish_data)+
  geom_point(aes(x = year, y = count, color = fish),
             size = 1, shape = 5)+
   theme_minimal()

# Export the plot
ggsave(filename = here("results", "img", "fish4.png"),
       plot = p,
       width = 6,
       height = 4)
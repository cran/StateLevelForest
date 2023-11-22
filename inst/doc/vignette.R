## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(StateLevelForest)

## ----example, message=FALSE, warning=FALSE------------------------------------
# Load the StateLevelForest dataset
data("StateLevelForest")

# View the first few rows of the dataset
head(StateLevelForest)

## ----plot, message=FALSE, warning=FALSE---------------------------------------
library(dplyr)
library(ggplot2)

MA_cover_relative_to_1630 <- StateLevelForest %>%
  filter(state == "Massachusetts") %>%
  mutate(X1630 = if_else(year == min(year), forest_thousands_of_acres, 0)) %>%
  mutate(X1630 = max(X1630)) %>%
  ungroup() %>%
  filter(year != min(year))

ggplot(MA_cover_relative_to_1630, aes(x = year, y = forest_thousands_of_acres)) +
  geom_hline(aes(yintercept = 0), color = NA, linewidth = 0) +
  geom_hline(aes(yintercept = X1630), color = "red", linewidth = 1) +
  geom_point() +
  geom_line() +
  scale_x_continuous(breaks = scales::pretty_breaks()) +
  scale_y_continuous(breaks = scales::pretty_breaks()) +
  labs(x = "Year", y = "Forest area (in thousands of acres)", title = "Massachusetts") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5),
        aspect.ratio = 1)



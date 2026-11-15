
library(tidyverse)
library(nflverse)
library(gsisdecoder)


games = load_pbp(2009)

games |>
  filter(season_type == "REG" & down == 1 & ydstogo == 10 & yardline_100 == 80)
library(duckdb)

install.packages("tidyverse")
install.packages("readxl")
install.packages("scales")

library(tidyverse)
library(readxl)
library(scales)

# data
netflix <- read_excel("netflix_clean.xlsx")

# small helper to open a plot in its own window
# (windows() on Windows, quartz() on Mac, x11() on Linux)
open_window <- function(w = 9, h = 6) {
  os <- Sys.info()[["sysname"]]
  if (os == "Windows") windows(width = w, height = h)
  else if (os == "Darwin") quartz(width = w, height = h)
  else x11(width = w, height = h)
}

# --- plot 1: top 5 genres since 2010 ---

# one title can have several genres separated by commas, so split them
genres <- netflix %>%
  separate_rows(listed_in, sep = ", ")

top5 <- genres %>%
  count(listed_in, sort = TRUE) %>%
  slice_head(n = 5) %>%
  pull(listed_in)

trend <- genres %>%
  filter(listed_in %in% top5, release_year >= 2010) %>%
  count(release_year, listed_in)

p1 <- ggplot(trend, aes(release_year, n, color = listed_in)) +
  geom_line(linewidth = 1.1) +
  geom_point(size = 2) +
  theme_minimal() +
  labs(
    title = "Top 5 Genres on Netflix Since 2010",
    x = "Release year",
    y = "Number of titles",
    color = "Genre"
  ) +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    legend.position = "bottom"
  )

ggsave("genre_trends_evolution.png", plot = p1, width = 8, height = 5)

open_window()
print(p1)


# --- plot 2: movie duration (boxplot) ---

movies <- netflix %>%
  filter(type == "Movie") %>%
  mutate(minutes = parse_number(duration)) %>%
  filter(!is.na(minutes))

p2 <- ggplot(movies, aes(x = "", y = minutes)) +
  geom_boxplot(fill = "#E50914", alpha = 0.6, outlier.color = "black") +
  theme_minimal() +
  labs(
    title = "How Long Are Netflix Movies?",
    subtitle = "Black dots are outliers",
    x = NULL,
    y = "Duration (minutes)"
  ) +
  theme(plot.title = element_text(face = "bold", size = 14))

ggsave("movies_duration_boxplot.png", plot = p2, width = 6, height = 5)

open_window(6, 5)
print(p2)

print("Done, plots saved in the folder.")


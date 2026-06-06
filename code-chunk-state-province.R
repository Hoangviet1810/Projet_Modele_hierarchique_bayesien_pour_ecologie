df <- summary_table
library(tidyverse)
library(sf)
library(giscoR)

occurrence_counts <- df %>%
  filter(country == "France") %>%
  group_by(stateProvince) %>%
  summarise(n = n()) 
# 2. Get the map (NUTS 2 regions)
france_map <- gisco_get_nuts(
  country = "FR",
  nuts_level = 2, 
  resolution = "20"
)

# 3. Join the data
map_data <- france_map %>%
  left_join(occurrence_counts, by = c("NAME_LATN" = "stateProvince"))

# 4. Create the plot with labels
ggplot(data = map_data) +
  geom_sf(aes(fill = n)) +
  # Add text labels for each province
  geom_sf_text(aes(label = NAME_LATN), 
               size = 2.5,          # Adjust text size
               color = "black",      # Color of the text
               check_overlap = TRUE, # Prevents labels from drawing over each other
               fontface = "bold") +  
  scale_fill_viridis_c(option = "plasma", na.value = "grey90", name = "Occurrences") +
  theme_minimal() +
  labs(
    title = "Occurrences by Province in France",
    subtitle = "With regional names attached",
    x = "Longitude", 
    y = "Latitude"
  ) +
  # Zoom into mainland France (France métropolitaine)
  coord_sf(xlim = c(-5.5, 10), ylim = c(41, 51.5))


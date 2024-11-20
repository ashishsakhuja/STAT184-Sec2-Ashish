# Install and load the palmerpenguins package
if (!require("palmerpenguins")) install.packages("palmerpenguins")
library(palmerpenguins)

# Load the penguins dataset
data("penguins")

# Load the ggplot2 library for plotting
library(ggplot2)

# Visualization: Scatter plot of flipper length vs body mass by species and sex with trendlines
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = sex)) +
  geom_point(alpha = 0.7, size = 3) +
  geom_smooth(method = "lm", aes(color = species), se = FALSE) +  # Add trendlines with confidence intervals
  labs(
    title = "Flipper Length vs. Body Mass by Penguin Species and Sex",
    x = "Flipper Length (mm)",
    y = "Body Mass (g)"
  ) +
  theme_minimal() +
  scale_color_manual(values = c("Adelie" = "blue", "Chinstrap" = "green", "Gentoo" = "purple")) +
  scale_shape_manual(values = c("male" = 16, "female" = 17)) +
  guides(color = guide_legend(title = "Species"), shape = guide_legend(title = "Sex"))


install.packages("palmerpenguins", "ggplot2", "ggthemes")
library(palmerpenguins, ggplot2, ggthemes)

ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
    geom_point(aes(color = species, shape = species)) +
    geom_smooth(method = "lm") +
    labs(
      title = "Body mass and flipper length",
      subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
      x = "Flipper length (mm)", y = "Body mass (g)",
      color = "Species", shape = "Species",
      caption = "Data come from the palmerpenguins package."
) +
scale_color_colorblind()

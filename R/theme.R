library(sysfonts)
library(showtext)

font_add_google("Roboto", "roboto")
showtext_auto()
showtext_opts(dpi = 150)

theme_tunaki <- function() {
  theme_minimal(base_family = "roboto") +
    theme(
      plot.title       = element_text(size = 13, colour = clr$basalt,
                                      face = "bold", margin = margin(b = 4)),
      plot.subtitle    = element_text(size = 10, colour = clr$basalt,
                                      margin = margin(b = 10)),
      plot.caption     = element_text(size = 7, colour = "#999999", hjust = 1),
      plot.background  = element_rect(fill = "white", colour = NA),
      panel.background = element_rect(fill = "white", colour = NA),
      panel.grid.major = element_line(colour = clr$arctic_white, linewidth = 0.4),
      panel.grid.minor = element_blank(),
      axis.text        = element_text(size = 9, colour = clr$basalt),
      axis.title       = element_text(size = 9, colour = clr$basalt),
      axis.ticks       = element_blank(),
      legend.position  = "bottom",
      legend.title     = element_blank(),
      legend.text      = element_text(size = 8, colour = clr$basalt),
      plot.margin      = margin(16, 16, 12, 16)
    )
}

caption_fao <- "Source: FAO Global Capture Production"
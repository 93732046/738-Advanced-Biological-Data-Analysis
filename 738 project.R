
# Load necessary libraries
library(ggplot2)

# Replace 'colourdata.csv' with the actual path to your dataset file
data <- read.csv("/Users/yuan/Downloads/738 Project/738 Project/colourdata.txt", sep = "\t", header = TRUE)

# Filter the dataset for target (caterpillar) and background for comparison
data_target <- data[data$objecttype == 'target', ]
data_background <- data[data$objecttype == 'background', ]

# Creating the plot
ggplot() +
  geom_point(data = data_target, aes(x = B_L, y = B_yb, color = 'Target'), alpha = 0.7) +
  geom_point(data = data_background, aes(x = B_L, y = B_yb, color = 'Background'), alpha = 0.7) +
  scale_color_manual(values = c('Target' = 'red', 'Background' = 'green')) +
  labs(title = 'Comparison of Luminance and Yellow-Blue Opponent Channel',
       subtitle = 'Between Cinnabar Moth Caterpillars and Background',
       x = 'Luminance (B_L)',
       y = 'Yellow-Blue Opponent Channel (B_yb)',
       color = 'Legend') +
  theme_minimal() +
  theme(legend.title = element_blank())

        
        
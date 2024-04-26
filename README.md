# 738-Advanced-Biological-Data-Analysis

## Code Project

### Project Objective
The goal of this project is to conduct a comparative analysis between the cinnabar moth caterpillars (referred to as 'Target') and their natural background, focusing on two key aspects:

1. **Luminance (B_L):** We aim to analyze and compare the luminance levels of the caterpillars against the backdrop they inhabit, providing insights into their visibility and camouflage strategies in their natural habitat.

2. **Yellow-Blue Opponent Channel (B_yb):** This study includes an examination of the yellow-blue opponent color channel, assessing how the caterpillars' coloration stands out in relation to the yellow and blue color components of their surroundings.

### Approach
To achieve high accuracy and spatial resolution in our analysis, we utilize advanced image processing techniques and statistical methods. Our dataset comprises high-resolution images that capture the intricate details necessary for this study.

### Results
The findings of this research offer valuable contributions to the understanding of the cinnabar moth caterpillars' adaptation to their environment through luminance and color. These insights could have broader implications for the study of biological camouflage and visual perception in other species.

### How to Use This Repository
Instructions on how to navigate the repository, run the code, and reproduce the findings are provided in subsequent sections. Users can explore the code, analyze the datasets, and review the results generated by the scripts contained within.

### Structure of the Repository
- `/src`: Contains all the source code used for analysis.
- `/data`: Includes the datasets that were analyzed (subject to data sharing policies).
- `/results`: Where the output files and conclusion images are stored.


### Installation and Dependencies
ggplot2]

### Running the Code

# Load necessary libraries
[library(ggplot2)

# Get the necessary data
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


### Contributing
[Help to describe the distance-dependent aposemimatism]


### Contact Information
[H1194302389@163.com]


---
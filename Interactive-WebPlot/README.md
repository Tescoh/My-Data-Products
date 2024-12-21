# Exploring Global Development Trends with Gapminder: An Interactive R Markdown Presentation

## Overview

This project presents an interactive visualization of the Gapminder dataset using R Markdown and the Plotly library. The Gapminder dataset is a rich resource containing data on life expectancy, GDP per capita, and population for countries across the globe, spanning several decades.

Our presentation utilizes a dynamic Plotly bubble chart to explore the relationships between these key development indicators and observe how they have evolved. The animation feature of Plotly allows us to visualize the change in these indicators over time, providing a clear picture of global development trends.

## Project Structure

The project consists of the following files:

-   **`gapminder_presentation.Rmd`:** The main R Markdown file containing the code for the presentation. This file defines the slide structure, loads the data, creates the Plotly chart, and includes the explanatory text.
-   **`custom.css`:** A CSS stylesheet that provides custom styling for the presentation, including a Solarized Dark theme.
-   **`README.md`:** This file, providing an overview of the project and instructions for running the presentation.

## Getting Started

To run this presentation, you will need the following:

-   **R:** A recent version of R (4.0 or higher recommended).
-   **RStudio:** The RStudio IDE is recommended for ease of use.
-   **Required R Packages:**
    -   `rmarkdown`
    -   `gapminder`
    -   `plotly`
    -   `dplyr`

### Installation

1.  **Install R and RStudio:** If you don't already have them, download and install R from [https://www.r-project.org/](https://www.r-project.org/) and RStudio from [https://www.rstudio.com/products/rstudio/download/](https://www.rstudio.com/products/rstudio/download/).
2.  **Install Packages:** Open RStudio and run the following commands in the console to install the necessary packages:

    ```r
    install.packages(c("rmarkdown", "gapminder", "plotly", "dplyr"))
    ```

### Running the Presentation

1.  **Download Project Files:** Download or clone this repository to your local machine.
2.  **Open R Markdown File:** Open the `gapminder_presentation.Rmd` file in RStudio.
3.  **Knit the Presentation:** Click the "Knit" button at the top of the RStudio script editor pane. This will generate the HTML presentation file.
4.  **View the Presentation:** The generated HTML file will automatically open in your default web browser. You can navigate through the slides using the arrow keys or the on-screen controls.

## Key Features

-   **Interactive Bubble Chart:** The Plotly chart allows you to hover over data points to see detailed information about each country. The animation feature lets you play the changes over time or manually move the time slider.
-   **Solarized Dark Theme:** The presentation uses a visually appealing Solarized Dark theme for a comfortable viewing experience.
-   **Clear Narrative:** The presentation includes clear explanations of the data, the visualization, and the insights gained from the analysis.

## Insights

The presentation reveals several key insights into global development trends, including:

-   The positive correlation between GDP per capita and life expectancy.
-   The disparities in development levels across continents.
-   The significant progress most countries have made over time in terms of both life expectancy and GDP.

## Further Exploration

This project serves as a starting point for further exploration of the Gapminder dataset. Potential enhancements include:

-   Adding interactive controls (e.g., sliders, dropdowns) to filter data by continent or year.
-   Incorporating other variables from the Gapminder dataset.
-   Conducting more in-depth statistical analysis.

## Credits

-   **Gapminder Data:** The Gapminder Foundation ([https://www.gapminder.org/](https://www.gapminder.org/))
-   **R and RStudio:** [https://www.r-project.org/](https://www.r-project.org/), [https://www.rstudio.com/](https://www.rstudio.com/)
-   **Plotly:** [https://plotly.com/r/](https://plotly.com/r/)
-   **R Markdown:** [https://rmarkdown.rstudio.com/](https://rmarkdown.rstudio.com/)

## Contributors

-  TESLIM MOHAMMED

Feel free to contribute to this project by submitting pull requests or suggesting improvements. Enjoy exploring the data!
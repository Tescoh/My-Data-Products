# Leaflet Map Webpage

This repository contains the source code for a simple web page that displays an interactive map using Leaflet. The map is centered on the NYU Center for Data Science.

## Description

The web page is built using R Markdown and features a Leaflet map that allows users to zoom and pan. A marker is placed at the location of the NYU Center for Data Science, with a popup that displays the name of the location.

## Hosted Website

The live version of this webpage is hosted on GitHub Pages and can be accessed here: [Tescoh GitSiteL](https://tescoh.github.io/Developing-Data-Product/MyLeafletMap.html)

## Technologies Used

*   **R:** The programming language used for generating the web page.
*   **R Markdown:** A format for creating dynamic documents with R.
*   **Leaflet:** A JavaScript library for interactive maps.
*   **HTML, CSS:** For basic page structure and styling.
*   **GitHub Pages:** For hosting the web page.

## Getting Started

To run this project locally, follow these steps:

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/Tescoh/Developing-Data-Product.git
    ```

2.  **Install required packages:**

    Open R or RStudio and run:

    ```R
    install.packages(c("rmarkdown", "leaflet"))
    ```

3.  **Open `MyLeaflet.Rmd` in RStudio.**

4.  **Knit the document:**

    Click the "Knit" button in RStudio to generate the `MyLeafletMap.html` file.

5.  **Open `MyLeafletMap.html` in your browser:**

    You can now view the map locally.

## Customization

*   **Change the map center and marker:** Modify the `setView()` and `addMarkers()` functions in the `map` code chunk within `index.Rmd`.
*   **Change the map tiles:** Use the `addProviderTiles()` function with different tile providers (e.g., `providers$Stamen.Toner`, `providers$CartoDB.DarkMatter`). See the Leaflet documentation for more options.
*   **Update styling:** Modify the CSS within the `<style>` tags in `index.Rmd` or in your external CSS file to change the appearance of the page.

## Author

Teslim Mohammed

## Date Created

`r format(Sys.Date(), '%B %d, %Y')`# Developing-Data-Product
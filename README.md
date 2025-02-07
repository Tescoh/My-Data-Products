# Developing Data Products Repository

This repository contains four interactive data science projects developed using R and related technologies. Each project demonstrates different aspects of data visualization, analysis, and model building.

## Table of Contents
- [Interactive WebMap](#interactive-webmap)
- [Global Development Trends](#global-development-trends)
- [ML App iOSlides Presentation](#ml-app-ioslides-presentation)
- [Machine Learning Model Building App](#machine-learning-model-building-app)
- [Technologies Overview](#technologies-overview)
- [Getting Started](#getting-started)
- [Author](#author)

---

## Interactive WebMap
**Folder:** `Interactive-WebMap`  
A Leaflet-based interactive map centered on NYU's Center for Data Science.

### Features
- Dynamic map with zoom/pan controls.
- Custom marker with a popup at NYU's location.
- Built using R Markdown and hosted on GitHub Pages.

### Technologies
- R Markdown
- Leaflet.js
- HTML/CSS

**Live Demo:** [GitHub Pages Link](https://tescoh.github.io/My-Data-Products/MyLeafletMap.html)

---

## Global Development Trends
**Folder:** `Interactive-WebPlot`  
An animated Plotly visualization exploring Gapminder dataset trends.

### Features
- Interactive bubble chart showing GDP vs. Life Expectancy over time.
- Solarized Dark theme for visual appeal.
- Built with R Markdown and Plotly.

### Technologies
- R Markdown
- Plotly
- Gapminder dataset

**Live Demo:** [GitHub Pages Link](https://tescoh.github.io/My-Data-Products/GlobalDev-Trends.html)

---

## ML App iOSlides Presentation
**Folder:** `ML_App_Pitch`  
An iOSlides presentation showcasing the Machine Learning Model Building App.

### Features
- Widescreen iOSlides format with interactive elements.
- Screenshots of app input controls and output results.
- Links to live app and GitHub repository.
- Problem-solution narrative and feature walkthrough.

### Technologies
- R Markdown (iOSlides)
- HTML/CSS
- Shiny integration

**Live Demo:** [GitHub Pages Link](https://tescoh.github.io/My-Data-Products/ModelBuilding_App_Pitch.html)

---

## Machine Learning Model Building App
**Folder:** `MachineLearning App`  
A Shiny app for building and evaluating regression/decision tree models.

### Features
- Dataset selection (`mtcars`, `iris`, `Boston`).
- Interactive variable selection and model training.
- Diagnostic plots and performance metrics.
- Cross-validation support.

### Technologies
- Shiny
- RStudio
- `caret`, `rpart`, `ggplot2`

**Live Demo:** [ShinyApps.io Link](https://ml73o6-mohammed-teslim.shinyapps.io/machinelearning_app/)

---

## Technologies Overview
- **R**: Core programming language.
- **R Markdown**: For dynamic report generation.
- **Leaflet/Plotly**: Interactive visualizations.
- **Shiny**: Web app framework.
- **GitHub Pages**: Hosting static content.

---

## Getting Started

### Prerequisites
- R (≥4.0) and RStudio.
- Required R packages:
  ```R
  install.packages(c("rmarkdown", "leaflet", "plotly", "shiny", "caret", "rpart"))
  ```
## Clone the Repository

```bash
git clone https://github.com/Tescoh/Developing-Data-Product.git
```

## Run Projects

### Interactive WebMap

Open `MyLeafletMap.Rmd` in RStudio → Click Knit.

### Global Development Trends

Open `GlobalDev-Trends.Rmd` → Click Knit.

### Machine Learning App

Open `app.R` → Click Run App.


## Author

Teslim Mohammed

GitHub: [@Tescoh](https://github.com/Tescoh)

## Date Created

December 21, 2024


  

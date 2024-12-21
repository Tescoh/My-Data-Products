# Interactive Model Building Shiny App

This repository contains the code for an interactive Shiny app that allows users to build and evaluate linear regression and decision tree models.

## App Description

The app provides a user-friendly interface for exploring datasets, selecting variables, training models, and visualizing results. It's designed to be a helpful tool for learning about statistical modeling concepts and experimenting with different models and datasets.

**Key Features:**

*   **Dataset Selection:** Choose from pre-loaded datasets (`mtcars`, `iris`, `Boston`).
*   **Variable Selection:** Interactively select dependent and independent variables.
*   **Model Selection:** Build either a linear regression or a decision tree model.
*   **Train/Test Split:** Control the proportion of data used for training and testing.
*   **Cross-Validation:** 10-fold cross-validation is used during model training for more robust performance estimation.
*   **Model Summary:** View detailed model summaries (coefficients, p-values for linear regression; tree structure for decision trees).
*   **Evaluation Metrics:** Assess model performance on a test set using metrics like R-squared, RMSE, MAE (for linear regression) and Accuracy, Precision, Recall, F1-score (for decision trees).
*   **Diagnostic Plots:** Generate diagnostic plots to evaluate model assumptions and identify potential issues (e.g., residual plots for linear regression, tree visualization for decision trees).

## Live Demo

[Click here to access the live app deployed on shinyapps.io](https://ml73o6-mohammed-teslim.shinyapps.io/machinelearning_app/)


## How to Run Locally

1.  **Clone the Repository:**

    ```bash
    git clone https://github.com/Tescoh/Developing-Data-Product.git
    ```

    Replace `(https://github.com/Tescoh/Developing-Data-Product.git)>` with the URL of your GitHub repository.

2.  **Install Required Packages:**

    Open R or RStudio and install the necessary packages:

    ```R
    install.packages(c("shiny", "shinydashboard", "ggplot2", "dplyr", "rpart", "rpart.plot", "caret", "e1071"))
    ```

3.  **Run the App:**

    In RStudio, open either `ui.R` or `server.R` and click the "Run App" button. Alternatively, in the R console, navigate to the app's directory and use:

    ```R
    shiny::runApp()
    ```

## App Structure

*   **`ui.R`:** Defines the user interface layout and input controls.
*   **`server.R`:** Contains the server-side logic for data processing, model training, and output generation.
*   **`documentation.Rmd`:** Provides detailed documentation on how to use the app (rendered as `documentation.html` within the app).

## Datasets

*   **`mtcars`:** Motor Trend Car Road Tests (1974) - Data on car design and performance.
*   **`iris`:** Iris Flower Dataset (Fisher, 1936) - Measurements of sepal and petal length/width for three iris species.
*   **`Boston`:** Boston Housing Dataset (Harrison & Rubinfeld, 1978) - Housing values and other factors in Boston suburbs.

## Dependencies

The app relies on the following R packages:

*   `shiny`
*   `shinydashboard`
*   `ggplot2`
*   `dplyr`
*   `rpart`
*   `rpart.plot`
*   `caret`
*   `e1071`

## Contributing

Contributions to this project are welcome! If you find any bugs or have suggestions for improvements, please feel free to open an issue or submit a pull request on GitHub.


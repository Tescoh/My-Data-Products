library(shiny)
library(shinydashboard)
library(ggplot2)
library(dplyr)
library(rpart)
library(rpart.plot)
library(caret)
library(e1071)
library(markdown)

server <- function(input, output, session) {
  
  # Reactive dataset selection
  dataset <- reactive({
    switch(input$dataset,
           "mtcars" = mtcars,
           "iris" = iris,
           "Boston" = MASS::Boston)
  })
  
  # Dynamic UI for dependent variable
  output$dependent_variable_ui <- renderUI({
    selectInput("dependent_variable", "Select Dependent Variable:",
                choices = names(dataset()))
  })
  
  # Dynamic UI for independent variables
  output$independent_variables_ui <- renderUI({
    checkboxGroupInput("independent_variables", "Select Independent Variables:",
                       choices = setdiff(names(dataset()), input$dependent_variable),
                       selected = setdiff(names(dataset()), input$dependent_variable)[1])
  })
  
  # Reactive data splitting
  train_data <- reactive({
    req(input$dependent_variable, input$independent_variables)
    
    data <- dataset()
    data <- na.omit(data)
    
    trainIndex <- createDataPartition(data[[input$dependent_variable]], 
                                      p = input$train_split / 100, 
                                      list = FALSE)
    data[trainIndex, ]
  })
  
  test_data <- reactive({
    req(input$dependent_variable, input$independent_variables)
    
    data <- dataset()
    data <- na.omit(data)
    
    trainIndex <- createDataPartition(data[[input$dependent_variable]], 
                                      p = input$train_split / 100, 
                                      list = FALSE)
    data[-trainIndex, ]
  })
  
  # Reactive model training with cross-validation
  model <- reactive({
    req(input$dependent_variable, input$independent_variables, input$model_type)
    
    formula <- as.formula(paste(input$dependent_variable, "~", 
                                paste(input$independent_variables, collapse = "+")))
    
    fitControl <- trainControl(method = "cv", number = 10)
    
    if (input$model_type == "Linear Regression") {
      model <- train(formula, data = train_data(), method = "lm", trControl = fitControl)
    } else {
      model <- train(formula, data = train_data(), method = "rpart", trControl = fitControl, tuneLength = 10)
    }
    
    model
  })
  
  # Model summary output (with fix for linear regression)
  output$model_summary <- renderPrint({
    tryCatch({
      # Attempt to print the model summary
      if (input$model_type == "Linear Regression") {
        # Print the summary of the finalModel from the train object
        summary(model()$finalModel)
      } else {
        print(model())
      }
    }, error = function(e) {
      # Handle errors gracefully
      cat("An error occurred while generating the model summary:\n", conditionMessage(e), "\n")
    })
  })
  
  # ... (rest of the server.R code)
  
  # Reactive evaluation metrics (with fix for factor level mismatch)
  evaluation_metrics <- reactive({
    req(model(), test_data(), input$model_type)
    
    predictions <- predict(model(), newdata = test_data())
    actuals <- test_data()[[input$dependent_variable]]
    
    if (input$model_type == "Linear Regression") {
      # Ensure predictions and actuals are numeric
      predictions <- as.numeric(predictions)
      actuals <- as.numeric(actuals)
      
      data.frame(
        RMSE = RMSE(predictions, actuals),
        Rsquared = R2(predictions, actuals),
        MAE = MAE(predictions, actuals)
      )
    } else {
      # Ensure actuals are a factor
      actuals <- as.factor(actuals)
      
      # Get the levels from the training data
      train_levels <- levels(train_data()[[input$dependent_variable]])
      
      # Ensure predictions are a factor with the same levels as training data
      predictions <- factor(predictions, levels = train_levels)
      
      # Ensure actuals have the same levels
      actuals <- factor(actuals, levels = train_levels)
      
      # Now calculate the confusion matrix and metrics
      cm <- confusionMatrix(predictions, actuals)
      
      # Extract metrics and format nicely
      data.frame(
        Metric = c("Accuracy", "Precision", "Recall", "F1"),
        Value = c(cm$overall[["Accuracy"]],
                  cm$byClass[["Precision"]],
                  cm$byClass[["Recall"]],
                  cm$byClass[["F1"]])
      )
    }
  })
  
  # Evaluation metrics output
  output$evaluation_metrics <- renderTable({
    tryCatch({
      evaluation_metrics()
    }, error = function(e) {
      # Handle errors and display a message
      data.frame(Error = conditionMessage(e))
    })
  })
  
  # Linear Regression Diagnostic Plots
  output$lm_plot1 <- renderPlot({
    req(model(), input$model_type == "Linear Regression")
    par(mfrow = c(2, 2))
    plot(model()$finalModel, which = 1)
  })
  
  output$lm_plot2 <- renderPlot({
    req(model(), input$model_type == "Linear Regression")
    par(mfrow = c(2, 2))
    plot(model()$finalModel, which = 2)
  })
  
  output$lm_plot3 <- renderPlot({
    req(model(), input$model_type == "Linear Regression")
    par(mfrow = c(2, 2))
    plot(model()$finalModel, which = 3)
  })
  
  output$lm_plot4 <- renderPlot({
    req(model(), input$model_type == "Linear Regression")
    par(mfrow = c(2, 2))
    plot(model()$finalModel, which = 5)
  })
  
  # Decision Tree Diagnostic Plots
  output$dt_plot1 <- renderPlot({
    req(model(), input$model_type == "Decision Tree")
    rpart.plot(model()$finalModel, extra = 101)
  })
  
  output$dt_plot2 <- renderPlot({
    req(model(), input$model_type == "Decision Tree")
    # Ensure variable importance plot is appropriate for the model
    if (length(model()$finalModel$variable.importance) > 0) {
      barplot(model()$finalModel$variable.importance, 
              main = "Variable Importance", 
              ylab = "Importance",
              col = "skyblue")
    } else {
      plot(0, type = 'n', axes = FALSE, ann = FALSE, 
           main = "Variable Importance Not Available")
    }
  })
}
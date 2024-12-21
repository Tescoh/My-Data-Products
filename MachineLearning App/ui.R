library(shiny)
library(shinydashboard)
library(ggplot2)
library(dplyr)
library(rpart)
library(rpart.plot)
library(caret)
library(markdown)

# Define UI for application
ui <- dashboardPage(
  dashboardHeader(title = "Interactive Model Building"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Model Building", tabName = "model_building", icon = icon("dashboard")),
      menuItem("Documentation", tabName = "documentation", icon = icon("book"))
    ),
    
    # Input controls
    selectInput("dataset", "Select Dataset:",
                choices = c("mtcars", "iris", "Boston")),
    
    uiOutput("dependent_variable_ui"), # Dynamic UI for dependent variable
    
    uiOutput("independent_variables_ui"), # Dynamic UI for independent variables
    
    radioButtons("model_type", "Select Model Type:",
                 choices = c("Linear Regression", "Decision Tree")),
    
    sliderInput("train_split", "Train/Test Split (% Train):",
                min = 0, max = 100, value = 80, step = 5)
  ),
  
  dashboardBody(
    tabItems(
      # Model Building Tab
      tabItem(tabName = "model_building",
              fluidRow(
                box(title = "Model Summary", width = 6,
                    verbatimTextOutput("model_summary")
                ),
                box(title = "Evaluation Metrics", width = 6,
                    tableOutput("evaluation_metrics")
                )
              ),
              fluidRow(
                tabBox(title = "Diagnostic Plots", width = 12,
                       # Linear Regression Plots
                       tabPanel("Linear Regression",
                                plotOutput("lm_plot1"),
                                plotOutput("lm_plot2"),
                                plotOutput("lm_plot3"),
                                plotOutput("lm_plot4")
                       ),
                       # Decision Tree Plots
                       tabPanel("Decision Tree", 
                                plotOutput("dt_plot1"),
                                plotOutput("dt_plot2")
                       )
                )
              )
      ),
      # Documentation Tab
      tabItem(tabName = "documentation",
              includeMarkdown("documentation.Rmd") # Assuming you have a file named documentation.Rmd
      )
    )
  )
)
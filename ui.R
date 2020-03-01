
suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
suppressWarnings(library(shinythemes))
shinyUI( 
  
  navbarPage(
    
    
    theme = shinytheme("cosmo"),
    "Data Science Specialization: Final Project",
    
    tabPanel("Predict the Next Word - Final Project",
             HTML("<strong>Janneke Schipper</strong>"),
             br(),
             HTML("<strong>Date: 01-03-2020 </strong>"),
             br(),
             #img(src = "./headers.png" , height="100px"),
             # Sidebar
             sidebarLayout(
               sidebarPanel(
                 helpText("Please enter an incomplete sentence, to predict  the next word"),
                 textInput("inputString", "Enter the partial sentence here",value = ""),
                 br(),
                 br(),
                 br(),
                 br()
               ),
               mainPanel(
                 h2("Predicted Next Word"),
                 verbatimTextOutput("prediction"),
                 strong("Sentence Input:"),
                 tags$style(type='text/css', '#text1 {background-color: pink ; color: firebrick;}'), 
                 textOutput('text1'),
                 br(),
                 strong("Note:"),
                 tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: firebrick;}'),
                 textOutput('text2')
               )
             )
             
    )
    
  )
)
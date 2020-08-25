library(shiny)
library(ggplot2)

dataset <- diamonds

shinyUI(fluidPage(
    title = "다이아몬드 익스플로러",
    plotOutput('plot'),
    hr(),
    fluidRow(
      column(3, 
        h4("Diamonds Explorer"),
        sliderInput('sampleSize', '샘플 사이즈', min=1, max=nrow(dataset), 
          value=min(1000, nrow(dataset)),
          step=500, round=0),
        br(),
        checkboxInput('jitter', 'Jitter'),
        checkboxInput('smooth', 'Smooth')
      ),
      column(4, offset = 1,
        selectInput('x', 'X', names(dataset)),
        selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
        selectInput('color', 'Color', c('None', names(dataset)))
      ),
      column(4,
        selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
        selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
      )
    )
))

library(shiny)

shinyUI(fluidPage(
  titlePanel("title pane"),
  sidebarLayout(
    sidebarPanel('sidebar panel'),
    mainPanel('main panel',
      br(),
      h1("Title level first"),
      h2("Title level second"),
      h3("Title level third"),
      h4("Title level fourth", align="justify"),
      h5("Title level fifth", align="right"),
      h6("Title level sixth", align="center"),
      p("p craetes a paragraph of text. This paragraph is followed by br()"),
      strong("strong() makes bold text."),
      em("And em() makes italicized text."),
      code("code displays your text like computer code"),
      div("use span and div to create segments of text"),
      p("span does the same thing, but it works with",
        span("groups of words", style="color:blue"),
        "that appear inside a paragraph."
      ),
      img(src='a.png', height=150, width=300),
      h2("Basic widgets"),
      fluidRow(
        column(3,
          h3("Buttons"),
          actionButton("action", label="Action", class="btn-warning"),
          br(),br(),
          submitButton("Submit")
        ),
        column(3,
          h3("Single checkbox"),
          checkboxInput("checkbox", label="Choice A", value=TRUE)
        ),
        column(3,
          checkboxGroupInput("checkGroup",
            label = h3("Checkbox group"),
            choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
            selected = c(2,3)
          )
        ),
        column(3,
          dateInput("data",
            label = h3("Date input"),
            value = "2014-01-01"
          )
        )
      ),
      fluidRow(
        column(3,
          dateRangeInput("dates", label = h3("Date range"))
        ),
        column(3,
          fileInput("file", label=h3("File inputs"))
        ),
        column(3,
          h3("Help text"),
          helpText("Note: help text isn't a true widget,",
            "but it provieds an easy way to add text to")
        ),
        column(3,
          numericInput("num",
            label = h3("Numeric input"),
            value = 1
          )
        )
      ),
      fluidRow(
        column(3,
          radioButtons("radio", label=h3("Radio buttons"),
            choices = list("Choice 1" = 1, "Choices 2" = 2,
              "Choice 3" = 3, "Choice 4" = 4
            ), selected = 4
          )
        ),
        column(3,
          selectInput("select", label= h3("Select box"),
            choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3"=3), selected =3
          )
        ),
        column(3,
          sliderInput("slider1", label = h3("Sliders"),
            min=0, max=100, value=50),
          sliderInput("slider2", "", min=0, max=100, value= c(25, 75))
        ),
        column(3,
          textInput("text", label = h3("Text input"), placeholder="Enter text...")
        )
      )
    )
  )
))
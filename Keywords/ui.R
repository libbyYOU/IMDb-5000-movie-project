library(ggvis)


fluidPage(
  titlePanel("Keywords Visualization"),
  fluidRow(
    column(3,
           wellPanel(
             sliderInput("score_coef", "Score Coefficient:",
                         min = -0.055, max = 0.14,
                         value = c(-0.02,0.08), step = 0.001
             ),
             sliderInput("gross_coef", "Gross Coefficient:",
                         min = -0.260, max = 1.74,
                         value = c(-0.02,0.08), step = 0.001
             )
           )
    ),
    column(9,
           ggvisOutput("plot1")
    )
  )
)


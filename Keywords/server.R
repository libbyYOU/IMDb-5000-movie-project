
library(ggvis)
library(dplyr)

keywords = read.csv("keywords.csv")

function(input, output, session) {
  keywords <- reactive({
    min_score = input$score_coef[1]
    max_score = input$score_coef[2]
    min_gross = input$gross_coef[1]
    max_gross = input$gross_coef[2]
    
    # Apply filters
    m = keywords %>%
      filter(
        score_coef>=min_score,
        socre_coef<=max_score,
        gross_coef>=min_gross,
        gross_coef<=max_gross
      )

    m = as.data.frame(m)
    m
  })
  
  # Function for generating tooltip text
  movie_tooltip <- function(x) {
    if (is.null(x)) return(NULL)
    if (is.null(x$keywords)) return(NULL)
    
    keyword <- keywords
    
    paste0("<b>", keyword$keywords, "</b><br>",
           "Score_Coefficient:",keyword$score_coef,"<br>",
           "Gross_Coefficient",keyword$gross_coef
    )
  }
  
  xvar <- prop("x", as.symbol("score_coef"))
  yvar <- prop("y", as.symbol("gross_coef"))
  
  vis <- reactive({
    
    keywords %>%
      ggvis(x = xvar, y = yvar) %>%
      layer_points(size := 50, size.hover := 200,
                   fillOpacity := 0.2, fillOpacity.hover := 0.5,
                   key := ~keywords) %>%
      add_tooltip(movie_tooltip, "hover") %>%
      add_axis("x", title = "Score Cofficient") %>%
      add_axis("y", title = "Gross Cofficient") %>%
      set_options(width = 500, height = 500)
  })
  
  vis %>% bind_shiny("plot1")
  
}
#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: ui.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################

shinyUI(navbarPage("cricketr analyzes Cricketers!",
                   # Batsman tab
                   tabPanel("Analyze batsman",
                            titlePanel("Analyze batsman"),
  
                            fluidRow(
                                column(3,
                                       radioButtons("matchType", label = h3("Match type"),
                                                    choices = list("Test" = "Test",
                                                                   "ODI" = "ODI", 
                                                                   "Twenty20" = "TT"), 
                                                    inline=TRUE,
                                                    selected = "Test"),
                                       uiOutput("batsmanList"),
                                       uiOutput("batsmanFunctionList") 
                                      
                                ),
  
                                # Show a plot of the generated distribution        
                                column(6,
                                       plotOutput("batsmanPlot"),
                                       textOutput("text1")
                                ),
                                column(7, offset=4,
                                       tags$h5((tags$i("Designed and developed by Tinniam V Ganesh"))),
                                       tags$h5((tags$i("Nov 28,2015"))),
                                       tags$h6("Data source ESPN Cricinfo: http://stats.espncricinfo.com/ci/engine/stats/index.html")
                                )
                            )
                   ),
                   # Bowlers tab
                  tabPanel("Analyze bowlers",
                            # Application title
                            titlePanel("Analyze bowlers"),
                            
                            fluidRow(
                                column(3,
                                       radioButtons("matchType1", label = h3("Match type"),
                                                    choices = list("Test" = "Test",
                                                                   "ODI" = "ODI", 
                                                                   "Twenty20" = "TT"), 
                                                    inline=TRUE,
                                                    selected = "Test"),
                                       uiOutput("bowlerList"),
                                       uiOutput("bowlerFunctionList") 
                                ),
                                
                                # Show a plot of the generated distribution        
                                column(6,
                                       plotOutput("bowlerPlot")
                                ),
                                column(7, offset=4,
                                       tags$h5((tags$i("Designed and developed by Tinniam V Ganesh"))),
                                       tags$h5((tags$i("Nov 28,2015"))),
                                       tags$h6("Data source ESPN Cricinfo: http://stats.espncricinfo.com/ci/engine/stats/index.html")
                                )
                            )    
                           
                   ),
                  #Relative batsmen plot
                  tabPanel("Relative performance batsman",
                           # Application title
                           titlePanel("Relative performance batsman"),
                           
                           fluidRow(
                               column(3,
                                      radioButtons("matchType3", label = h3("Match type"),
                                                   choices = list("Test" = "Test",
                                                                  "ODI" = "ODI", 
                                                                  "Twenty20" = "TT"), 
                                                   inline=TRUE,
                                                   selected = "Test"),
                                      uiOutput("relBatsmen"),
                                      uiOutput("relBatsmenFunction") 
                               ),
                               
                               # Show a plot of the generated distribution        
                               column(6,
                                      plotOutput("relBatsmenPlot")
                               ),
                               column(7, offset=4,
                                      tags$h5((tags$i("Designed and developed by Tinniam V Ganesh"))),
                                      tags$h5((tags$i("Nov 28,2015"))),
                                      tags$h6("Data source ESPN Cricinfo: http://stats.espncricinfo.com/ci/engine/stats/index.html")
                               )
                           )    
                           
                  ),
                  tabPanel("Relative performance of bowlers",
                           # Application title
                           titlePanel("Relative performance of bowlers"),
                           
                           fluidRow(
                               column(3,
                                      radioButtons("matchType4", label = h3("Match type"),
                                                   choices = list("Test" = "Test",
                                                                  "ODI" = "ODI", 
                                                                  "Twenty20" = "TT"), 
                                                   inline=TRUE,
                                                   selected = "Test"),
                                      uiOutput("relBowlers"),
                                      uiOutput("relBowlersFunction") 
                               ),
                               
                               # Show a plot of the generated distribution        
                               column(6,
                                      plotOutput("relBowlersPlot")
                               ),
                               column(7, offset=4,
                                      tags$h5((tags$i("Designed and developed by Tinniam V Ganesh"))),
                                      tags$h5((tags$i("Nov 28,2015"))),
                                      tags$h6("Data source ESPN Cricinfo: http://stats.espncricinfo.com/ci/engine/stats/index.html")
                               )
                           )    
                           
                  ),
                  # Tab for In-Form status for both batsman & bowler
                  tabPanel("In-form status",
                           
                           titlePanel("In form status"),
                           
                           fluidRow(
                               column(3,
                                      radioButtons("matchType5", label = h3("Match type"),
                                                   choices = list("Test" = "Test",
                                                                  "ODI" = "ODI", 
                                                                  "Twenty20" = "TT"), 
                                                   inline=TRUE,
                                                   selected = "Test"),
                                      radioButtons("playerType", label = h3("PlayerType"),
                                                   choices = list("Batsman" = "Batsman",
                                                                  
                                                                  "Bowler" = "Bowler"), 
                                                   inline=TRUE,
                                                   selected = "Batsman"),
                                      uiOutput("playerList")
                                      
                               ),
                               
                               # Show a plot of the generated distribution        
                               column(6,
                                      verbatimTextOutput("status")
                                      #plotOutput("relBowlersPlot")
                               ),
                               column(7, offset=4,
                                      tags$h5((tags$i("Designed and developed by Tinniam V Ganesh"))),
                                      tags$h5((tags$i("Nov 28,2015"))),
                                      tags$h6("Data source ESPN Cricinfo: http://stats.espncricinfo.com/ci/engine/stats/index.html")
                               )
                           )    
                           
                  ),
               
                   tabPanel("About",
                  h2("Sixer - cricketr's Shiny avatar"),
                  p("This Shiny app is based on the R package 'cricketr'. In this Shiny app, I use  the
                    cricketr package to analyze the performances of cricketers. cricketr can analyze batsman
                    and bowlers in all formats of the game namely Test, ODI and Twenty20."),
                  p("The R package 'cricketr' has been authored by Tinniam V Ganesh for analyzing  performances of cricketers
                    based on ESPN Cricinfo's Statsguru"),
                  p("This Shiny app 'Sixer' has been designed and developed by  Tinniam V Ganesh, Nov 2015"),
                  p("The data for this Shiny app has been taken from ESPN Cricinfo - http://www.espncricinfo.com/ci/content/stats/index.html"),
                  p("More details about this app and for other posts, see my blog
                    http://gigadom.wordpress.com/")
                   )
                   
))

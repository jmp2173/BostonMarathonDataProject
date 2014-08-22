times <- read.table("data/BostonQualifyingPaces.txt",header=TRUE,sep="")

shinyUI(navbarPage("2015 Boston Marathon Qualifying Times",
                   tabPanel("Documentation",
  headerPanel("App Documentation"),
  mainPanel(h5('Welcome to the 2015 Boston Qualifying Times App.  Here you will be able to search for the time you need to qualify for the race and also see what pace per mile that is for the 26.2 miles race.  Furthermore, you will also find a list of what overall time you will be at after each mile.  To work this app, please select your age group from the drop down menu and gender from the list on the left panel.  Then, hit the "Submit" button.  On the right, your qualifying time, pace per mile, and a graph showing your running time at each mile will appear.  Enjoy, and good luck!'),
            h6('Source for Age Group Times:  http://www.baa.org/races/boston-marathon/participant-information/qualifying/qualifying-procedure.aspx'))),
                   tabPanel("App",pageWithSidebar(
  headerPanel("Marathon Qualifying Pace Per Age Group"),
  sidebarPanel(
  selectInput("id2","Age",
                list("0-17" = "0-17",
                     "18-34" = "18-34",
                     "35-39" = "35-39",
                     "40-44" = "40-44",
                     "45-49" = "45-49",
                     "50-54" = "50-54",
                     "55-59" = "55-59",
                     "60-64" = "60-64",
                     "65-69" = "65-69",
                     "70-74" = "70-74",
                     "75-79" = "75-79",
                     "80 and over" = "80 and over")),
    radioButtons("id3","Gender",
                 list("Male"= "Male",
                      "Female" = "Female")),
    submitButton("Submit")
  ),
  mainPanel(
    h3('Results'),
    h4('Your Age Bracket'),
    verbatimTextOutput("oid2"),
    h4('Your Gender'),
    verbatimTextOutput("oid3"),
    h4('Your Qualifying Time'),
    verbatimTextOutput("oidprediction1"),
    h4('Your Pace Per Mile'),
    textOutput("prediction2"),
    h4('Plot of Time At Each Mile'),
    plotOutput("prediction3")
  )
))
))
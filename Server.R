library(shiny)

library(ggplot2)
times2 <- read.table("data/PaceChart.txt",header=TRUE,sep="")
plot1 <- qplot(data=times2,Mile,ThreeFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot2 <- qplot(data=times2,Mile,ThreeTen)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot3 <- qplot(data=times2,Mile,ThreeFifteen)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot4 <- qplot(data=times2,Mile,ThreeTwentyFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot5 <- qplot(data=times2,Mile,ThreeThirty)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot6 <- qplot(data=times2,Mile,ThreeThirtyFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot7 <- qplot(data=times2,Mile,ThreeForty)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot8 <- qplot(data=times2,Mile,ThreeFortyFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot9 <- qplot(data=times2,Mile,ThreeFiftyFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot10 <- qplot(data=times2,Mile,Four)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot11 <- qplot(data=times2,Mile,FourTen)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot12 <- qplot(data=times2,Mile,FourTwentyFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot13 <- qplot(data=times2,Mile,FourForty)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot14 <- qplot(data=times2,Mile,FourFiftyFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot15 <- qplot(data=times2,Mile,FiveTen)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))
plot16 <- qplot(data=times2,Mile,FiveTwentyFive)+ylab("Time")+scale_x_continuous(breaks=seq(1,26,1))

shinyServer(function(input, output) {
  output$oid2 <- renderPrint({input$id2})
  output$oid3 <- renderPrint({input$id3})
  output$oidprediction1 <- renderText({
    if (input$id2 == "0-17") {"You are not eligible to run Boston if you are not 18 or over."}                  
    else if (input$id2 == "18-34" & input$id3=="Male") "03:05:00"
    else if (input$id2 == "35-39" & input$id3=="Male") "03:10:00"
    else if (input$id2 == "40-44" & input$id3=="Male") "03:15:00"
    else if (input$id2 == "45-49" & input$id3=="Male") "03:25:00"
    else if (input$id2 == "50-54" & input$id3=="Male") "03:30:00"
    else if (input$id2 == "55-59" & input$id3=="Male") "03:40:00"
    else if (input$id2 == "60-64" & input$id3=="Male") "03:55:00"
    else if (input$id2 == "65-69" & input$id3=="Male") "04:10:00"
    else if (input$id2 == "70-74" & input$id3=="Male") "04:25:00"
    else if (input$id2 == "75-79" & input$id3=="Male") "04:40:00"
    else if (input$id2 == "80 and over" & input$id3=="Male") "04:55:00"
    else if (input$id2 == "18-34" & input$id3=="Female") "03:35:00"
    else if (input$id2 == "35-39" & input$id3=="Female") "03:40:00"
    else if (input$id2 == "40-44" & input$id3=="Female") "03:45:00"
    else if (input$id2 == "45-49" & input$id3=="Female") "03:55:00"
    else if (input$id2 == "50-54" & input$id3=="Female") "04:00:00"
    else if (input$id2 == "55-59" & input$id3=="Female") "04:10:00"
    else if (input$id2 == "60-64" & input$id3=="Female") "04:25:00"
    else if (input$id2 == "65-69" & input$id3=="Female") "04:40:00"
    else if (input$id2 == "70-74" & input$id3=="Female") "04:55:00"
    else if (input$id2 == "75-79" & input$id3=="Female") "05:10:00"
    else if (input$id2 == "80 and over" & input$id3=="Female") "05:25:00"
    })
  output$prediction2 <- renderText({
  if (input$id2 == "0-17") {"You are not eligible to run Boston if you are not 18 or over."}                  
  else if (input$id2 == "18-34" & input$id3=="Male") "07:04"
  else if (input$id2 == "35-39" & input$id3=="Male") "07:15"
  else if (input$id2 == "40-44" & input$id3=="Male") "07:27"
  else if (input$id2 == "45-49" & input$id3=="Male") "07:49"
  else if (input$id2 == "50-54" & input$id3=="Male") "08:01"
  else if (input$id2 == "55-59" & input$id3=="Male") "08:24"
  else if (input$id2 == "60-64" & input$id3=="Male") "08:58"
  else if (input$id2 == "65-69" & input$id3=="Male") "09:33"
  else if (input$id2 == "70-74" & input$id3=="Male") "10:07"
  else if (input$id2 == "75-79" & input$id3=="Male") "10:41"
  else if (input$id2 == "80 and over" & input$id3=="Male") "11:16"
  else if (input$id2 == "18-34" & input$id3=="Female") "08:12"
  else if (input$id2 == "35-39" & input$id3=="Female") "08:24"
  else if (input$id2 == "40-44" & input$id3=="Female") "08:35"
  else if (input$id2 == "45-49" & input$id3=="Female") "08:58"
  else if (input$id2 == "50-54" & input$id3=="Female") "09:10"
  else if (input$id2 == "55-59" & input$id3=="Female") "09:33"
  else if (input$id2 == "60-64" & input$id3=="Female") "10:07"
  else if (input$id2 == "65-69" & input$id3=="Female") "10:41"
  else if (input$id2 == "70-74" & input$id3=="Female") "11:16"
  else if (input$id2 == "75-79" & input$id3=="Female") "11:50"
  else if (input$id2 == "80 and over" & input$id3=="Female") "12:24"
  })
  
  output$prediction3 <- renderPlot({
    if (input$id2 == "0-17") {"You are not eligible to run Boston if you are not 18 or over."}                  
    else if (input$id2 == "18-34" & input$id3=="Male") plot1
    else if (input$id2 == "35-39" & input$id3=="Male") plot2
    else if (input$id2 == "40-44" & input$id3=="Male") plot3
    else if (input$id2 == "45-49" & input$id3=="Male") plot4
    else if (input$id2 == "50-54" & input$id3=="Male") plot5
    else if (input$id2 == "55-59" & input$id3=="Male") plot7
    else if (input$id2 == "60-64" & input$id3=="Male") plot9
    else if (input$id2 == "65-69" & input$id3=="Male") plot11    
    else if (input$id2 == "70-74" & input$id3=="Male") plot12
    else if (input$id2 == "75-79" & input$id3=="Male") plot13
    else if (input$id2 == "80 and over" & input$id3=="Male") plot14
    else if (input$id2 == "18-34" & input$id3=="Female") plot6
    else if (input$id2 == "35-39" & input$id3=="Female") plot7    
    else if (input$id2 == "40-44" & input$id3=="Female") plot8
    else if (input$id2 == "45-49" & input$id3=="Female") plot9
    else if (input$id2 == "50-54" & input$id3=="Female") plot10
    else if (input$id2 == "55-59" & input$id3=="Female") plot11
    else if (input$id2 == "60-64" & input$id3=="Female") plot12
    else if (input$id2 == "65-69" & input$id3=="Female") plot13
    else if (input$id2 == "70-74" & input$id3=="Female") plot14
    else if (input$id2 == "75-79" & input$id3=="Female") plot15
    else if (input$id2 == "80 and over" & input$id3=="Female") plot16
  })
})
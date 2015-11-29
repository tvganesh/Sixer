#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: bowlers.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
analyzeBowler <- function(name,func,matchType) {
    
    # Return when name is NULL at start
    if(is.null(name))
        return()
    
    # Map bowler name
    bowler <- mapBowler(name)
    if(matchType == "Test") {
        file <- paste("./data/test/bowler/",bowler,".csv",sep="")
        filesp <- paste("./data/test/bowler/", bowler,"sp.csv",sep="")
        print(file)
    } else if(matchType == "ODI"){
        file <- paste("./data/odi/bowler/",bowler,".csv",sep="")
        filesp <- paste("./data/odi/bowler/",bowler,"sp.csv",sep="")
        print(file)
    } else {
        file <- paste("./data/tt/bowler/",bowler,".csv",sep="")
        filesp <- paste("./data/tt/bowler/",bowler,"sp.csv",sep="")
        print(file)
    }
    
    # Check if file exists in the directory. This check is necessary when moving between matchType
    if(!file.exists(file))
        return()
    
    # Call appropriate cricketr function
    if(func =="Bowler's Avg Wickets at Ground"){
        bowlerAvgWktsGround(file,name)
    } else if (func == "Bowler's Avg Wicket against opposition"){
        bowlerAvgWktsOpposition(file,name)
    } else if (func == "Contribution to wins & losses"){
        bowlerContributionWonLost(filesp,name)
    } else if (func == "Bowler's Economy Rate"){
        bowlerEconRate(file,name)
    } else if (func == "Bowler's Wickets performance"){
        bowlerHistWickets(file,name)
    } else if (func == "Bowler's Moving Average"){
        bowlerMovingAverage(file,name)
    } else if (func == "Bowler's Perf. Forecast"){
        bowlerPerfForecast(file,name)
    } else if (func == "Bowler's Perf. Home-Away"){
        bowlerPerfHomeAway(filesp,name)
    } else if (func == "Bowler's Wickets-Runs plot"){
        bowlerWktsRunsPlot(file,name)
    } else if (func == "Bowler's Wickets Freq Percent"){
        bowlerWktsFreqPercent(file,name)
    } else if (func == "Bowler's Wickets-Runs plot"){
        bowlerWktsRunsPlot(file,name)
    } else if (func == "Check Bowler Form status"){
        checkBowlerInForm(file,name)
    } else if (func == "Bowler Wicket Rate"){
        bowlerWktRateTT(file,name)
    } 
    
}   

# Map bowler names to file
mapBowler <- function(name){
    bowler <- NULL
    if(name == "Anil Kumble"){
        bowler <- "kumble"
    } else if (name == "Shane Warne"){
        bowler = "warne"
    } else if (name == "Muthiah Muralitharan"){
        bowler = "murali"
    } else if (name == "Kapil Dev"){
        bowler = "kapil"
    } else if (name == "B S Chandrasekhar"){
        bowler = "chandra"
    } else if (name == "Bishen Sigh Bedi"){
        bowler = "bedi"
    } else if (name == "E A S Prasanna"){
        bowler = "prasanna"
    } else if (name == "S Venkataraghavan"){
        bowler = "venkat"
    } else if (name == "B S Chandrasekhar"){
        bowler = "chandra"
    } else if (name == "Imran Khan"){
        bowler = "imran"
    } else if (name == "Wasim Akram"){
        bowler = "akram"
    } else if (name == "Waqar Younis"){
        bowler = "younis"
    } else if (name == "Andy Roberts"){
        bowler = "roberts"
    } else if (name == "Michael Holding"){
        bowler = "holding"
    } else if (name == "Malcolm Marshall"){
        bowler = "marshall"
    } else if (name == "Allan Donald"){
        bowler = "donald"
    } else if (name == "Mitchell Johnson"){
        bowler = "johnson"
    } else if (name == "Dale Steyn"){
        bowler = "steyn"
    } else if (name == "Stuart Broad"){
        bowler = "broad"
    } else if (name == "James Anderson"){
        bowler = "anderson"
    } else if (name == "Dennis Lillee"){
        bowler = "lillee"
    } else if (name == "Jeff Thomson"){
        bowler = "thomson"
    } else if (name == "Glenn McGrath"){
        bowler = "mcgrath"
    } else if (name == "Lasith Malinga"){
        bowler = "malinga"
    } else if (name == "Tim Southee"){
        bowler = "southee"
    } else if (name == "Mitchell Starc"){
        bowler = "starc"
    } else if (name == "T A Boult"){
        bowler = "boult"
    } else if (name == "Shakib Al Hasan"){
        bowler = "shakib"
    } else if (name == "Imran Tahir"){
        bowler = "tahir"
    } else if (name == "Ravichandran Ashwin"){
        bowler = "ashwin"
    } else if (name == "Saeed Ajmal"){
        bowler = "ajmal"
    } else if (name == "Ajantha Mendis"){
        bowler = "mendis"
    } else if (name == "Samuel Badree"){
        bowler = "badree"
    } else if (name == "Sunil Narine"){
        bowler = "narine"
    } else if (name == "Shahid Afridi"){
        bowler = "afridi"
    } else if (name == "Sachithra Senanayake"){
        bowler = "senanayake"
    } else if (name == "Nathan McCullum"){
        bowler = "nathan"
    } else if (name == "Imran Tahir"){
        bowler = "tahir"
    } else if (name == "Mitchell Starc"){
        bowler = "starc"
    }  
    bowler
}
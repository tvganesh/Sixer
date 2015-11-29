#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: relBowlerPer.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
relBowlersPerf <- function(bowlers,func,matchType) {
    # Map names to files
    file <- NULL
    if(matchType == "Test") {
        
        for(i in 1:length(bowlers)){
            bowler <- mapBowler(bowlers[i])
            file[i] <- paste("./data/test/bowler/",bowler,".csv",sep="")
            
        }
    } else if (matchType == "ODI"){
        for(i in 1:length(bowlers)){
            bowler <- mapBowler(bowlers[i])
            file[i] <- paste("./data/odi/bowler/",bowler,".csv",sep="")
            
        }
    } else if (matchType == "TT"){
        for(i in 1:length(bowlers)){
            bowler <- mapBowler(bowlers[i])
            file[i] <- paste("./data/tt/bowler/",bowler,".csv",sep="")
            
        }
    }
    # Check if file exists in the directory. This check is necessary when moving between matchType
    if(!file.exists(file[1]))
        return()
    
    
    #Call function
    if(matchType == "Test"){
        if(func =="Relative Bowling Economy Rate"){
            relativeBowlingER(file,bowlers)
        }
        if (func == "Relative Bowling Performance"){
            relativeBowlingPerf(file,bowlers)
        } 
        
    } 
    
    if(matchType == "ODI") {
        if(func =="Relative Bowling Economy Rate"){
            relativeBowlingERODTT(file,bowlers)
        }
        if (func == "Relative Bowling Performance"){
            relativeBowlingPerf(file,bowlers)
        } 
    }
    
    if(matchType == "TT") {
        if(func =="Relative Bowling Economy Rate"){
            relativeBowlingERODTT(file,bowlers)
        }
        if (func == "Relative Bowling Performance"){
            relativeBowlingPerf(file,bowlers)
        } 
        if (func == "Relative Wicket Rate"){
            
            relativeWktRateTT(file,bowlers)
        }
    }
}
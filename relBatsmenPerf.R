#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: relBatsmanPer.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
relBatsmenPerf <- function(batsmen,func,matchType) {
    # Map batsmen names
    file <- NULL
    if(matchType == "Test") {
        
        for(i in 1:length(batsmen)){
              batsman <- mapBatsman(batsmen[i])
              file[i] <- paste("./data/test/batsman/",batsman,".csv",sep="")
        
        }
    } else if (matchType == "ODI"){
        for(i in 1:length(batsmen)){
            batsman <- mapBatsman(batsmen[i])
            file[i] <- paste("./data/odi/batsman/",batsman,".csv",sep="")
            
        }
    } else {
        for(i in 1:length(batsmen)){
            batsman <- mapBatsman(batsmen[i])
            file[i] <- paste("./data/tt/batsman/",batsman,".csv",sep="")
            
        }
    }

    # Check if file exists in the directory. This check is necessary when moving between matchType
    if(!file.exists(file[1]))
        return()
    
    # Call function
    if(func =="Relative Batsman Strike Rate"){
        if(matchType == "Test"){
             relativeBatsmanSR(file,batsmen)
        } else{
            relativeBatsmanSRODTT(file,batsmen)
        }
        
    } else if (func == "Relative Runs Freq Performance"){
        relativeRunsFreqPerf(file,batsmen)
    }
}
#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 1 Dec 2015
# File: checkInForm.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
checkInForm <- function(matchType,playerType,player){
    # Return when name is NULL at start
    if(is.null(player))
        return()
    cat(playerType)
    cat(matchType)
    cat(player)
    form <- NULL
    if(playerType == "Batsman"){
        batsman <- mapBatsman(player)
        if(matchType == "Test"){
            file <- paste("./data/test/batsman/",batsman,".csv",sep="")
            
        } else if(matchType == "ODI"){
            file <- paste("./data/odi/batsman/",batsman,".csv",sep="")
            
        }
        else {
            file <- paste("./data/tt/batsman/",batsman,".csv",sep="")
            
        }
        cat(file)
        cat(player)
        # Check if file exists in the directory. This check is necessary when moving between matchType
        if(!file.exists(file)){
            return()
        }
        form <- checkBatsmanInForm(file,player)
        print(form)
    } else if (playerType == "Bowler"){
        bowler <- mapBowler(player)
        if(matchType == "Test"){
            file <- paste("./data/test/bowler/",bowler,".csv",sep="")
            
        } else if(matchType== "ODI"){
            file <- paste("./data/odi/bowler/",bowler,".csv",sep="")
            
        }
        else {
            file <- paste("./data/tt/bowler/",bowler,".csv",sep="")
            
        }
        # Check if file exists in the directory. This check is necessary when moving between matchType
        if(!file.exists(file)){
            return()
        }
        form <-checkBowlerInForm(file,player)
        print(form)
    }
    form
}
#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: analyzeBatsman.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################

analyzeBatsman <- function(name,func,matchType) {

    # Return when name is NULL at start
    if(is.null(name))
        return()
    
    # Read file from appropriate directory  
    batsman <- mapBatsman(name)
    if(matchType == "Test") {
        file <- paste("./data/test/batsman/",batsman,".csv",sep="")
        filesp <- paste("./data/test/batsman/",batsman,"sp.csv",sep="")
        print(file)
    } else if(matchType == "ODI"){
        file <- paste("./data/odi/batsman/",batsman,".csv",sep="")
        filesp <- paste("./data/odi/batsman/",batsman,"sp.csv",sep="")
        print(file)
    } else {
        file <- paste("./data/tt/batsman/",batsman,".csv",sep="")
        filesp <- paste("./data/tt/batsman/",batsman,"sp.csv",sep="")
        print(file)
    }
    # Check if file exists in the directory. This check is necessary when moving between matchType
    if(!file.exists(file))
        return()
    
    
    # Call necessary function from cricketr package
    if(func =="4s & 6s of batsman"){
        batsman4s6s(file,name)
    } else if (func == "4s of batsman"){
        batsman4s(file,name)
    } else if (func == "6s of batsman"){
        batsman6s(file,name)
    } else if (func == "Ground avg of batsman"){
        batsmanAvgRunsGround(file,name)
    } else if (func == "Avg runs scored vs opposition"){
        batsmanAvgRunsOpposition(file,name)
    } else if (func == "Contribution to wins & losses"){
        batsmanContributionWonLost(filesp,name)
    } else if (func == "Batsman's dismissals"){
        batsmanDismissals(file,name)
    } else if (func == "Batsman's Mean Strike Rate"){
        if(matchType == "Test"){
            batsmanMeanStrikeRate(file,name)
        } else if (matchType == "ODI" || matchType == "TT"){
            batsmanScoringRateODTT(file,name)
        }
    } else if (func == "Batsman's Moving Average"){
        batsmanMovingAverage(file,name)
    }  else if (func == "Batsman's Perf BoxHist chart"){
        batsmanPerfBoxHist(file,name)
    }  else if (func == "Batsman Perf. Forecast"){
        batsmanPerfForecast(file,name)
    } else if (func == "Batsman's Home-Away record"){
        batsmanPerfHomeAway(filesp,name)
    }  else if (func == "Batsman Runs-Freq. chart"){
        batsmanRunsFreqPerf(file,name)
    } else if (func == "Batsman Runs Likelihood est."){
        batsmanRunsLikelihood(file,name)
    }  else if (func == "Batsman Run Ranges"){
        batsmanRunsRanges(file,name)
    }  else if (func == "Batsman Perf. 3-D"){
        battingPerf3d(file,name)
    }   else if (func == "Check batsman form status"){
        checkBatsmanInForm(file,name)
    } else if (func == "batsman6s"){
        batsman6s(file,name)
    } else {
        
    }
    
}

# Function to map name to file name
mapBatsman <- function(name){
    batsman <- NULL
    if(name == "Sachin Tendulkar"){
        batsman <- "tendulkar"
    } else if (name == "Rahul Dravid"){
        batsman = "dravid"
    } else if (name == "Ricky Ponting"){
        batsman = "ponting"
    } else if (name == "Kumar Sangakkara"){
        batsman = "sangakkara"
    } else if (name == "Jacques Kallis"){
        batsman = "kallis"
    } else if (name == "Sunil Gavaskar"){
        batsman = "gavaskar"
    } else if (name == "Sourav Ganguly"){
        batsman = "ganguly"
    } else if (name == "Brian Lara"){
        batsman = "lara"
    }else if (name == "Vivian Ricjards"){
        batsman = "richards"
    } else if (name == "Sir Don Bradman"){
        batsman = "bradman"
    } else if (name == "Younis Khan"){
        batsman = "younis"
    } else if (name == "Javed Miandad"){
        batsman = "miandad"
    } else if (name == "Inzamam Ul Haq"){
        batsman = "inzamam"
    } else if (name == "Mahela Jayawardene"){
        batsman = "jayawardene"
    } else if (name == "Sanath Jayasuriya"){
        batsman = "jayasuriya"
    } else if (name == "Alistair Cook"){
        batsman = "cook"
    } else if (name == "J E Root"){
        batsman = "root"
    } else if (name == "Steven Smith"){
        batsman = "smith"
    } else if (name == "David Warner"){
        batsman = "warner"
    } else if (name == "A B Devilliers"){ # ODI batsman from here
        batsman = "devilliers"
    } else if (name == "Chris Gayle"){ 
        batsman = "gayle"
    } else if (name == "Virender Sehwag"){
        batsman = "sehwag"
    } else if (name == "Glenn Maxwell"){
        batsman = "maxwell"
    } else if (name == "Kris Srikkanth"){
        batsman = "srikkanth"
    } else if (name == "Rohit Sharma"){
        batsman = "rohit"
    } else if (name == "Virat Kohli"){
        batsman = "kohli"
    } else if (name == "M S Dhoni"){
        batsman = "dhoni"
    } else if (name == "Kapil Dev"){
        batsman = "kapil"
    } else if (name == "Shahid Afridi"){
        batsman = "afridi"
    } else if (name == "Misbah Ul Haq"){
        batsman = "misbah"
    } else if (name == "Ahmed Shehzad"){
        batsman = "shehzad"
    } else if (name == "Darren Bravo"){
        batsman = "drnbravo"
    } else if (name == "Dwayne Bravo"){
        batsman = "dwnbravo"
    } else if (name == "T M Dilshan"){
        batsman = "dilshan"
    } else if (name == "ST Jayasuriya"){
        batsman = "jayasuriya"
    }  else if (name == "Michael Clarke"){
        batsman = "clarke"
    }  else if (name == "Shane Watson"){
        batsman = "watson"
    } else if (name == "Ian Bell"){
        batsman = "bell"
    } else if (name == "Ian Botham"){
        batsman = "botham"
    } else if (name == "Nathan Astle"){
        batsman = "nathan"
    } else if (name == "Stephen Fleming"){
        batsman = "fleming"
    } else if (name == "Hashim Amla"){
        batsman = "amla"
    } else if (name == "Herschelle Gibbs"){
        batsman = "gibbs"
    } else if (name == "Brendon McCullum"){
        batsman = "mccullum"
    } else if (name == "Aaron Finch"){
        batsman = "finch"
    } else if (name == "Faf Du Plessis"){
        batsman = "plessis"
    } else if (name == "Eoin Morgan"){
        batsman = "morgan"
    } else if (name == "A D Hales"){
        batsman = "hales"
    } else if (name == "Vivian Richards"){
        batsman = "richards"
    } 
    batsman
}
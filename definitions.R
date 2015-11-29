#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: definitions.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
# Function names for Test  batsman analysis
funcs <- c("4s of batsman",
           "6s of batsman",
           "4s & 6s of batsman",
           "Batsman's dismissals",
           "Batsman's Mean Strike Rate",
           "Batsman Runs-Freq. chart",
           "Batsman Run Ranges",
           "Batsman's Perf BoxHist chart",
           "Ground avg of batsman",
           "Avg runs scored vs opposition",
           "Contribution to wins & losses",
           "Batsman's Home-Away record",
           "Batsman's Moving Average",
           'Batsman Perf. Forecast',
           "Batsman Runs Likelihood est.",
           "Batsman Perf. 3-D",
           "Check batsman in-form status")

# Function names for ODI & Twenty20 batsman analysis
funcsODITT <- c("4s of batsman",
                "6s of batsman",
                "4s & 6s of batsman",
                "Batsman's dismissals",
                "Batsman's Mean Strike Rate",
                "Batsman Runs-Freq. chart",
                "Batsman Run Ranges",
                "Batsman's Perf BoxHist chart",
                "Ground avg of batsman",
                "Avg runs scored vs opposition",
                #"Contribution to wins & losses",
                #"Batsman's Home-Away record",
                "Batsman's Moving Average",
                'Batsman Perf. Forecast',
                "Batsman Runs Likelihood est.",
                "Batsman Perf. 3-D",
                "Check batsmanI in-form status")

# Function names for Test bowler analysis
funcs1 <- c("Bowler's Wickets-Runs plot",
            "Bowler's Wickets Freq Percent",
            "Bowler's Avg Wickets at Ground",
            "Bowler's Avg Wicket against opposition",
            "Contribution to wins & losses",
            "Bowler's Perf. Home-Away",
            "Bowler's Economy Rate",
            "Bowler's Moving Average",
            "Bowler's Perf. Forecast",
            #"bowlerWktRateTT",
            "Check Bowler Form status")

# Function names for ODI bowler analysis
funcs1ODI <- c("Bowler's Wickets-Runs plot",
                 "Bowler's Wickets Freq Percent",
                 "Bowler's Avg Wickets at Ground",
                 "Bowler's Avg Wicket against opposition",
                 "Bowler's Economy Rate",
                 "Bowler's Moving Average",
                 "Bowler's Perf. Forecast",
                 "Check Bowler Form status")

# Function names for Twenty20 bowler analysis
funcs1TT <- c("Bowler's Wickets-Runs plot",
               "Bowler's Wickets Freq Percent",
               "Bowler's Avg Wickets at Ground",
               "Bowler's Avg Wicket against opposition",
               "Bowler's Economy Rate",
               "Bowler's Moving Average",
               "Bowler's Perf. Forecast",
               "Bowler Wicket Rate",
               "Check Bowler Form status")


# Name of Test Batsman
testBatsman <- c("Sachin Tendulkar","Rahul Dravid","Ricky Ponting","Kumar Sangakkara",
                 "Jacques Kallis","Sunil Gavaskar","Sourav Ganguly","Brian Lara",
                 "Vivian Richards","Sir Don Bradman","Younis Khan","Javed Miandad",
                 "Inzamam Ul Haq","Mahela Jayawardene","Sanath Jayasuriya",
                 "Alistair Cook","J E Root","Steven Smith","David Warner")

# Name of ODI batsmen
odiBatsman <- c("A B Devilliers","Chris Gayle","Virender Sehwag","Glenn Maxwell",
                'Kris Srikkanth',"Virat Kohli","Rohit Sharma","Kapil Dev",
                "Shahid Afridi","Ahmed Shezad","Misbah Ul Haq",
                "Darren Bravo","Dwayne Bravo",
                "T M Dilshan","ST Jayasuriya",
                 "Michael Clarke","Shane Watson",
                 "Ian Bell","Ian Botham",
                 "Nathan Astle","Stephen Fleming",
                 "Hashim Amla","Herschelle Gibbs")

# Names of Twenty20 batsmen
ttBatsman <- c("Virat Kohli","Brendon McCullum","Aaron Finch", "Faf Du Plessis",
               "Chris Gayle","Eoin Morgan","A D Hales")

# Names of Test bowlers
testBowler <-  c("Anil Kumble","Shane Warne","Muthiah Muralitharan",
                 "Kapil Dev","B S Chandrasekhar","Bishen Sigh Bedi",
                 "E A S Prasanna","S Venkataraghavan",
                 "Imran Khan","Wasim Akram","Waqar Younis",
                  "Andy Roberts","Michael Holding","Malcolm Marshall",
                  "Allan Donald","Mitchell Johnson","Dale Steyn",
                  "Stuart Broad","James Anderson", "Dennis Lillee",
                  "Jeff Thomson","Glenn McGrath")

# Names of ODI bowlers
odiBowler <- c("Mitchell Johnson","Dale Steyn","Lasith Malinga","Tim Southee",
               "Mitchell Starc","T A Boult","Shakib Al Hasan","Imran Tahir",
               "Ravichandran Ashwin","Saeed Ajmal","Morne Morkel")

# Names of Twenty20 bowlers
ttBowler <- c("Sunil Narine","Samuel Badree","Ravichandran Ashwin","Ajantha Mendis",
              "Shahid Afridi","Nathan McCullum","Imran Tahir","Sachithra Senanayake",
              "Mitchell Starc","Lasith Malinga")

# Functions for comparison of batsman
funcsRelBatsman <-c("Relative Batsman Strike Rate", "Relative Runs Freq Performance")

# Functions for comparison of Test and ODI bowlers
funcsRelBowlerTestODI <- c("Relative Bowling Economy Rate","Relative Bowling Performance")

# Functions for comparison of TT bowlers
funcsRelBowlerTT <- c("Relative Bowling Economy Rate","Relative Bowling Performance", "Relative Wicket Rate")


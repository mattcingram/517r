########################################
#
# HEADER
#
# This is template for RPOS 517, Assignment 3
# it contains headings to remind you about transparency/workflow topics
# date create: 2021-02-11
# date updated: 2021-02-12
#
# Author: [your name here]
#
########################################

#################################
# Set Directory Structure
# do this first because sometimes environment setup (below) requires
# directory location
#################################

# be sure to set the file path that corresponds to the 
# working directory on your computer; we did this in class in week 2
# NOTE: the path below is the one for directory on Matt's computer, not yours
# be sure to change it
getwd()
path <- "E:/Dropbox/SUNYAlbany/MethodsPOS517/Exercises/week2/demo_costa/R"
setwd(path) # set working directory
getwd()

# build folder structure for sub-directories

dir.create("./code",showWarnings = TRUE)
dir.create("./data",showWarnings = TRUE)
dir.create("./data/original",showWarnings = TRUE)
dir.create("./data/working",showWarnings = TRUE)
dir.create("./figures",showWarnings = TRUE)
dir.create("./reports",showWarnings = TRUE)
dir.create("./publication",showWarnings = TRUE)
dir.create("./tables",showWarnings = TRUE)

# check directory contents
dir()
list.files()

###############################
# Set Environment
###############################

# could use install.packages() and library() commands
# but will instead use package management tool
# useful tool: pacman
# install.packages("pacman")
# if trouble on campus machine, use lib option with install command
# and lib.loc option with library command
# check .libPaths() to see current library paths
install.packages("pacman")
library(pacman)
p_load(stargazer,
       coefplot)

################################
# Load Data
################################

# several options for loading data depending on data format
# in week 2, we practiced loading csv files with read.csv() command
# you can also load native data in R format (RData files) with load() command

# load file dat.csv
dat <- read.csv('./data/working/dat.csv')

###################################
# Data cleaning (transformations)
###################################

# run these lines so you can use the correct variables in assignment

# create new variable condition2 with numeric values for scandal type
dat$condition2[dat$condition==1] <- "Jokes"
dat$condition2[dat$condition==2] <- "Assault"
dat$condition2[dat$condition==3] <- "Control"
dat$condition2 <- as.factor(dat$condition2)
## relevel so Control is baseline category (i.e., reference value)
dat$condition2 <- relevel(dat$condition2, "Control")

####################################
#
# (1) bivariate model
#
####################################





####################################
#
# (2) multivariate model
#
####################################




# end

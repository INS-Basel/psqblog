###############################################
## General instructions for publishing setup ##
###############################################


# 1. Prefix ---------------------------------------------------------------
## install necessary packages 

# devtools to install from github rather than CRAN
if (!require('devtools')) {
  install.packages("devtools")
}

# Rwordpress and XLMRPC
if (!require('RWordPress')) {
  devtools::install_github(c("duncantl/XMLRPC", "duncantl/RWordPress"))
}


# load required packages

library(XMLRPC)
library(RWordPress)
library(knitr)

# 2. Setup your user account -------------------------------------------

# set you personal options --> change username and 'password'
options(WordpressLogin = c(username = 'password'),
        WordpressURL = 'https://psq.nursing.unibas.ch/xmlrpc.php')


# # this command lets you then update
# id <- knit2wp('yourfile.Rmd', 
#         title = "Your posts title",
#         categories = "Code",
#         action = "newPost",
#         publish = FALSE)

# Knit to WordPress

knit2wp('yourfile.Rmd',
        title = 'Your post title',
        shortcode = F,
        categories = 'Coding',
        action = 'newPost', 
        publish = T)




# INSTALLED PACKAGES

install.packages(
  pkgs = c(
    "bbmle",
    #"cowplot"
    "devtools",
    "dismo",
    "dplyr",
    "doMC",
    "extraDistr",
    "foreach",
    "furrr",
    "future",
    "future.apply",
    "gbm",
    "ggplot2",
    "knitr",
    "lazyeval",
    "lubridate",
    "lwgeom",
    "magrittr",
    "patchwork",
    "purrr",
    "R2jags",
    "raster",
    "rasterVis",
    "Rcpp",
    "readr",
    "readxl",
    "reprex",
    "rerddap",
    #"reshape2",
    "rgdal",
    "rjags",
    "rlang",
    "rmarkdown",
    "sf",
    "sp",
    "stringr",
    "tibble",
    "tidyr",
    #"tidyverse",
    "versions",
    "viridis",
    "xslx"
  ),
  dependencies = TRUE
)

library("devtools")

install_github("johnbaums/jagstools")
install_github("steps-dev/steps")
install_github("mstrimas/metacapa")

#install.versions(pkgs = "rjags", versions = "3-15") # so don't get error in windows; seems to be from current rjags version

#install.packages("admbsecr",
#                 repo = "http://R-Forge.R-project.org") # uses AD Model Builder to fit non-linear models to SECR

#install.packages("nimble", repos = "http://r-nimble.org", type = "source") # use BUGS-syntax models in R

# install_github("rasmusab/beepr") # pingr is to make a ping noise at the end of a model run, rasmusab is who done made it, now called beepr
# 
# install_github("rstudio/rmarkdown")
# 
# #install_github("admbsecr", "b-steve") # unstable/development version of `admbsecr` 
# 
# install_github("leeper/meme")  # generate memes in R
# 
# install_github("lme4/lme4") #linear mixed effects models
# 
# install_github("duncantl/ROAuth") # dependency of rDrop
# 
# install_github("karthik/rDrop") # dropbox interface from R
# 
# install_github("dkahle/ggmap") # development version of ggmap; handles stamen maps better (reads in jpgs which stable version doesn't)
# 
# install_github("sjmgarnier/viridis") # colourblind and print friendly colour map
# 
# install_github("johnbaums/trees") # jb squirrel in tr
# 
# install_github("ropensci/rredlist")
# 
# 
# # Installing extra font for xkcd package
# library("extrafont")
# download.file("http://simonsoftware.se/other/xkcd.ttf",
#               dest="xkcd.ttf", mode="wb")
# system("mkdir ~/.fonts")
# system("cp xkcd.ttf ~/.fonts")
# font_import(pattern = "[X/x]kcd", prompt=FALSE)
# fonts()
# fonttable()
# if(.Platform$OS.type != "unix") {
#   ## Register fonts for Windows bitmap output
#   loadfonts(device="win")
# } else {
#   loadfonts()
# }


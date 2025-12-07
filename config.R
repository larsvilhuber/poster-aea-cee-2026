
library(readr)
library(here)
library(knitr)
library(dplyr)
library(ggplot2)
library(qualtRics)
library(lubridate)
library(qrcode)
library(kableExtra)
library(stringr)
library(tidylog)
require("rprojroot")
#require("revealjs")
#require("rmarkdown")
#require("quarto")

# The repository name

message(Sys.getenv("GITHUB_REPOSITORY"))

# Process the repository name to generate the URL
# - split the two components
# - combine them into a URL with 'github.io' in the middle

GITHUB_REPOSITORY <- Sys.getenv("GITHUB_REPOSITORY")
GITHUB_REPOSITORY_PARTS <- strsplit(GITHUB_REPOSITORY, "/")[[1]]
REPOSITORY_URL <- paste0("https://github.com/", GITHUB_REPOSITORY)
WEBSITE_URL <- paste0("https://", GITHUB_REPOSITORY_PARTS[1], ".github.io/", GITHUB_REPOSITORY_PARTS[2])


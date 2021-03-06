
# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

# Apply dc to all fct files
fs::dir_ls('R', regexp = 'fct_.*\\.R') %>% 
  purrr::walk(dc)


## Dependencies ----
## Add one line by package you want to add as dependency
usethis::use_package( "thinkr" )
usethis::use_package( "lubridate" )
usethis::use_package( "shinythemes" )
usethis::use_package( "gt" )
usethis::use_package( "dplyr" )
usethis::use_package( "stringr" )
usethis::use_package( "htmltools" )

## Add modules ----
## Create a module infrastructure in R/
golem::add_module( name = "name_of_module1" ) # Name of the module
golem::add_module( name = "name_of_module2" ) # Name of the module

## Add helper functions ----
## Creates fct_* and utils_*
golem::add_fct( "read_holidays_file" ) 
golem::add_fct( "load_holidays" ) 
golem::add_fct( "expand_holidays" ) 
golem::add_fct( "validate_all" ) 
golem::add_fct( "build_plan" ) 
golem::add_fct( "build_gt_table" ) 
golem::add_fct( "handle_edit_topics.R" ) 
golem::add_fct( "handle_edit_holidays" ) 
golem::add_fct( "handle_save_topics.R" ) 
golem::add_fct( "handle_save_holidays" ) 
golem::add_fct( "handle_reset_holidays" ) 
golem::add_fct( "handle_build_plan" ) 
golem::add_fct( "handle_download_plan" ) 
golem::add_fct( "download_plan" ) 

golem::add_utils( "errors" )
 
## External resources
## Creates .js and .css files at inst/app/wwwgolem::add_js_file( "script" )
golem::add_js_handler( "handlers" )
golem::add_css_file( "planneR" )

## Add internal datasets ----
## If you have data in your package
usethis::use_data_raw( name = "holidays.csv") 

## Tests ----
## Add one line by test you want to create
usethis::use_test( "read_holidays_file" )

# Documentation

## Vignette ----
usethis::use_vignette("PlanneR")
devtools::build_vignettes()

## Code Coverage----
## Set the code coverage service ("codecov" or "coveralls")
usethis::use_coverage()

# Create a summary readme for the testthat subdirectory
covrpage::covrpage()

## CI ----
## Use this part of the script if you need to set up a CI
## service for your application
## 
## (You'll need GitHub there)
usethis::use_github()

# GitHub Actions
usethis::use_github_action() 
# Chose one of the three
# See https://usethis.r-lib.org/reference/use_github_action.html
usethis::use_github_action_check_release() 
usethis::use_github_action_check_standard() 
usethis::use_github_action_check_full() 
# Add action for PR
usethis::use_github_action_pr_commands()

# Travis CI
usethis::use_travis() 
usethis::use_travis_badge() 

# AppVeyor 
usethis::use_appveyor() 
usethis::use_appveyor_badge()

# Circle CI
usethis::use_circleci()
usethis::use_circleci_badge()

# Jenkins
usethis::use_jenkins()

# GitLab CI
usethis::use_gitlab_ci()

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")


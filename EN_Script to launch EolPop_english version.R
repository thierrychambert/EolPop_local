# To know where packages are stored on your computer
.libPaths()


# To verify if all required packages are already installed (and to install missing ones, otherwise)
list.of.packages <- c("shiny", "shinyjs", "shinyBS", "shinyMatrix", "tidyverse", "SHELF",
  "promises", "future", "ipc", "popbio", "knitr", "kableExtra", "rmarkdown")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages) > 0) install.packages(new.packages)


## Finally, to launch the App locally, simply run these 4 lines of code
setwd( paste0(find.package("eolpop"), "/EN_EolPop/") )

source("ui.R")
source("server.R")

shinyApp(ui = ui, server = server)


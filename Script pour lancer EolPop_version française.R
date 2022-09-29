# Pour savoir où sont stockés les packages sur votre ordinateur
.libPaths()


# Pour vérifier si tous les packages requis sont installés (et les installer sinon)
list.of.packages <- c("shiny", "shinyjs", "shinyBS", "shinyMatrix", "tidyverse", "SHELF",
  "promises", "future", "ipc", "popbio", "knitr", "kableExtra", "rmarkdown")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages) > 0) install.packages(new.packages)


## Pour lancer l'appli en local, lancer ces 4 lignes de code
setwd( paste0(find.package("eolpop"), "/FR_EolPop/") )

source("ui.R")
source("server.R")

shinyApp(ui = ui, server = server)


# Pour savoir ou sont stockes les packages sur votre ordinateur
.libPaths()


# Pour verifier si tous les packages requis sont installes (et les installer sinon)
list.of.packages <- c("shiny", "shinyjs", "shinyBS", "shinyMatrix", "tidyverse", "SHELF",
                      "promises", "future", "ipc", "popbio", "knitr", "kableExtra", "rmarkdown")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages) > 0) install.packages(new.packages)


## Pour lancer l'appli en local, lancer ces quelques lignes de code
if( (strsplit(Sys.getlocale("LC_COLLATE"), "\\.")[[1]][2]) == "UTF-8"){
  setwd( paste0(find.package("eolpop"), "/FR_EolPop_UTF8/") )
}
if ((strsplit(Sys.getlocale("LC_COLLATE"), "\\.")[[1]][2]) == "1252"){
  setwd( paste0(find.package("eolpop"), "/FR_EolPop_ANSI/") )
}
getwd()

source("ui.R")
source("server.R")

shinyApp(ui = ui, server = server)
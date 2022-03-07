.onLoad <- function(libname, pkgname){
    fl <- system.file("extdata",
                      "metadata.csv",
                      package=pkgname)
    titles <- utils::read.csv(fl,
                              stringsAsFactors=FALSE)$Title
    notReady <- c("CRISPRa_model.pkl",
                  "CRISPRi_model.pkl",
                  "RFcombined.rds")
    titles <- setdiff(titles, notReady)
    ExperimentHub::createHubAccessors(pkgname, titles)
}

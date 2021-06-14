.onLoad <- function(libname, pkgname) {
    fl <- system.file("extdata",
                      "metadata.csv",
                      package=pkgname)
    titles <- utils::read.csv(fl, stringsAsFactors=FALSE)$Title
    ExperimentHub::createHubAccessors(pkgname, titles)
}

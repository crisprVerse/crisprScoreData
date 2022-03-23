.onLoad <- function(libname, pkgname){
    fl <- system.file("extdata",
                      "metadata.csv",
                      package=pkgname)
    titles <- utils::read.csv(fl,
                              stringsAsFactors=FALSE)$Title
    notReady <- c("CRISPRa_model.pkl",
                  "CRISPRi_model.pkl",
                  "crispria_dnase_human_K562_hg38.bigWig",
                  "crispria_mnase_human_K562_hg38.bigWig",
                  "crispria_faire_human_K562_hg38.bigWig")
    titles <- setdiff(titles, notReady)
    ExperimentHub::createHubAccessors(pkgname, titles)
}

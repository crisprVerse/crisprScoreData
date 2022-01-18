library(stringr)
files <- c("DeepWt.hdf5",
           "DeepWt_T7.hdf5",
           "DeepWt_U6.hdf5",
           "esp_rnn_model.hdf5",
           "hf_rnn_model.hdf5",
           "Model_weights.pkl",
           "CRISPRa_model.pkl",
           "CRISPRi_model.pkl")
nfiles <- length(files)
sources <- gsub("\\.","",str_extract(files, "\\.+.*"))
sources <- toupper(sources)
sources[sources=="PKL"] <- "TXT"
url_deephf <- "https://github.com/izhangcd/DeepHF"
url_lindel <- "https://github.com/shendurelab/Lindel"
url_weissman <- "https://github.com/mhorlbeck/CRISPRiaDesign"
urls <- c(rep(url_deephf,5),
          url_lindel,
          rep(url_weissman,2))
dess <- c("DeepHF pretrained model for widtype Cas9.",
          "DeepHF pretrained model for widtype Cas9 (T7 promoter).",
          "DeepHF pretrained model for widtype Cas9 (U6 promoter).",
          "DeepHF pretrained model for EspCas9.",
          "DeepHF pretrained model for HFCas9.",
          "Lindel pretrained model weights.",
          "Weissman pretrained model for CRISPRa.",
          "Weissman pretrained model for CRISPRi.")
titles <- files
providers <- c(rep("Fudan University", 5),
               "University of Washington",
               rep("UCSF", 2))
paths1 <- paste0("crisprScoreData/DeepHF/", files[1:5])
paths2 <- paste0("crisprScoreData/Lindel/", files[6])
paths3 <- paste0("crisprScoreData/Weissman/", files[7:8])
paths  <- c(paths1, paths2, paths3)

metadata <- data.frame(Title=titles,
                       Description=dess,
                       BiocVersion=rep("3.14", nfiles),
                       Genome=rep(NA, nfiles),
                       SourceType=sources,
                       SourceUrl=urls,
                       SourceVersion=rep("1", nfiles),
                       Species=rep(NA, nfiles),
                       TaxonomyId=rep(NA, nfiles),
                       Coordinate_1_based=rep(TRUE, nfiles),
                       DataProvider=providers,
                       Maintainer=rep("Jean-Philippe Fortin <fortin946@gmail.com>", nfiles),
                       RDataClass=rep("character", nfiles),
                       DispatchClass=rep("FilePath", nfiles),
                       RDataPath=paths)

write.csv(metadata,
          file="../extdata/metadata.csv",
          row.names=FALSE)

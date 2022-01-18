dir.create("out")
setwd("out")


dir.create("DeepHF")
setwd("DeepHF")
# Downloading data from DeepHF model:
files <- c("DeepWt.hd5",
           "DeepWt_T7.hd5",
           "DeepWt_U6.hd5",
           "esp_rnn_model.hd5",
           "hf_rnn_model.hd5")
for (i in 1:length(files)){
    gitdir <- "https://raw.githubusercontent.com/izhangcd/DeepHF/master/models/"
    cmd <- paste0("wget ", gitdir, files[i])
    system(cmd)
}
#Renamed
files <- list.files("./", pattern=".hd5")
file.rename(files, gsub(".hd5",".hdf5", files))

setwd("../")
dir.create("Lindel")
setwd("Lindel")
# Downloading data for Lindel model:
files <- "Model_weights.pkl"
for (i in 1:length(files)){
    gitdir <- "https://raw.githubusercontent.com/shendurelab/Lindel/master/Lindel/"
    cmd <- paste0("wget ", gitdir, files[i])
    system(cmd)
}

# Weissman pretrained models were 
# computed by Piru.







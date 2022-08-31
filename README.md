crisprScoreData
================

-   <a href="#installation-from-bioconductor"
    id="toc-installation-from-bioconductor">Installation from
    Bioconductor</a>
-   <a href="#exploring-the-different-data-in-crisprscoredata"
    id="toc-exploring-the-different-data-in-crisprscoredata">Exploring the
    different data in crisprScoreData</a>

Authors: Jean-Philippe Fortin

# Installation from Bioconductor

`crisprScoreData` can be installed from the Bioconductor devel branch
using the following commands in a fresh R session:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(version="devel")
BiocManager::install("crisprScoreData")
```

# Exploring the different data in crisprScoreData

We first load the `crisprScoreData` package:

``` r
library(crisprScoreData)
```

    ## Loading required package: ExperimentHub

    ## Loading required package: BiocGenerics

    ## 
    ## Attaching package: 'BiocGenerics'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     IQR, mad, sd, var, xtabs

    ## The following objects are masked from 'package:base':
    ## 
    ##     anyDuplicated, append, as.data.frame, basename, cbind, colnames,
    ##     dirname, do.call, duplicated, eval, evalq, Filter, Find, get, grep,
    ##     grepl, intersect, is.unsorted, lapply, Map, mapply, match, mget,
    ##     order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
    ##     rbind, Reduce, rownames, sapply, setdiff, sort, table, tapply,
    ##     union, unique, unsplit, which.max, which.min

    ## Loading required package: AnnotationHub

    ## Loading required package: BiocFileCache

    ## Loading required package: dbplyr

This package contains several pre-trained models for different on-target
activity prediction algorithms to be used in the package *crisprScore*.

We can access the file paths of the different pre-trained models
directly with named functions:

``` r
# For DeepHF model:
DeepWt.hdf5()
```

    ## snapshotDate(): 2022-08-23

    ## see ?crisprScoreData and browseVignettes('crisprScoreData') for documentation

    ## loading from cache

    ##                                                                             EH6123 
    ## "/Users/fortinj2/Library/Caches/org.R-project.R/R/ExperimentHub/f2d463daf223_6166"

``` r
DeepWt_T7.hdf5()
```

    ## snapshotDate(): 2022-08-23

    ## see ?crisprScoreData and browseVignettes('crisprScoreData') for documentation

    ## loading from cache

    ##                                                                             EH6124 
    ## "/Users/fortinj2/Library/Caches/org.R-project.R/R/ExperimentHub/f2d43b4f0b0c_6167"

``` r
DeepWt_U6.hdf5()
```

    ## snapshotDate(): 2022-08-23

    ## see ?crisprScoreData and browseVignettes('crisprScoreData') for documentation

    ## loading from cache

    ##                                                                              EH6125 
    ## "/Users/fortinj2/Library/Caches/org.R-project.R/R/ExperimentHub/1646f4d5dfe8e_6168"

``` r
esp_rnn_model.hdf5()
```

    ## snapshotDate(): 2022-08-23

    ## see ?crisprScoreData and browseVignettes('crisprScoreData') for documentation

    ## loading from cache

    ##                                                                             EH6126 
    ## "/Users/fortinj2/Library/Caches/org.R-project.R/R/ExperimentHub/f2d4425e5f3f_6169"

``` r
hf_rnn_model.hdf5()
```

    ## snapshotDate(): 2022-08-23

    ## see ?crisprScoreData and browseVignettes('crisprScoreData') for documentation

    ## loading from cache

    ##                                                                             EH6127 
    ## "/Users/fortinj2/Library/Caches/org.R-project.R/R/ExperimentHub/f2d441bf4323_6170"

``` r
# For Lindel model:
Model_weights.pkl()
```

    ## snapshotDate(): 2022-08-23

    ## see ?crisprScoreData and browseVignettes('crisprScoreData') for documentation

    ## loading from cache

    ##                                                                             EH6128 
    ## "/Users/fortinj2/Library/Caches/org.R-project.R/R/ExperimentHub/f2d473d0d08d_6171"

Or we can access them using the *ExperimentHub* interface:

``` r
eh <- ExperimentHub()
```

    ## snapshotDate(): 2022-08-23

``` r
query(eh, "crisprScoreData")
```

    ## ExperimentHub with 9 records
    ## # snapshotDate(): 2022-08-23
    ## # $dataprovider: Fudan University, UCSF, University of Washington, New York ...
    ## # $species: NA
    ## # $rdataclass: character
    ## # additional mcols(): taxonomyid, genome, description,
    ## #   coordinate_1_based, maintainer, rdatadateadded, preparerclass, tags,
    ## #   rdatapath, sourceurl, sourcetype 
    ## # retrieve records with, e.g., 'object[["EH6123"]]' 
    ## 
    ##            title             
    ##   EH6123 | DeepWt.hdf5       
    ##   EH6124 | DeepWt_T7.hdf5    
    ##   EH6125 | DeepWt_U6.hdf5    
    ##   EH6126 | esp_rnn_model.hdf5
    ##   EH6127 | hf_rnn_model.hdf5 
    ##   EH6128 | Model_weights.pkl 
    ##   EH7304 | CRISPRa_model.pkl 
    ##   EH7305 | CRISPRi_model.pkl 
    ##   EH7356 | RFcombined.rds

``` r
eh[["EH6127"]]
```

    ## see ?crisprScoreData and browseVignettes('crisprScoreData') for documentation

    ## loading from cache

    ##                                                                             EH6127 
    ## "/Users/fortinj2/Library/Caches/org.R-project.R/R/ExperimentHub/f2d441bf4323_6170"

For details on the source of these files, and on their construction see
`?crisprScoreData` and the scripts:

-   `inst/scripts/make-metadata.R`
-   `inst/scripts/make-data.Rmd`

``` r
sessionInfo()
```

    ## R version 4.2.1 (2022-06-23)
    ## Platform: x86_64-apple-darwin17.0 (64-bit)
    ## Running under: macOS Catalina 10.15.7
    ## 
    ## Matrix products: default
    ## BLAS:   /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRblas.0.dylib
    ## LAPACK: /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRlapack.dylib
    ## 
    ## locale:
    ## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] crisprScoreData_1.1.3 ExperimentHub_2.5.0   AnnotationHub_3.5.0  
    ## [4] BiocFileCache_2.5.0   dbplyr_2.2.1          BiocGenerics_0.43.1  
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] Rcpp_1.0.9                    png_0.1-7                    
    ##  [3] Biostrings_2.65.2             assertthat_0.2.1             
    ##  [5] digest_0.6.29                 utf8_1.2.2                   
    ##  [7] mime_0.12                     R6_2.5.1                     
    ##  [9] GenomeInfoDb_1.33.5           stats4_4.2.1                 
    ## [11] RSQLite_2.2.16                evaluate_0.16                
    ## [13] httr_1.4.4                    pillar_1.8.1                 
    ## [15] zlibbioc_1.43.0               rlang_1.0.4                  
    ## [17] curl_4.3.2                    rstudioapi_0.14              
    ## [19] blob_1.2.3                    S4Vectors_0.35.1             
    ## [21] rmarkdown_2.15.2              stringr_1.4.1                
    ## [23] RCurl_1.98-1.8                bit_4.0.4                    
    ## [25] shiny_1.7.2                   compiler_4.2.1               
    ## [27] httpuv_1.6.5                  xfun_0.32                    
    ## [29] pkgconfig_2.0.3               htmltools_0.5.3              
    ## [31] tidyselect_1.1.2              KEGGREST_1.37.3              
    ## [33] tibble_3.1.8                  GenomeInfoDbData_1.2.8       
    ## [35] interactiveDisplayBase_1.35.0 IRanges_2.31.2               
    ## [37] fansi_1.0.3                   crayon_1.5.1                 
    ## [39] dplyr_1.0.9                   later_1.3.0                  
    ## [41] bitops_1.0-7                  rappdirs_0.3.3               
    ## [43] xtable_1.8-4                  lifecycle_1.0.1              
    ## [45] DBI_1.1.3                     magrittr_2.0.3               
    ## [47] cli_3.3.0                     stringi_1.7.8                
    ## [49] cachem_1.0.6                  XVector_0.37.0               
    ## [51] promises_1.2.0.1              ellipsis_0.3.2               
    ## [53] filelock_1.0.2                generics_0.1.3               
    ## [55] vctrs_0.4.1                   tools_4.2.1                  
    ## [57] bit64_4.0.5                   Biobase_2.57.1               
    ## [59] glue_1.6.2                    purrr_0.3.4                  
    ## [61] BiocVersion_3.16.0            fastmap_1.1.0                
    ## [63] yaml_2.3.5                    AnnotationDbi_1.59.1         
    ## [65] BiocManager_1.30.18           memoise_2.0.1                
    ## [67] knitr_1.40

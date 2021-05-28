\name{crisprScoreData}
\docType{data}
\alias{crisprScoreData}
\alias{crisprScoreData-package}
\alias{DeepWt.hdf5}
\alias{DeepWt_T7.hdf5}
\alias{DeepWt_U6.hdf5}
\alias{hf_rnn_model.hdf5}
\alias{esp_rnn_model.hdf5}
\alias{Model_weights.pkl}
\title{Pretrained models for several crisprScore prediction algorithms}
\description{
  Pretrained models for DeepHF and Lindel on-target prediction algorithms
  for Cas9 gRNA performance to be used by crisprScore package.
  Data were obtained using the script \code{inst/scripts/make-data.R}.
}
\usage{
DeepWt.hdf5(metadata=FALSE)
DeepWt_T7.hdf5(metadata=FALSE)
DeepWt_U6.hdf5(metadata=FALSE)
hf_rnn_model.hdf5(metadata=FALSE)
esp_rnn_model.hdf5(metadata=FALSE)
Model_weights.pkl(metadata=FALSE)
}
\arguments{
  \item{metadata}{
    \code{logical} value indicating whether metadata only should be returned
    or if the resource should be loaded. Default behavior(metadata=FALSE) 
    loads the data.
  }
}
\examples{
  DeepWt.hdf5()
}
\value{These accessor functions return
    characters specifying path of the files}
\format{character}
\references{
    Wang, D., Zhang, C., Wang, B. et al. Optimized CRISPR guide RNA design for
    two high-fidelity Cas9 variants by deep learning.
    Nat Commun 10, 4284 (2019).
    \url{https://doi.org/10.1038/s41467-019-12281-8}

    Wei Chen, Aaron McKenna, Jacob Schreiber, Maximilian Haeussler, Yi Yin,
    Vikram Agarwal, William Stafford Noble, Jay Shendure, Massively parallel
    profiling and predictive modeling of the outcomes of CRISPR/Cas9-mediated
    double-strand break repair, Nucleic Acids Research, Volume 47, Issue 15,
    05 September 2019, Pages 7989–8003,
    \url{https://doi.org/10.1093/nar/gkz487}.
}
\keyword{datasets}
\name{FoM.OrderAndBinIdByMeans}
\alias{FoM.OrderAndBinIdByMeans}

\title{
Bin sample repeats and samples with similar means
}
\description{
Before the Figure of Merit method can be applied, sample values need to be binned in greater numbers in order to obtain a measure of error over multiple samples. Sample are binned in two ways. First, repeats of the same sample are binned together, which is based on identical values in the sample row's identity column. Second, samples are binned together that have a similar intensity according to the sample mean.
}
\usage{
FoM.OrderAndBinIdByMeans(id.ordered.matrix, value.col, ids.per.bin, quiet = FALSE, 
repeats.per.id = -1)
}

\arguments{
  \item{id.ordered.matrix}{the result of the FoM.GetIdOrderedMatrix function
  }
  \item{value.col}{only one value column can be chosen on which the binning is based. The FoM.GetIdOrderMatrix pre-processing step has already selected a subset of the original value columns. From this reduced matrix, the user should make a selection of only one value column (usually the first column).
  }
  \item{ids.per.bin}{how many sample rows should a bin contain. 
  }
  \item{quiet}{boolean; if TRUE, intermediate results and feedback during calculation are shown.
  }
  \item{repeats.per.id}{maximum number of repeats each sample may contain. Any sample repeats above this value are treated as a new separate sample for binning purposes.
  }
}

\value{A list is returned containing the following values:
  \item{mean.per.bin }{A vector which contains the mean value per bin.
  }
  \item{error.per.bin }{A vector which contains the error value (mean of the variance per sample) per bin.
  }
  \item{name.of.value.col }{The column name of the value column in the original data matrix.
  }
}

\author{
Tim Dorscheidt
}

\keyword{Metabolomics}

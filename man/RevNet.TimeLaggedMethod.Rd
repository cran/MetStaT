\name{RevNet.TimeLaggedMethod}
\alias{RevNet.TimeLaggedMethod}

\title{
  Reverse engineering of networks: Time-lagged correlation method
}

\description{
This method first finds the time-lagged correlation method, which it then converts to a connectivity matrix.
Details of algorithm and the theory behind the algorithm can be found in the references section. This method needs sampling data of regular perturbations.
}

\usage{
  RevNet.TimeLaggedMethod(data, max.time.lag, threshold)
}

\arguments{
  \item{data}{
    matrix with sampling data: time x variables
  }
  \item{max.time.lag}{
    the maximum time lag for which correlations need to be taken into account
  }
  \item{threshold}{
    threshold to affect sparsity of connection matrix. Define as a percentage the quantile-cutoff of values in the correlation matrix to not be interpreted as edges in the network.
  }
}

\value{
  A connectivity matrix is returned.
}

\references{
  Reverse engineering of metabolic networks, a critical assessment. Diana M. Hendrickx, Margriet M. W. B. Hendriks, Paul H. C. Eilers, Age K. Smilde and Huub C. J. Hoefsloot. Mol. BioSyst, Volume 7:2 (2011) pages 511-520
}

\author{
  Diana Hendrickx and Tim Dorscheidt
}
\examples{
data(RevNetTimeLagged)
RevNet.TimeLaggedMethod(RevNetTimeLagged, 50, .55)
}

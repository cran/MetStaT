\name{RevNet.ZeroSlopesMethod}
\alias{RevNet.ZeroSlopesMethod}

\title{
  Reverse engineering of networks: zero slopes method
}

\description{
Network connections are estimated by analyzing concentration profiles, whereby non-zero slopes possibly indicate a network connection.
Details of algorithm and the theory behind the algorithm can be found in the references section. This method needs very high frequency sampling data of single variable perturbations.
}

\usage{
  RevNet.ZeroSlopesMethod(X, deltat, threshold)
}

\arguments{
  \item{X}{
    multi-dimensional sampling matrix: time x variables x experiments
  }
  \item{deltat}{
    single value indicating the time difference between sampling moments
  }
  \item{threshold}{
    threshold for determining whether an edge is assumed or not; affects network-sparsity.
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
data(RevNetZeroSlopes)
RevNet.ZeroSlopesMethod(RevNetZeroSlopes, 0.001, 0.00005)
}

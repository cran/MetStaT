\name{PCA.Calculate}
\alias{PCA.Calculate}

\title{
Adapted version of R's base Principal Component Analysis function (svd)  
}
\description{
In addition to the svd function in R's base package, this principal component (pc) analysis function also adds the variance explained per pc, and the score matrix (t).
}
\usage{
PCA.Calculate(data)
}

\arguments{
  \item{data}{the data matrix upon which the pca is to performed.}
}

\value{
  A list of results is returned, containing:
  \item{d}{
    a vector containing the singular values of x, of length min(n, p).
  }
  \item{v}{
    a matrix whose columns contain the right singular vectors of x, present if nv > 0.   Dimension c(p, nv).
  }
  \item{ 
    var.explained}{percentage of variance explained per pc.
  }
\item{t}{
    scores.
  }
}

\author{
  Tim Dorscheidt
}

\keyword{ PCA }
\keyword{ Variance } 

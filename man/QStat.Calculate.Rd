\name{QStat.Calculate}
\alias{QStat.Calculate}

\title{
  Global test for metabolic pathway differences between conditions
}
 
\description{
Calculates the Q statistic of Goeman's global test for metabolomic pathways. Also performs a permutation test, which can either be run for all possible permutations, or for a certain number of random permutations. See references for more details. 
}

\usage{
  QStat.Calculate(X, y.boolean, permutations = "all")
}

\arguments{
  \item{X}{
    matrix with sampling data per row.
  }
  \item{y.boolean}{
    boolean. A vector of TRUE/FALSE values on whether each sample adheres to a certain condition.
  }
  \item{permutations}{
   argument to determine the type of permutation test. 
Can be either 'all', in which case all possible permutations are calculated (caution, this might take a long time), or a fixed number of random permutations. Set to 0 in case no permutation test is to be performed.
  }
}

\value{
  A list will be returned with the following contents:
  \item{y.boolean }{
    The original y.boolean input vector.
  }
  \item{X }{
    The original X input vector.
  }
  \item{Q }{
    The calculated Q statistic.
  }
  \item{p }{
    The p value found after the permutation test.
  }
}

\references{
  Global test for metabolic pathway differences between conditions. Diana M. Hendrickx, Huub C.J. Hoefsloot, Margriet M.W.B. Hendriks, Andre. Canelas and Age K. Smilde. Analytica Chimica Acta, Volume 719 (2012), pages 8 - 15
}
\author{
  Diana Hendrickx and Tim Dorscheidt
}
\examples{
data(QStat)
QStat.Calculate(QStatX, QStatY, 1000)
}
\keyword{Goeman's test}
\keyword{Metabolomic network}
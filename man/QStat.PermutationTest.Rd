\name{QStat.PermutationTest}
\alias{QStat.PermutationTest}

\title{
  Accompanying permutation test for QStat.Calculate 
}

\description{
  Performs a permutation test for the QStat.Calculate outcome, which is by default already done by that method.
}

\usage{
  QStat.PermutationTest(Qresult, no.permutations = "all", quietly = FALSE)
}

\arguments{
  \item{Qresult}{
    the result of the function QStat.Calculate.
  }
  \item{no.permutations}{
    either 'all', in which case all possible permutations are performed. Or a numerical value in case a certain number of randomly determined permutations should be performed.  
  }
  \item{quietly}{
    boolean. Set to TRUE in case you wish to receive intermediate text feedback.
  }
}

\value{
  The same list as the input argument Qresult is returned, but with a (re)calculated p value.
}

\references{
  Global test for metabolic pathway differences between conditions. Diana M. Hendrickx, Huub C.J. Hoefsloot, Margriet M.W.B. Hendriks, Andr?. Canelas and Age K. Smilde. Analytica Chimica Acta, Volume 719 (2012), pages 8 - 15
}

\author{
  Diana Hendrickx and Tim Dorscheidt
}
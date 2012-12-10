\name{ASCA.GetPowerSet}
\alias{ASCA.GetPowerSet}

\title{
Determines the power set of the input set.
}
\description{
Supplies a list that contains the power set of the input set, i.e. all the possible subsets of the input set. 
}
\usage{
ASCA.GetPowerSet(input.set, exclude.empty.set = FALSE, exclude.complete.set = FALSE)
}

\arguments{
  \item{input.set}{the input set for which the power set is to be determined
  }
  \item{exclude.empty.set}{whether the empty set should be included in the results
  }
  \item{exclude.complete.set}{whether the original complete set is to be included in the results
  }
}

\author{
Tim Dorscheidt
}


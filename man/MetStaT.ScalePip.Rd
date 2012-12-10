\name{MetStaT.ScalePip}
\alias{MetStaT.ScalePip}

\title{
Centering and scaling function
}
\description{
This function is an adapted version of the 'scale' function in R's base package. It allows the user to supply a matrix, which can then be scaled and centered. Returning the resulting centered and/or scaled matrix in a list that also contains the used scaling and centering vectors.
}
\usage{
MetStaT.ScalePip(x.input, center = TRUE, scale = TRUE, quietly = FALSE)
}

\arguments{
  \item{x.input}{the data matrix that needs to be scaled.
  }
  \item{center}{boolean. If TRUE the data will also be centered per column (the mean of each column will become zero).
  }
  \item{scale}{this argument defines which type of scaling is to be applied. With the default value of TRUE, the data is autoscaled. When set to "pareto", pareto scaling is applied.
  }
  \item{quietly}{boolan. If TRUE, no intermediate text output concerning the centering and scaling methods is returned.
  }
}

\value{
  A list is returned containing the following values:
  \item{data }{The scaled and/or scaled data.
  }
  \item{description }{A string that contains a description on the centering and/or scaling   methods used.
  }
  \item{center.vector }{The centering vector applied to the original data.
  }
  \item{scale.vector }{The scaling vector applied to the original data.}
  }

\author{
  Adapted from 'Scale' method in R's 'base' package. Edited by Tim Dorscheidt.
}

\keyword{ Matrix }
\keyword{ File }

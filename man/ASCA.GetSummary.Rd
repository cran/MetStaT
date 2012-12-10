\encoding{latin1}
\name{ASCA.GetSummary}
\alias{ASCA.GetSummary}
\title{Summary method for ASCA analyses}
\description{
Returns a matrix which contains a summary of the ASCA results.
Each row in the matrix contains results for one factor or interaction studied in the performed ASCA. The columns contain the relevant principal components (PC's) found and the amount of variance explained per PC.
A max of 10 PC's are shown, and only those PC's which explain more than 1\% of the variance.
}
\usage{
ASCA.GetSummary(asca, quietly = FALSE)
}
\arguments{
  \item{asca}{
  The result of an already performed ASCA by ASCA.Calculate 
  }
  \item{quietly}{boolean.  If \code{TRUE} the method will not print the table of results, but only return the matrix containing the results.  Defaults to \code{FALSE}.
  }
}

\value{
  \item{summary}{A matrix containing the variance explained per component per factor or interaction.
  }
}
\author{Tim Dorscheidt
}

\note{
Output of ASCA.Calculate is required.
}

\examples{
## load the example data
data(ASCAdata)

## Do ASCA on all (both) factors and the interaction between the two factors
ASCA <- ASCA.Calculate(ASCAX, ASCAF, equation.elements = "1,2,12", scaling = TRUE)

## Get a summary of the ASCA results
ASCA.GetSummary(ASCA)
}
\keyword{ASCA}

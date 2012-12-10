\name{ASCA.PlotLoadings}
\alias{ASCA.PlotLoadings}
\title{
Loadings plot for a specific factor/interaction of the ASCA
}
\description{
Allows the user to plot a single loadings plot for one factor or interaction (or for the SVD on the original data)
}
\usage{
ASCA.PlotLoadings(asca, ee= "", pcs = c(1,2))
}

\arguments{
  \item{asca}{Results of a performed ASCA analysis
  }
  \item{ee}{Which factor or interaction to use (eg. "1", or "12", or leave empty to use the original data)
  }
  \item{pcs}{Which PCs (Principal Components) to use for plotting (eg. c1,2) 
  }
}

\value{
Only the plot is returned.
}

\author{
Tim Dorscheidt
}
\note{
Output of ASCA.Calculate is required.
}

\examples{
##Plot selected loadings after doing PerformAsca
## use the data matrix, ASCAX, and an experimental design matrix, ASCAF.
data(ASCAdata)
ASCA <- ASCA.Calculate(ASCAX, ASCAF, equation.elements = "1,2,12", scaling = TRUE)

## plot the loadings of the first two principal components of the first factor
ASCA.PlotLoadings(ASCA, ee = "1", pcs="1,2")
}


\name{PCA.PlotLoadings}
\alias{PCA.PlotLoadings}

\title{
Loadings plot for the results of PCA.Calculate
}
\description{
Allows the user to plot a loadings plot for two components.
}
\usage{
PCA.PlotLoadings(pr.object, pcs = c(1, 2))
}

\arguments{
  \item{pr.object}{
    The result of PCA.Calculate.
  }
  \item{pcs}{
    Which principal components to use for plotting (eg. "1,2")
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
## use the data matrix, 'ASCAX', and an experimental design matrix, 'ASCAF'.
data(ASCAdata)
ASCA <- ASCA.Calculate(ASCAX, ASCAF, equation.elements = "1,2,12", scaling = TRUE)

## plot the loadings of the first two principal components of the first factor
ASCA.PlotLoadings(ASCA, ee = "1", pcs="1,2")
}


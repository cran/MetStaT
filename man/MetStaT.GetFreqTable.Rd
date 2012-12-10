\name{MetStaT.GetFreqTable}
\alias{MetStaT.GetFreqTable}

\title{
Tabulates the frequency of all unique values.
}
\description{
Very similar to R's table function in the base package.
However, it returns the results in the order of occurrence, and not ordered by name orvalue. In addition, instead of tabulating over all unique value-occurrences in the data, an array can be supplied with pre-defined class-values over which to tabulate. 
}
\usage{
MetStaT.GetFreqTable(classes.to.check, class.types = NULL)
}

\arguments{
  \item{classes.to.check}{an array that contains the values with the unique class-values to be tabulated.
  }
  \item{class.types}{an optional array which contains pre-defined class values over which to tabulate.
  }
}

\author{
Tim Dorscheidt
}

\keyword{ Table }


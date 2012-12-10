\name{MetStaT.RemoveNaColumns}
\alias{MetStaT.RemoveNaColumns}

\title{
Removes all columns in a matrix that contain one or more NAs.
}
\description{
This function will check per column whether any of its values are NA. If so, that column is removed from the resulting output matrix.
}
\usage{
MetStaT.RemoveNaColumns(input.matrix, rows.to.ignore = NULL)
}

\arguments{
  \item{input.matrix}{the matrix to be checked for columns containing NA values.
  }
  \item{rows.to.ignore}{a vector of row-indices which will exclude those rows when checking for NA values.
  }
}

\value{
The same matrix as the input matrix, with the exception of the any columns that contain NA values (ignoring any rows defined by the user).
}

\author{
Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }

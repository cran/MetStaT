\name{FoM.GetIdOrderedMatrix}
\alias{FoM.GetIdOrderedMatrix}

\title{
Order the matrix of samples by their ID
}
\description{
Finds the sample rows in the matrix 'data' that contain repeats of the same sample on the basis of the identifying columns, and assigns a new single unique ID to each of these rows. Also orders the matrix on the basis of these newly assigned IDs.
}
\usage{
FoM.GetIdOrderedMatrix(data, cols.id = 1, cols.values = -1)
}

\arguments{
  \item{data}{
  the matrix which contains both the sample data and the identification information per sample.
  }
  \item{cols.id}{which columns contain the identity information per sample.
  }
  \item{cols.values}{which columns contain the relevant metabolomics sampling data.
  }
}

\value{
A list is returned containing the following values:
  \item{ids }{A list that contains both the combinations of ID values found in the ID columns which are unique (row.patterns) and, for each of these combinations, a list with the row indices (indices.per.pattern) belonging to that unique ID combination.}
  \item{data }{A subset of the input data matrix which excludes all the identification columns (cols.id) and only contains columns defined by the argument cols.values.
  }
\item{means.per.id }{Each sample can constitute of multiple repeats. This matrix contains the mean per sample over all of its repeats per value column requested.
  }
}

\author{
Tim Dorscheidt
}

\keyword{Figures of Merit}

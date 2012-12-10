\name{MetStaT.CreateFileFromHeaderMatrix}
\alias{MetStaT.CreateFileFromHeaderMatrix}

\title{
Writes a matrix to file with column names and optionally row names as well.
}
\description{
Essentially a wrapper function for R's write.table method. This function will write the input matrix to a file, always maintaining column name information from the input matrix. Row names in the matrix will be ignored by default, but can be included as well or supplied manually as a vector. The values in the output file will be separated by tabs.
}
\usage{
MetStaT.CreateFileFromHeaderMatrix(file.to.create, header.matrix, rownames = FALSE)
}

\arguments{
  \item{file.to.create}{name of the file to be written.
  }
  \item{header.matrix}{the matrix containing the data which needs to be written.
  }
  \item{rownames}{set this to TRUE in case you wish the matrix' rownames to be stored as well. Or supply a    vector of row names.
  }
}

\value{
A tab seperated output file containing the data from the matrix, and its column names (and row names if defined).
}

\author{
Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }

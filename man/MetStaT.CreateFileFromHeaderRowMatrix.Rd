\name{MetStaT.CreateFileFromHeaderRowMatrix}
\alias{MetStaT.CreateFileFromHeaderRowMatrix}

\title{
Writes a matrix to file with row and column names, and optionally a description at the first (top left) data position in the file.
}
\description{
This function will write the input matrix to a file, always including row names and column names. If no row or column names are present in the input matrix, default names will be generated. In addition, the first data position in the output file is reserved for a description. 
}
\usage{
MetStaT.CreateFileFromHeaderRowMatrix(file.to.create, row.header.matrix, description = "")
}

\arguments{
  \item{file.to.create}{name of the file to be written.
  }
  \item{row.header.matrix}{the matrix containing the data which needs to be written. Its row and column names will also be written to the output file (when not present in the matrix, default names are generated).
  }
  \item{description}{an optional data description can be supplied that will fill the first data position in the output file (the position that would normally be empty).
  }
}

\value{
A tab seperated output file containing the data from the matrix and its row and column names (default names are generated if where none were supplied). The first data position in the file (which is neither used by the matrix data, nor any of the row or column names) can contain an optional description. 
}

\author{
Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }

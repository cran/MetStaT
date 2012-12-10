\name{MetStaT.WriteDataObjectToFile}
\alias{MetStaT.WriteDataObjectToFile}

\title{
  Write data contained within an R object as character output to a file.
}
\description{
  Tries to write the supplied data object as character output to a file. Supports the following data objects: matrix, numerical and character. Will also write the contents of a list object to a file if it only contains objects of the supported types.
}
\usage{
  MetStaT.WriteDataObjectToFile(filename, data)
}

\arguments{
  \item{filename}{
    the filename of the text file the data needs to be written to.
  }
  \item{data}{
    the data object which needs to be written as character output to the file. Supports matrix, numerical and character objects. Also supports writing the complete contents of a list object to a single file, if the list only contains supported data object types.
  }
}

\value{
  A single text file containing a character representation of the data object.
}

\author{
  Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }
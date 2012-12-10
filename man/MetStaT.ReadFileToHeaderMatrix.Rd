\name{MetStaT.ReadFileToHeaderMatrix}
\alias{MetStaT.ReadFileToHeaderMatrix}

\title{
Reads a data file to a matrix.
}
\description{
This function can read data files that have their data separated by a certain symbol (eg. comma's or tabs). In addition, the method can handle data files which contain row and column names, and maintains these in the resulting matrix.
}
\usage{
MetStaT.ReadFileToHeaderMatrix(file.to.read, file.contains.header = TRUE, 
file.contains.row.names = FALSE, rows = "", cols = "", separator = "\\t", 
force.numeric = FALSE)
}

\arguments{
  \item{file.to.read}{filename of file to be used as input.
  }
  \item{file.contains.header}{boolean. Does the file contain column names in its first row.
  }
  \item{file.contains.row.names}{boolean. Does the file contain row names in its first column.
  }
  \item{rows}{can be used to include or exclude rows during import. Only include a set of rows for import by supplying positive row numbers or ranges (eg. "1,2,3" or "1:3 will both limit the import to rows 1 to 3). Exclude a set of rows for import by supplying negative row numbers or ranges (eg. "-1,-2,-3" or "-1:-3 will both exclude rows 1 to 3 (and include the other rows)).
  }
  \item{cols}{can be used to include or exclude columns during import. Only include a set of columns for import by supplying positive row numbers or ranges (eg. "1,2,3" or "1:3 will both limit the import to columns 1 to 3). Exclude a set of columns for import by supplying negative columns numbers or ranges (eg. "-1,-2,-3" or "-1:-3 will both exclude columns 1 to 3 (and include the other columns)).
}
  \item{separator}{which separator symbol is used in the file to separate the data values (eg. "\\t" for tab separated values, or "," for comma separated values).
  }
  \item{force.numeric}{boolan. If TRUE, the values in the data range of the input file are forced to numerical values (non-numerical values will become NA).
  }
}

\value{
Returns a matrix containing the data values in the file, and optionally the row and column names.
}

\author{
Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }

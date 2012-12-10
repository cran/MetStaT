\name{MetStaT.ConvertToNumericClasses}
\alias{MetStaT.ConvertToNumericClasses}

\title{
Convert value-types in an array or matrix (per column) to pre-defined class-values
}
\description{
This functions converts values in an array or matrix-column to pre-defined class-values.
Each unique value in the array or matrix-column is assigned to a class-value in order of occurrence. For a matrix, this process is repeated per column (the user can define which columns). Default pre-defined class-values are -1 to 100.
}
\usage{
MetStaT.ConvertToNumericClasses(data, cols = NULL, new.classes = NULL)
}

\arguments{
  \item{data}{an array or matrix containing the values to be converted to class values.
  }
  \item{cols}{which columns of the matrix need to be converted.
  }
  \item{new.classes}{user defined class values to be used (re-used in case class types needed exceeds class types defined)
  }
}

\value{
The same array or matrix as the input, but with each value replaced with numerical class values.
}

\author{
Tim Dorscheidt
}



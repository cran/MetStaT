\name{MetStaT.ConvertToNumeric}
\alias{MetStaT.ConvertToNumeric}

\title{
Converts a matrix of strings to numeric values
}
\description{
This function takes a matrix containing string values and converts them to numeric values   wherever possible. Strings of value "na" (case insensitive) are converted to NA without giving a warning. Uninterpretable strings also result in a NA value, but do generate a warning.
}

\usage{
  MetStaT.ConvertToNumeric(matrix)
}

\arguments{
  \item{matrix}{
    a matrix of string values.
  } 
}

\value{
A numerical matrix is returned.
}

\author{
Tim Dorscheidt
}

\keyword{ Numeric }
\keyword{ Matrix}
\keyword{Conversion}  

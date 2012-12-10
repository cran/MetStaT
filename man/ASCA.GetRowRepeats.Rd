\name{ASCA.GetRowRepeats}
\alias{ASCA.GetRowRepeats}

\title{
Determination of all unique row value combinations
}
\description{
This function will determine the unique row-patterns in the input matrix.
It will return a list which elements are named after the unique row-patterns, each containing the row-indices belonging to that pattern.
}
\usage{
ASCA.GetRowRepeats(mat)
}

\arguments{
  \item{mat}{
An input matrix
  }
}

\value{
A list with elements named after the unique row-pattern.
Each element contains the row-indices for which this pattern occurs.
}

\author{
Tim Dorscheidt
}


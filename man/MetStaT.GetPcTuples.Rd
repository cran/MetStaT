\name{MetStaT.GetPcTuples}
\alias{MetStaT.GetPcTuples}

\title{
Obtain all possible pairs of principal components out of a defined set. 
}

\description{
Supplied with the total number of principal components of interest, this method will return a list of each possible pairing between two principal components.
}

\usage{
MetStaT.GetPcTuples(no.pc)
}

\arguments{
  \item{no.pc}{
    the number of principal components for which pairings need to found.
  }
}

\value{
Returns a list of pairs, each containing the two principal component numbers for that pairing. 
}

\author{
  Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }

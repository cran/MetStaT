\name{PCA.PlotScores}
\alias{PCA.PlotScores}

\title{
Score plot for the results of PCA.Calculate.
}
\description{
Allows the user to plot a score plot for two or more components. Also allows the user to set advanced labeling options.
}
\usage{
PCA.PlotScores(pr.object, pcs = c(1, 2), labels = "none", custom.labels = NULL, 
dot.class.vector = NULL, col.class.vector = NULL)
}

\arguments{
  \item{pr.object}{
    the result of PCA.Calculate 
  }
  \item{pcs}{
    Which principal components to use for plotting (eg. "1,2" or "1:4")
  }
  \item{labels}{
    what type of labels to be used for the scores. Can either be: "none" or "dots" which will plot simple dots, "numerical" which will plot numbers, or "custom" which will plot user defined labels contained in the custom.labels argument.  
  }
  \item{custom.labels}{
    in case the labels argument is set to "custom", this argument needs to contain a vector of character labels to be used for plotting.
  }
  \item{dot.class.vector}{
    NULL by default, in which case all dots are standard dots. A numerical vector can be supplied that defines each dot's symbol type (using R's default number to symbol type conversion).
  }
  \item{col.class.vector}{
    NULL by default, in which case all dots are black. A numerical vector can be supplied that defines each dot's color (using R's default number to color conversion).
  }
}

\value{
  Only the plot is returned.
}
 
\author{
Tim Dorscheidt
}

\note{
  When using colors to distinguish between points, keep in mind that only 8 different colors are available.
When using symbols to distinguish between points, keep in mind that only 25 different symbols are available.
}

\keyword{ Matrix }
\keyword{ File }

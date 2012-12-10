\name{ASCA.Calculate
}

\alias{ASCA.Calculate
}

\title{ASCA method (ANOVA-simultaneous component analysis)
}

\description{ASCA does PCA on the averages of the treatment levels for an experimental design.
}

\usage{
ASCA.Calculate(data, levels, equation.elements = "", scaling = FALSE, 
only.means.matrix = FALSE, use.previous.asca = NULL)
}

\arguments{
  \item{data}{numeric data matrix that is to be analyzed with ASCA. Variables are represented by columns, observations by rows.
}
  \item{levels}{numeric matrix describing the experimental design. Each factor is represented by a column. The elements of the columns give the treatment level the row belongs to.
}
  \item{equation.elements}{a string value indicating which factors and interactions are to be part of the ASCA analysis. A factor is defined by writing its column number in the 'levels' matrix (eg. "1") and an interaction by combining the interacting factors' column numbers from the 'levels' matrix (eg. "123"). Multiple factors/interactions are seperated with comma's (eg. "1,2,12").
}
  \item{scaling}{boolean; determines autoscaling of the data. Default is FALSE, data is not auto-scaled.
}
  \item{only.means.matrix}{boolean; if TRUE, only the matrix with averages for the treatment levels is returned. Default is FALSE. (Note: this is generally only used for performance optimization during many runs, such as permutation testing) 
}
  \item{use.previous.asca}{previous ASCA results can be used for some calculations that are independent of the data values. Useful for permutation testing. Default is NULL, do not use previous results.
}
}

\details{
ASCA decomposes a data matrix X in effect matrices A, B, ... containing the level averages for each treatment level, interaction matrices U, V, ... between two or more factors and a residual matrix E with data that is not represented by the model: X = A + B + ... + U + V + ... + E. Principal component analysis is then used as a variable reduction method on each of the effect and interaction matrices. Scores, loadings and singular values for each factor and each interaction are returned.
}

\value{
PerformAsca returns a list with the following components:
  \item{data }{original data matrix.
   }
  \item{levels }{original matrix with treatment levels.
   }
  \item{svd }{an SVD performed on all elements in "equation.elements" using this package's custom PCA.Calculate.
   }
  \item{remainder }{residual matrix.
   }
  \item{ee.names }{string array containing the factors and interactions that were used in this ASCA (i.e. "equation.elements")
  }

All remaining list elements (eg. "1", "12") correspond to a separate factor or interaction. Each is a list containing the ASCA results with the following elements:
  \item{factors.evaluated }{numerical array of the relevant factor (or multiple factors for an interactions)  
  }
  \item{level.combinations }{contains all information on which combinations of factor-levels occur in the data (row.patterns) and, for each combination, lists the row-indices where it occurs
   }
  \item{means.matrix }{the matrix with means of the treatment levels
   }
  \item{reduced.matrix }{values left after the (already reduced by previously calculated factors/interactions). The data matrix is reduced by this factor/interaction's means matrix
   }
  \item{svd }{a SVD performed on this factor/interaction's means matrix using PCA.Calculate
  }
}

\references{
Smilde AK, Jansen JJ, Hoefsloot HCJ, Lamers R JAN, van der Greef J,
Timmerman ME. \emph{ANOVA simultaneous component analysis (ASCA):
a new tool for analyzing designed metabolomics data}. Bioinformatics
\strong{21}, (2005), p. 3043 - 3048.

Gooitzen Zwanenburg, Huub C.J. Hoefsloot, Johan A. Westerhuis,
Jeroen J. Jansen and Age K. Smilde, \emph{ANOVA principal component analysis and
ANOVA simultaneous component analysis: a comparison}. J Chemometrics, \strong{25},
(2011), p. 561 - 567
}

\author{
Tim Dorscheidt, Gooitzen Zwanenburg
}
\note{
ASCA.Calculate uses the custom method "PCA.Calculate" (part of MetStaT package) for the principal component analysis.
}

\seealso{
\code{\link{ASCA.DoPermutationTest}}, \code{\link{PCA.Calculate}}
}
\examples{
## use the data matrix, 'ASCAX', and an experimental design matrix, 'ASCAF'
data(ASCAdata)
ASCA <- ASCA.Calculate(ASCAX, ASCAF, equation.elements = "1,2,12", scaling = FALSE)

## plot the results
ASCA.Plot(ASCA)
}

\keyword{ ASCA }
\keyword{ PCA } 

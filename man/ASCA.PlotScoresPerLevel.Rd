\name{ASCA.PlotScoresPerLevel}
\alias{ASCA.PlotScoresPerLevel}

\title{
ASCA scores plot with projected data.
}
\description{
Plots the ASCA scores with projected data for a selected factor or interaction.
}
\usage{
ASCA.PlotScoresPerLevel(asca, ee, pcs = "1,2")
}

\arguments{
    \item{asca}{results of a performed ASCA analysis
    }
	\item{ee}{which factor/interaction to use (eg. "1" or "12")
    }
  	\item{pcs}{which PCs to use for plotting (eg. "1,2")
    }
}

\value{
Only the plot is returned
}
\references{
Gooitzen Zwanenburg, Huub C.J. Hoefsloot, Johan A. Westerhuis,
Jeroen J. Jansen and Age K. Smilde, \emph{ANOVA principal component analysis and
ANOVA simultaneous component analysis: a comparison}. J Chemometrics, \strong{25},
(2011), p. 561 - 567
}
\author{
Tim Dorscheidt, Gooitzen Zwanenburg
}
\note{
Output of PerformAsca is required as input.
}

\examples{
##Plot the results after doing PerformAsca
## use the data matrix, ASCAX, and an experimental design matrix, ASCAF.
data(ASCAdata)
ASCA <- ASCA.Calculate(ASCAX, ASCAF, equation.elements = "1,2,12", scaling = TRUE)

## plot the scores for the first two principal components and the projections of 
## the data for the second factor
ASCA.PlotScoresPerLevel(ASCA, ee = "2", pcs = "1,2")
}

\keyword{ ASCA}
\keyword{ PCA }

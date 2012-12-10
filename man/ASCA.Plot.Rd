\name{ASCA.Plot}
\alias{ASCA.Plot}
\title{
Plot ASCA results
}
\description{
This function generates several plots detailing the results of the performed ASCA
}
\usage{
ASCA.Plot(asca)
}

\arguments{
  \item{asca}{A performed ASCA analysis}
}
\details{
ASCA.Plot takes the output of ASCA.Calculate as its input and generates scores and loading plots, including projections of the data on the first two principal components, for the complete data matrix and the effect matrices.
}
\value{
Returns several plot windows in quick succession. Therefore, it is advised to capture by some other means (see examples below). The first two plots are a score plot and loadings plot of the performed principal component analysis (PCA) on the original data. Then, for each factor/interaction, the following plots follow:
- a score plot of PC1 vs PC2 of the PCA performed on the means-matrix.
- a loadings plot of PC1 and PC2 of the PCA performed on the means-matrix.

}
\references{
Gooitzen Zwanenburg, Huub C.J. Hoefsloot, Johan A. Westerhuis,
Jeroen J. Jansen and Age K. Smilde, \emph{ANOVA principal component analysis and
ANOVA simultaneous component analysis: a comparison}. J Chemometrics, \strong{25},
(2011), p. 561 - 567
}
\author{
Tim Dorscheidt
}
\note{
Output of ASCA.Calculate is required as input.
}

\examples{
##Plot the results after doing ASCA.Calculate
## use the data matrix, 'data', and an experimental design matrix, 'F'.
data(ASCAdata)
ASCA <- ASCA.Calculate(ASCAX, ASCAF, equation.elements = "1,2,12", scaling = TRUE)

## plot the results to a graphical output such as R's pdf writer
pdf("ASCA_Results.pdf")
ASCA.Plot(ASCA)
dev.off()
}

\keyword{ASCA}
\keyword{PCA}


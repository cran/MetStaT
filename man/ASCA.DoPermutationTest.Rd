\name{ASCA.DoPermutationTest}
\alias{ASCA.DoPermutationTest}
\title{
Permutation test for ASCA
}
\description{
Does a permutation test on the results from ASCA.Calculate by repeating the ASCA analysis many times with permutated samples.
}
\usage{
ASCA.DoPermutationTest(asca, perm = 1000)
}

\arguments{
  \item{asca}{a previously done ASCA analysis should be supplied.
  }
  \item{perm}{the number of permutations to be performed.
  }
}
\details{
The significance of treatment effects or of interactions between treatment effects can be evaluated by considering the p-values that are returned by ASCA.DoPermutationTest. The p-values are determined by the fraction permutations that have a larger value for the test statistic than the test statistic of the data matrix. The test statistic used is the sum of squares of the treatment level averages.
}
\value{
An array is returned that contains the p-value per factor or interaction of the ASCA.
}
\references{
Gooitzen Zwanenburg, Huub C.J. Hoefsloot, Johan A. Westerhuis,
Jeroen J. Jansen and Age K. Smilde, \emph{ANOVA principal component analysis and
ANOVA simultaneous component analysis: a comparison}. J Chemometrics, \strong{25},
(2011), p. 561 - 567

MARTI J. ANDERSON, and CAJO J. F. TER BRAAK, \emph{PERMUTATION TESTS FOR MULTI-FACTORIAL
ANALYSIS OF VARIANCE}. Journal of Statistical Computation and Simulation,
\strong{73(2)}, (2003) p. 85 - 113
}
\author{
Tim Dorscheidt, Gooitzen Zwanenburg
}
\note{
Output of ASCA.Calculate is required.
}

\examples{

## Do ASCA on all (both) factors and the interaction between the two factors
data(ASCAdata)
ASCA <- ASCA.Calculate(ASCAX, ASCAF, equation.elements = "1,2,12", scaling = TRUE)

## Do a permutation test to evaluate the significance to the two factors and the interaction.
ASCA.DoPermutationTest(ASCA, perm=1000)
}

\keyword{ ASCA}
\keyword{ Permutations }
\keyword{ Significance test}
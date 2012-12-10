\name{FoM.Calculate}
\alias{FoM.Calculate}

\title{
Calculate best fitting Figure of Merit using method by Van Batenburg et al. (2011).  
}
\description{
This function will accept metabolomics sample data for a single metabolite and includes sample identification. It will bin corresponding samples by intensity and calculate a measure for each bin's error. The intensity per bin versus this measure of error will be plotted, and a best fit will be found and plotted that consists of a additive and a multiplicative part. For more details see the references.  
}
\usage{
FoM.Calculate(data, cols.id = 1, col.value, ids.per.bin, quiet = FALSE, 
repeats.per.id = -1, fit.type = 1, alpha.steps = 100)
}

\arguments{
  \item{data}{
  a matrix for which each row contains a sample's id and metabolomics data.
  }
  \item{cols.id}{
   indicate which column or columns in the matrix contain information pertaining to each sample's id, in which repeats of the same sample have the same id and can be binned together.
  }
  \item{col.value}{
   column in the data matrix that contains the metabolomics data to be plotted and fitted.
  }
  \item{ids.per.bin}{
  number of sample rows per bin.
  }
  \item{quiet}{
  should text output be given on the status of the calculations.
  }
  \item{repeats.per.id}{
  max number of repeats each sample may contain. If lower than the actual number repeats found,  these extra repeats are ignored.
  }
  \item{fit.type}{
  which type of fitting should be used. Can be either "1" for use of the default R method "lm", or "2" for the more robust fitting method "rlm" from the 'MASS' package.
  }
  \item{alpha.steps}{
  how many points on the X axis in the final graph should be tried as a separation between the additive and the multiplicative fitting parts for finding the best fit. 
  }
}

\value{
In addition to plotting the bins and showing the best fit, a list is returned containing the following values:
  \item{best.fit }{a vector containing the three parameters that define the best fit: alpha value, additive coefficient, multiplicative coefficient, and the residual of the fit.}
  \item{alphas }{a vector containing all the alpha values used for fitting.
  }
  \item{tot.res.ssq.per.alpha }{a vector that gives the alpha values' corresponding residuals per fit.
  }
  \item{ad.coeff.per.alpha }{a vector that gives the alpha values' corresponding additive coefficient per fit.
  }
  \item{mu.coeff.per.alpha }{a vector that gives the alpha values' corresponding multiplicative coefficient per fit.
  }
}
\references{
New Figures of Merit for Comprehensive Functional Genomics Data: The Metabolomics Case. Van Batenburg MF, Coulier L, van Eeuwijk F, Smilde AK, Westerhuis JA. Analytical Chemistry, Volume 83(9) (2011), pages 3267-3274
}
\author{
Marcel van Batenburg and Tim Dorscheidt
}
\examples{
data(FoMData)
FoM.Calculate(FoMData, cols.id = c(1,2), 3, 5, quiet = FALSE, repeats.per.id = -1, 
fit.type = 1, alpha.steps = 100)

}
\keyword{Figures of Merit}
\keyword{Metabolomics}

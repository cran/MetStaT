\name{FoM.FitBinnedSampleRepeatErrors}
\alias{FoM.FitBinnedSampleRepeatErrors}

\title{
Fitting step in Figure of Merit calculation.
}
\description{
This is the last step in obtaining a figure of merit. The binned data is fitted by iterating over all alpha values. For each alpha value the best additive fit left of the alpha value and the best multiplicative fit right of the alpha value is determined. The alpha value which then produces the best overall fit (smallest residual) is chosen for the overall fit. 
}
\usage{
FoM.FitBinnedSampleRepeatErrors(ordered.bins.by.mean, fit.type = 1, alpha.steps = 100)
}

\arguments{
  \item{ordered.bins.by.mean}{
  the result of the FoM.OrderAndBinIdByMeans method.
  }
  \item{fit.type}{
  which type of fitting approach should be used. This can be either "1" for use of the standard "lm" method in R. Or can be "2" in case the "rlm" method from the MASS package should be used. The latter is a more robust fitting method.
  }
  \item{alpha.steps}{
  the number of alpha values to be used (in essence it defines the number of points on the x axis for which different fits need to be tried to find the best fit).
  }
}

\value{
In addition to plotting the bins and showing the best fit, a list is returned containing the following values:
  \item{best.fit }{A vector containing the three parameters that define the best fit: alpha value, additive coefficient, multiplicative coefficient, and the residual of the fit. }
  \item{alphas }{A vector containing all the alpha values used for fitting.
  }
  \item{tot.res.ssq.per.alpha }{A vector that gives the alpha values' corresponding residuals per fit.
  }
  \item{ad.coeff.per.alpha }{A vector that gives the alpha values' corresponding additive coefficient per fit.
  }
  \item{mu.coeff.per.alpha }{A vector that gives the alpha values' corresponding multiplicative coefficient per fit.
  }
Note: this result is identical to the FoM.Calculate result, since this method is the last step in the overall FoM method.
}

\author{
Tim Dorscheidt
}

\keyword{Metabolomics}

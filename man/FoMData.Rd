\name{FoMData}
\alias{FoMData}
\docType{data}
\title{
Example data for FoM.Calculate
}
\description{
The data set consists of a 151 by 3 data matrix. Each row represents a measurement, the first two colunms identify the samples by plot number and batch number. Plot could represent a plot in a field trial and batch a collection date. Likewise, plot could represent a tissue and batch a number of samples taken from the tissues. 
}
\usage{data(FoMData)}
\format{
  The format is: \cr
  matrix, dim(FoMData)=151, 3 \cr
  colnames(FoMData)="Plot"  "Batch" "P01"
}
\details{
The program collects observations with unique number combinations of the identification columns, in this example the first two columns. The samples are then ordered according to the intensity of the measured value (third column in this example). After ordering the samples are binned and the binned values are fitted to the Rocke-Lorentzano model. The program returns the best fit parameters and a plot of the variance against the intensity of the binned values.  
}


\keyword{Figures of Merit}
\keyword{datasets}

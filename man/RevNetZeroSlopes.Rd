\name{RevNetZeroSlopes}
\alias{RevNetZeroSlopes}
\docType{data}
\title{
Example data for RevNetZeroSlopesMethod
}
\description{
The data provide an example for the Zero Slopes method to reverse engineer a metabolomic network. The matrix dataset contains measured metabolite concentrations at different times.
}
\usage{data(RevNetZeroSlopes)}
\format{
  The format is:\cr
    RevNetZeroSlopes, numerical matrix with dim(dataset) = 51 4 4.\cr
    first dimension: time \cr
    second dimension: metabolites\cr
    third dimension: experiments\cr 
 }
\details{
The dataset contains 4 experiments with the following initial conditions:\cr
  experiment 1, metabolite 1 is 20\% increased from steady state\cr
  experiment 2, metabolite 2 is 20\% increased from steady state\cr
  experiment 3, metabolite 3 is 20\% increased from steady state\cr
  experiment 4, metabolite 4 is 20\% increased from steady state\cr

Running the example produces the vertex-edge matrix:

-1 1 0 0 \cr
1 -1 1 0 \cr
0 1 -1 0  \cr
0 0 1 -1 \cr

}
\source{
Chassagnole, C., D. A. Fell, et al. (2001). "Control of the threonine-synthesis pathway in Escherichia coli: a theoretical and experimental approach." Biochemical Journal 356: 433-444.
}
\references{
Reverse engineering of metabolic networks, a critical assessment. Diana M. Hendrickx, Margriet M. W. B. Hendriks, Paul H. C. Eilers, Age K. Smilde and Huub C. J. Hoefsloot. Mol. BioSyst, Volume 7:2 (2011) pages 511-520
}

\keyword{datasets}
\keyword{RevNetZeroSlopesMethod}

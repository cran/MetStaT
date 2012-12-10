\name{RevNetTimeLagged}
\alias{RevNetTimeLagged}
\docType{data}
\title{
Example data for RevNetTimeLaggedMethod
}
\description{
The data provide an example for the Time Lagged method to reverse engineer a metabolomic network. The matrix dataset contains measured metabolite concentrations at different times.
}
\usage{data(RevNetTimeLagged)}
\format{
  The format is:\cr
    RevNetTimeLagged, numerical matrix with dim(RevNetTimeLagged) = 100 4
    first dimension: time \cr
    second dimension: metabolites\cr
 }
\details{
The dataset contains metabolite concentrations from the following experiment: \cr
Every 9 seconds metabolite 1 is increased 20\% from steady state. 
Running the example produces the vertex-edge matrix:

1 1 0 0 \cr
1 1 1 0 \cr
0 1 1 1  \cr
0 0 1 1 \cr

}
\source{
Chassagnole, C., D. A. Fell, et al. (2001). "Control of the threonine-synthesis pathway in Escherichia coli: a theoretical and experimental approach." Biochemical Journal 356: 433-444.
}
\references{
Reverse engineering of metabolic networks, a critical assessment. Diana M. Hendrickx, Margriet M. W. B. Hendriks, Paul H. C. Eilers, Age K. Smilde and Huub C. J. Hoefsloot. Mol. BioSyst, Volume 7:2 (2011) pages 511-520
}

\keyword{datasets}
\keyword{RevNetTimeLaggedMethod}

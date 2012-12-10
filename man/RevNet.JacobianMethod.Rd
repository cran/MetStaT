\name{RevNet.JacobianMethod}
\alias{RevNet.JacobianMethod}

\title{
  Reverse engineering of networks: Penalized Jacobian method
}

\description{
  Network connections are estimated by calculating the Jacobian Matrix of the network.
Details of algorithm and the theory behind the algorithm can be found in the references section.
This method needs high frequency sampling data of small perturbations and steady state concentrations. 
}

\usage{
  RevNet.JacobianMethod(data, delta.t, steady.state.concentrations, lamba.penalty.par, 
kappa.penalty.par, jacobian.threshold)
}

\arguments{
  \item{data}{
    multi-dimensional sampling matrix: time x variables x experiments
  }
  \item{delta.t}{
    time between subsequent time points used to calculate the fourth order approximation to the Jacobian. It the data are not evenly sampled interpolation can be used to obtain evenly distributed data with time interval \code{delta.t}.
  }
  \item{steady.state.concentrations}{
    a vector indicating the steady concentrations of the variables (must match second dimension size of 'data')
  }
  \item{lamba.penalty.par}{
    lambda penalty parameter to ensure sparsity in the Jabocian matrix}
  \item{kappa.penalty.par}{
    kappa penalty parameter to ensure sparsity in the Jabocian matrix}
  \item{jacobian.threshold}{
    threshold above which values in the found Jacobian matrix indicate an edge in the network.
  }
}

\value{
  A connectivity matrix is returned.
} 

\references{
  Reverse engineering of metabolic networks, a critical assessment. Diana M. Hendrickx, Margriet M. W. B. Hendriks, Paul H. C. Eilers, Age K. Smilde and Huub C. J. Hoefsloot. Mol. BioSyst, Volume 7:2 (2011) pages 511-520
}

\author{
  Diana Hendrickx and Tim Dorscheidt
}

\examples{
data(RevNetJacobian)
RevNet.JacobianMethod(RevNetJacobian, 0.01, SteadyState, 0.0002, 1, 0.0001)
}

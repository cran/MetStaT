\name{ASCA.PlotScores}
\alias{ASCA.PlotScores}

\title{
Score plot for a specific factor or interaction of the ASCA
}
\description{
Allows the user to plot a single score plot for one factor or interaction (or for the SVD on the original data)
}
\usage{
ASCA.PlotScores(asca, ee = "", PCs = "1,2")
}

\arguments{
  \item{asca}{Results of a performed ASCA analysis
  }
  \item{ee}{Which factor or interaction to use (eg. "1", or "12", or leave empty to use original data)
  }
  \item{PCs}{Which PCs to use for plotting (eg. "1,2")
  }
}

\value{
Only the plot is returned.
}

\author{
Tim Dorscheidt
}


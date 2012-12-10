\name{MetStaT.PlotToFile}
\alias{MetStaT.PlotToFile}

\title{
Save results of R plotting expressions to files in a zip package.
}
\description{
Executes supplied R plotting expressions, saves each plot as a separate graphical file, and bundles all files as a zip package.
}
\usage{
MetStaT.PlotToFile(zipfile.name, filename.no.ext, plot.expressions, file.type, ...)
}

\arguments{
  \item{zipfile.name}{name of zip file that will contain all the plot outputs.
  }
  \item{filename.no.ext}{body of the file name for each of the plot results. A numbered index is added to this name.
  }
  \item{plot.expressions}{expressions that are to be executed in R and have a plot as a result.
  }
  \item{file.type}{which graphical output is to be used for writing the plots to a file. Can be either: "pdf", "bmp", "jpeg", "png", or "tiff", which will output the corresponding graphical format.
  } 
  \item{\dots}{further arguments that are to be forwarded to the method which writes the plot to a file (eg. pdf (filename, output.width, output.height, ...)).
  }
}

\value{
A single zip file is returned, which will contain the seperate plots as individual files in the format chosen.
}

\author{
Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }

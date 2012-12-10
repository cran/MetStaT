\name{MetStaT.ExportDataToFile}
\alias{MetStaT.ExportDataToFile}

\title{
Exports the results of supplied R expressions as text files in a single zip package.
}
\description{
This function will execute the expressions supplied, and will then attempt to write the results per expression to a text file using the method MetStaT.WriteDataObjectToFile. Finally, all text files are bundled as a zip file. 
}
\usage{
MetStaT.ExportDataToFile(zipfile.name, filename.no.ext, data.expressions, file.type)
}

\arguments{
  \item{zipfile.name}{the name of the final zip file.
  }
  \item{filename.no.ext}{the body of the filename that contains the data results for each of the supplied expressions. The final name will have a number added corresponding to the expression's index in the supplied expressions vector.
  }
  \item{data.expressions}{a vector of R expressions which need to be executed and whose results will be written to a text file.
  }
  \item{file.type}{the extension name for each of the text files.
  }
}

\value{
A single zip file which contains separate text files that each contain the results for one of the supplied R expressions. 
}

\author{
Tim Dorscheidt
}

\keyword{ Data }
\keyword{ Zip }

\name{MetStaT.TrimCustom}
\alias{MetStaT.TrimCustom}

\title{
  Limits an input string to a certain length
}
\description{
This function will return an adapted version of the input string and will guarantee a   certain maximum length. If the string is shortened, it will end with the default symbols ".." or a used defined ending. Additionally, the user can define a certain number of characters that need to included from the end of the original string (useful if the input strings contain salient ending characters, such as numbers).
}
\usage{
  MetStaT.TrimCustom(text, max.length = 5, trim.ending = "..", include.ending.length = 0)
}

\arguments{
  \item{text}{
    the string which needs to be shortened.
  }
  \item{max.length}{
    the guaranteed maximum length that the resulting string may have.
  }
  \item{trim.ending}{
    the symbols to used when the string is shortened.
  }
  \item{include.ending.length}{
    the number of ending characters which must also be included in the resulting string.
  }
}

\value{
  A shortened version of the input string.
}

\author{
  Tim Dorscheidt
}

\keyword{ Matrix }
\keyword{ File }

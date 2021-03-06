% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pad0.R
\name{pad0}
\alias{pad0}
\title{Pad with Zeros}
\usage{
pad0(x, len)
}
\arguments{
\item{x}{Vector.}

\item{len}{Number of characters you want in each value.}
}
\value{
Character vector with padded values.
}
\description{
Adds leading zeros to a numeric vector to make each value a specific length. For values shorter than length passed, leading zeros are removed.
Author: Scott Sobel. Tech Review: Bryce Chamberlain.
}
\examples{
pad0( c(123,00123,5), len = 5 )
pad0( c(123,00123,5), len = 2 )
pad0( '1234', 5 )
}

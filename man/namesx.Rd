% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/namesx.R
\name{namesx}
\alias{namesx}
\title{Names Like}
\usage{
namesx(df, char, fixed = TRUE, ignore.case = TRUE)
}
\arguments{
\item{df}{Object with names you'd like to search.}

\item{char}{Regex chracter to match to columns.}

\item{fixed}{Match as a string, not a regular expression.}

\item{ignore.case}{Ignore case in matches.}
}
\value{
Vector of matched names.
}
\description{
Get column names that match a pattern.
Author: Scott Sobel. Tech review: Bryce Chamberlain.
}
\examples{
namesx( iris,'len' )
namesx( iris,'Len' )
}

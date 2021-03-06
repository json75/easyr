% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bindf-joinf.R
\name{bindf}
\alias{bindf}
\title{Bind Rows with Factors}
\usage{
bindf(data.top, data.bottom, sort.levels = TRUE, ...)
}
\arguments{
\item{data.top}{Data to be binded in the top rows.}

\item{data.bottom}{Data to be binded in the bottom rows.}

\item{sort.levels}{Sort the factor levels after combining them.}

\item{...}{Other arguments passed to bind_rows.}
}
\value{
Binded data, with any factors modified to contain all levels in the binded data.
}
\description{
dplyr's bind_rows doesn't work well when the data frame has factors. This function handles factors before applying bind rows.
Author: Bryce Chamberlain.
}
\examples{

# create data where factors have different levels.
df1 = data.frame(
  factor1 = c( 'a', 'b', 'c' ),
  factor2 = c( 'high', 'medium', 'low' ),
  factor.join = c( '0349038u093843', '304359867893753', '3409783509735' ),
  numeric = c( 1, 2, 3 ),
  logical = c( TRUE, TRUE, TRUE )
)#' 
df2 = data.frame(
  factor1 = c( 'd', 'e', 'f' ),
  factor2 = c( 'low', 'medium', 'high' ),
  factor.join = c( '32532532536', '304359867893753', '32534745876' ),
  numeric = c( 4, 5, 6 ),
  logical = c( FALSE, FALSE, FALSE )
)

# bindf preserves factors but combines levels.
# factor-friendly functions default to ordered levels.
str( df1 )
str( bindf( df1, df2 ) )
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Gas_Reserves.r
\name{Gas_Reserves}
\alias{Gas_Reserves}
\title{Calculate the gas reserves using several different exponential and harmonic declines.}
\usage{
Gas_Reserves(x, ReleaseDate = FALSE, ReturnDataFrame = FALSE)
}
\arguments{
\item{x}{list of data to parse}

\item{ReleaseDate}{optional boolean: set to TRUE to see the date this version of the function was released}

\item{ReturnDataFrame}{optional boolean: set to TRUE to have results returned as a dataframe}
}
\description{
\code{Gas_Reserves}
}
\examples{
data <- list(SampleWell = data.frame(t=seq(as.POSIXct("2000/1/1"), by = "month", length.out = 100), q=seq(500,5,-5), Q=seq(20,2000,20), qf=rep(25,100)))
Gas_Reserves(data)
}

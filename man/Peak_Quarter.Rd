% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Peak_Quarter.r
\name{Peak_Quarter}
\alias{Peak_Quarter}
\title{Returns the peak rolling-quarter rate.}
\usage{
Peak_Quarter(x = NA_real_)
}
\arguments{
\item{x}{data frame to parse}
}
\description{
\code{Peak_Quarter}
}
\examples{
data <- data.frame(X_UWI_DISPLAY="Well", GAS_CAL_DAY=5*(10:1))
Peak_Quarter(data)
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Boot.Watten.Reserves.r
\name{Boot.Watten.Reserves}
\alias{Boot.Watten.Reserves}
\title{Calculates linear flow reserves with uncertainty using bootstrap method}
\usage{
Boot.Watten.Reserves(x, iters)
}
\arguments{
\item{x}{data frame to parse}

\item{iters}{number of iteration to use for bootstrap estiamtes}
}
\description{
\code{Boot.Watten.Reserves}
All iterations that give a cumulative production less than the actual cum are rejected
and a replacement iteration is added.
}
\examples{
data <- data.frame(q=seq(50,5,-5),t=seq(20,200,20),qf=rep(25,10))
iters <- 5
Boot.Watten.Reserves(data, iters)
}

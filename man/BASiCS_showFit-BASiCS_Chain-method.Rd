% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Methods.R
\docType{methods}
\name{BASiCS_showFit-BASiCS_Chain-method}
\alias{BASiCS_showFit-BASiCS_Chain-method}
\alias{BASiCS_showFit}
\alias{BASiCS_showFit,BASiCS_Chain-method}
\title{Plotting the trend after Bayesian regression}
\usage{
\S4method{BASiCS_showFit}{BASiCS_Chain}(object, xlab = "log(mu[i])",
  ylab = "log(delta[i])", pch = 16, col = "blue", bty = "n",
  smooth = TRUE, variance = 1.2, ...)
}
\arguments{
\item{object}{an object of class \code{\linkS4class{BASiCS_Chain}}}

\item{xlab}{As in \code{\link[graphics]{par}}.}

\item{ylab}{As in \code{\link[graphics]{par}}.}

\item{pch}{As in \code{\link[graphics]{par}}.}

\item{col}{As in \code{\link[graphics]{par}}.}

\item{bty}{As in \code{\link[graphics]{par}}.}

\item{smooth}{Logical to indicate wether the smoothScatter function is used 
to plot the scatter plot.}

\item{variance}{Variance used to build GRBFs for regression}

\item{...}{Additional parameters for plotting.}
}
\value{
A plot object
}
\description{
Plotting the trend after Bayesian regression using a 
\code{\linkS4class{BASiCS_Chain}} object
}
\examples{
data(ChainRNAReg)
BASiCS_showFit(ChainRNAReg)

}
\references{
New reference
}
\author{
Nils Eling \email{eling@ebi.ac.uk}

Catalina Vallejos \email{cnvallej@uc.cl}
}

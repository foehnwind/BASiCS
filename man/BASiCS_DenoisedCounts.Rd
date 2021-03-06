% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BASiCS_DenoisedCounts.R
\name{BASiCS_DenoisedCounts}
\alias{BASiCS_DenoisedCounts}
\title{Calculates denoised expression expression counts}
\usage{
BASiCS_DenoisedCounts(Data, Chain)
}
\arguments{
\item{Data}{an object of class \code{\linkS4class{SingleCellExperiment}}}

\item{Chain}{an object of class \code{\linkS4class{BASiCS_Chain}}}
}
\value{
A matrix of denoised expression counts. In line with global scaling
normalisation strategies, these are defined as \eqn{X_{ij}/(\phi_j \nu_j)} 
for biological genes and \eqn{X_{ij}/(\nu_j)} for spike-in genes. For this
calculation \eqn{\phi_j} \eqn{\nu_j} are estimated by their corresponding
posterior medians. If spike-ins are not used, \eqn{\phi_j} is set equal to 1.
}
\description{
Calculates denoised expression counts by removing 
cell-specific technical variation. The latter includes global-scaling
normalisation and therefore no further normalisation is required.
}
\details{
See vignette
}
\examples{

Data <- makeExampleBASiCS_Data(WithSpikes = TRUE)
Chain <- BASiCS_MCMC(Data, N = 10000, Thin = 10, Burn = 5000, 
                     PrintProgress = FALSE)

DC <- BASiCS_DenoisedCounts(Data, Chain)

}
\seealso{
\code{\linkS4class{BASiCS_Chain}}
}
\author{
Catalina A. Vallejos \email{cnvallej@uc.cl}

Nils Eling \email{eling@ebi.ac.uk}
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RPASE.r
\name{phi.estimate}
\alias{phi.estimate}
\title{Estimating the overdispersion parameter using a binomial normal distribution}
\usage{
phi.estimate(phased_block_list)
}
\arguments{
\item{phased_block_list}{A list of data.frames, each containing information for a phase block, typically a gene, as described in createPhasedBlockList}
}
\value{
An estimation of overdispersion of the data from an idealized binomial distribution, estimated using a binomial normal distribution
}
\description{
Estimating the overdispersion parameter using a binomial normal distribution
}
\details{
The overdispersion parameter is estimated across all phased blocks using a binomial normal distribution simulated with 32-points gaussian quadrature. A value of 0 indicates the data follow the standard binomial distribution, while positive values indicate overdispersion.
}
\examples{
data(example_phased_block_list)
example_phased_block_list
phi.estimate(example_phased_block_list)
# Note: this produces an unreliable overestimate due to the small size of example_block_list
}

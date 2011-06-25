\name{code.tree} 
\alias{code.tree} 
\title{Partial Multivariate Regression Tree Analysis} 
\description{ This function codes an mvpart tree. Each coding variable in matrix 'code' represents one of the splits of the MRT. The objects on the left and right of the split have weights corresponding to the inverse of the number of observations in each group. The objects not concerned with a split have a weight of zero. As a consequence, each column sums to 0. Coded by Marie-Helene Ouellette, August 2009, modified from Pierre Legendre, August 2009} 
 
\usage{ 
code.tree(obj,LWHERE,RWHERE,LABELS)
} 

\arguments{ 
\item{obj}{obj of class mvpart} 
\item{LWHERE}{list of left objects in every node}
\item{RWHERE}{list of right object in every node}
\item{LABELS}{mat_lables object} 
} 

\value{
\item{code}{Coded tree}}

\keyword{Multivariate regression tree}
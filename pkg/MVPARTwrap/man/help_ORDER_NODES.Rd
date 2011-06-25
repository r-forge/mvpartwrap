\name{ORDER_NODES} 
\alias{ORDER_NODES} 
\title{Order mvpart nodes in terms of R2} 
\description{ Order mvpart nodes in terms of R2 for better tree output} 
 
\usage{ 
ORDER_NODES(obj,R2,splits)
} 
\arguments{ 
\item{obj}{mvpart object} 
\item{R2}{matrix of explained variation of size objects x response variables ???}
\item{splits}{splits contains the line numbers of table 'frame' of the mvpart object that are nodes, not leafs}
} 

\value{vector of order of nodes in terms of R2}

\seealso{\code{\link{mvpart}} \code{\link{MRT}}}

\keyword{Multivariate regression tree}
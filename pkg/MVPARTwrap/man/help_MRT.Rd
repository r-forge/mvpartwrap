\name{MRT}
\alias{MRT}
\title{Modified Output of Multivariate Regression Tree Analysis} 
\description{Wraper function of \code{mvpart} that gives access to the following information : the proper cluster membership of the objects, the discriminant species of each cluster, the tree nodes at the proper level of R2 (1 minus relative error) in the tree representation, the total species variance partitionned by species, by the tree, and by the splits of the tree}
 
\usage{MRT(obj,percent,species=NULL,LABELS = FALSE,\dots)} 

\arguments{
\item{obj }{An object of class \code{mvpart}}
  \item{percent }{The species level of contribution to the variance explained at a particular node considered discriminant, in percent  } 
  \item{species }{A vector of species names assignated to some columns of the table showing the partitioned explained variance (see 'TABLE1' in value) if it is NULL, the colnames of \code{obj$y} will be used}
  \item{LABELS }{A matrix giving labels for the tree. Particularly useful in partial analysis.}
  \item{... }{further arguments given to \code{mvpart}.  See \code{rpart.control} and \code{mvpart} for further details}
}

\value{An object of class \code{MRT}, basically a list including the following elements
  \item{nodes}{vector of numbers given to nodes in increasing order of their contribution to the explained variance. These numbers correspond to the ones used in the new tree output (see argument 'typeplot' for more details)}
  \item{pourct}{nodes by species matrix giving the species contribution to the explianed in percent at each node}
  \item{R2}{nodes by species matrix giving the species contribution to the explained variance at each node}
  \item{obj}{\dQuote{mvpart} function original object}
  \item{percent}{percentage of explained variance perceived as large enough for a species to be dsicriminant at a particular node}
  \item{RWHERE}{List of vectors containing the row numbers corresponding to the objects on the right side of each node}
  \item{LWHERE}{List of vectors containing the row numbers corresponding to the objects on the left side of each node}
  \item{TABLE1}{Matrix giving the total species variance partitionned by species, by the tree, and by the splits of the tree}
  \item{NodeMarking}{Argument needed to build labels for plots (see \code{plot.MRT for more details on these plots})}
  
}

\details{ This function gives extra outputs based on an \code{mvpart} object}

\seealso{\link{summary.MRT}}

\references{Dea'th, G. 2002. Multivariate regression tree : a new technique for modeling species-environment relationships. Ecology 83:1105-1117.} 

\examples{ 
## MRT analysis of the spider data of the mvpart library ##
library(mvpart)
data(spider)
result<-mvpart(data.matrix(spider[,1:12])~herbs+reft+moss+sand+twigs+water,spider,xv='1se',xval=10,xvmult=100)
## Format the object of class "mvpart" into "MRT" ##
res<-MRT(result,10)
} 
\keyword{multivariate}
\keyword{tree}


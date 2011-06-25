\name{plot_triplot} 
\alias{plot_triplot} 
\title{Biplot for MRT object} 
\description{ This function takes a coded tree from code.tree and builds the TRiplot } 
 
\usage{ 
plot_triplot(obj,LWHERE,RWHERE,R2,Cex,widthtriordi,heighttriordi,test.F=test.F,silent=silent,LABELS,\dots)
} 
\arguments{ 
\item{obj}{mvpart object} 
\item{LWHERE}{list of left objects in every node}
\item{RWHERE}{list of right object in every node}
\item{R2}{matrix of explained variation of size objects x response variables ???} 
\item{Cex}{Relative size of text}
\item{widthtriordi}{width of window}
\item{heighttriordi}{height of window} 
\item{test.F}{Show test for the RDA adjusted coefficient of determination}
\item{silent}{TRUE (the basic rdaTest output is printed to the R window) or FALSE.} 
\item{LABELS}{LAbels of the splits of the tree, needed for partial analysis}
\item{\dots}{Further arguments to be passed to the plotting devices or functions. See \code{Details} for more details.} 
}

\value{An RDA triplot of an mvpart tree}

\keyword{Multivariate regression tree}
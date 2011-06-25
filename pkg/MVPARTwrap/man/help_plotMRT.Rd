
\name{plot.MRT}
\alias{plot.MRT}
\title{Returns a graphical representation of a fitted /code{MRT} object.}
\description{Two different graphical representations of the Multivariate regression tree build with \code{MRT} function: a tree or an ordination triplot. }

\usage{\method{plot}{MRT}(x,NodeMarking=TRUE, typeplot=c('tree','triordi'),test.F=FALSE,silent=TRUE,Cex=0.5,widthtree=7, heighttree=9,widthtriordi=7, heighttriordi=9,R2A=FALSE,X=NULL,T=NULL,\dots) 
} 
\arguments{
  \item{x }{fitted model object of class \code{MRT}}
  \item{NodeMarking }{If TRUE (default), used to show proper labels in 'tree' representation. Only option available for now.}
  \item{typeplot }{'tree' shows the final model in a tree shape, 'triordi' represents that tree and its nodes in a triplot ordination output; if NULL, none of these are shown}
  \item{test.F }{argument to be passed to \code{rdaTest} that produces (notably) the 'triordi' plot. If NULL, the program asks the user whether the test of the F-statistic should be done or not. If test.F is TRUE (default) or FALSE, no question will be asked; the program will perform the test, or not, in accordance with what is indicated. For the result of this test to be printed to the screen, see argument 'silent'}
  \item{silent }{If silent = FALSE, the basic rdaTest output is printed to the R window. Default value is TRUE.}
  \item{Cex}{Scale of character to be used in the plots}
  \item{widthtree}{Width in inches to be used in the tree plot}
  \item{heighttree}{Height in inches to be used in the tree plot}
  \item{widthtriordi}{Width in inches to be used in the ordination triplot}
  \item{heighttriordi}{Height in inches to be used in the ordination triplot}
  \item{R2A}{logical, should the adjusted \eqn{{R}^2}{R^2} (see references) be plotted under the tree}
  \item{X}{explanatory matrix, must be provided if R2A=TRUE}
  \item{T}{Number of runs for GDF estimation, must be provided if R2A=TRUE}
  \item{\dots}{Further arguments to be passed to the plotting devices or functions. See \code{Details} for more details.}
}

\details{This function is a method for the generic function plot for class \code{MRT}. It can be invoked by calling plot for an object of the appropriate class, or directly by calling \code{plot.MRT} regardless of the class of the object. If typeplot is \code{tree}, the model is depicted in a binary tree manner. Each node and leaf is numbered according to the information provided in the summary. See \code{?summary.MRT} for details. Under each numbered node, we find the complexity parameter or the contribution to the \eqn{{R}^2}{R^2}. At the bottom of the tree, at each leaf, we find its size and a number which corresponds to the group association found in \code{MRT$where}. Each node is plotted at its corresponding contribution to the global \eqn{{R}^2}{R^2}. 

The second graphical representation is one of ordination biplot or triplot. Each node is dummy coded (see \code{code.tree}) and used as explanatory variables in an redundancy analysis (RDA). The groups are numbered as in the MRT tree. The default scaling is 1, thus the eucidian distances between groups are respected as much as possible. The nodes are represented by arrows, at which is associated the name of the explanatory variable and the value at which the split is performed.
}

\seealso{\code{\link{plot}},\code{\link{MRT}},\code{\link{summary.MRT}}} 

\references{

	Ye, J. (1998). "On Measuring and Correcting the Effects of Data Mining and Model Selection." Journal of the American Statistical Association 93(441): 120-131.
	
	Ouellette, M.-H. and Legendre, P. 2011. "An adjusted R2 statistic for multivariate regression tree analysis". Manuscript.
	}
 

\examples{ 
## MRT analysis of the Bryce Canyon vegetation data
library(mvpart)
data(spider)
result<-mvpart(data.matrix(spider[,1:12])~herbs+reft+moss+sand+twigs+water,spider,xv='1se',xval=10,xvmult=100)
## Format the object of class "mvpart" into "MRT" ##
res<-MRT(result,10)
## Summary of this object ##
summary(res)
plot(res)

} 
\keyword{multivariate}
\keyword{tree}
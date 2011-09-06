\name{CascadeMRT}
\alias{CMRT}
\title{Cascade of Multivariate Regression Trees Analysis} 
\description{Function CascadeMRT performs a cascade multivariate regression tree analysis using \code{mvpart} as a basic function to persue the multivariate tree analyses. The first model is at the top of the cascade and is called the first drop. All models built on the leafs of the first drop are called subsequent drops.}
\usage{CascadeMRT(Y,VS,VP,xv1='min',xvSUB='min',minbucket1=5,minbucketSUB=2,cp1=0.1,cpSUB=0.01,...)}

\arguments{
  \item{Y}{Response matrix}
  \item{VSG}{Explanatory variables used for subsequent drops} 
  \item{VA}{Explanatory variables used for first drop}
  \item{xv1}{\code{xv} argument for the first drop}
  \item{xvSUB}{\code{xv} argument for subsequent drops}
  \item{minbucket1}{\code{minbucket} argument for the first drop}
  \item{minbucketSUB}{\code{minbucket} argument for subsequent drops}
  \item{cp1}{\code{cp} argument for the first drop}
  \item{cpSUB}{\code{cp} argument for subsequent drops}
  \item{... }{further arguments given to \code{mvpart}.  See \code{rpart.control} and \code{mvpart} for further details. These controls will be used for both the first drop and subsequent drops.}
}

\value{An object of class \code{CascadeMRT}, basically a list including the following elements

  \item{drops}{List of mvpart models built, the first drop follow by the subsequent drops given in the order of \code{where1}.}
  \item{part1}{partition membership of the first drop}
  \item{where1}{unique leaf numbers of the first drop}
  \item{Y}{Original response matrix. Useful for use of \code{CasMRTR2} function.}}
  
\Details{\code{cp1} and \code{cpSUB} arguments are used to specify the complexity parameter of each wave (\code{cp1} for the principal, and \code{cpSUB} for the subsequent wave). The complexity parameter of an MRT model is the minimum contribution to the R2 of the tree for a split to be considered. As the main explanatory set is set to explain the largest response composition variation, the complexity parameter \code{cp1} could be set to be higher than the usual 0.01 value (by default 0.1).}
 

\seealso{\link{mvpart},\link{CasMRTR2}}

\references{
Dea'th, G. 2002. Multivariate regression tree : a new technique for modeling species-environment relationships. Ecology 83:1105-1117.

Ouellette, M.-H. and P. Legendre. An adjusted R2 statistic for multivariate regression tree analysis. (submitted).

Ouellette, M.-H. and P. Legendre. Cascade Multivariate Regression Tree: a novel approach for modelling nested explanatory sets. (submitted).
} 

\examples{ 
#initialisation

require(vegan)
require(mvpart)
require(MVPARTwrap)

### -- Exemple poisson Doubs --- ###

# Importation des donnees #
spe<-read.csv('~/Documents/Marietravail/articles/MRTcovariable/Data_sets/DoubsSpe.csv',row.names=1)
env<-read.csv('~/Documents/Marietravail/articles/MRTcovariable/Data_sets/DoubsEnv.csv',row.names=1)
env_nodas<-env[,-1]
spe.hel <- decostand(spe, "hellinger")

POISSON<-CascadeMRT(Y=spe.hel,VSG=env_nodas,VA=as.data.frame(env[,1]),xvmult=100)
CasMRTR2(POISSON)

### -- Exemple mites --- ###
data(mite)
data(mite.env)

mite.hel <- decostand(mite, "hellinger")
W<-mite.env[,2]

MITE<-CascadeMRT(Y=mite.hel,VSG=mite.env[,-2],VA=data.frame(W),xvmult=100)
CasMRTR2(MITE)
} 
\keyword{Cascade}
\keyword{multivariate}
\keyword{tree}


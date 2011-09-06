\name{CasMRTR2}
\alias{CasMRTR2}
\title{Diagram of explained variation for a cascade MRT analysis} 
\description{Diagram of explained variation for a cascade MRT analysis. See details for more precisions.}
 
\usage{CasMRTR2(obj,NodeADMIT=obj$where1)} 

\arguments{
  \item{obj}{Object of class \code{CascadeMRT}}
  \item{NodeADMIT}{Vector with numbers corresponding to the group membership of the first drop to be admitted in the diagram. Default is all are included.}
}

\value{Graphical output of explained variation.}


\details{This diagram represents the percentage of variation explained by each drop. Explained variance of the original response is in greyed area, unexplained in is white. The rectangle representing the explained variation of the first drop MRT model is annoted VG and is placed to the left. The area is proportional to the explained percentage which is written under the VG annotation. The other greyed areas each represent a node of the first drop, from each we build an independant model. Each area is build with a height equal to the variation unexplained by the first drop in that node, and a width equal to the explained variance of the model build on the obejct in this node times the variance unexplained by the first drop in that node. This provides a proportional area to the variation explained in the original response.}

\seealso{\link{mvpart},\link{CascadeMRT}}

\references{Dea'th, G. 2002. Multivariate regression tree : a new technique for modeling species-environment relationships. Ecology 83:1105-1117.} 

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


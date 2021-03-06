\name{Acoef}

\alias{Acoef}

\alias{A-deprecated}

\title{Coefficient matrices of the lagged endogenous variables}

\description{
  Returns the estimated coefficient matrices of the lagged endogenous
  variables as a list of matrices each with dimension \eqn{(K \times K)}.
}

\usage{
Acoef(x)
}

\arguments{
  \item{x}{An object of class \sQuote{\code{varest}}, generated by \command{VAR()}.}
}

\details{
  Given an estimated VAR(p) of the form:
  \deqn{
    \hat{\bold{y}}_t = \hat{A}_1 \bold{y}_{t-1} + \ldots +
    \hat{A}_p \bold{y}_{t-p} + \hat{C}D_t
  }
  the function returns the matrices \eqn{(\hat{A}_1,  \ldots, \hat{A}_p)}
  each with dimension \eqn{(K \times K)} as a list object. 

}

\value{
  A list object with coefficient matrices for the lagged endogenous variables.
}

\note{This function was named \code{A} in earlier versions of package
  \pkg{vars}; it is now deprecated. See \code{\link{vars-deprecated}} too.
  }

\author{Bernhard Pfaff}

\seealso{
  \code{\link{Bcoef}}, \code{\link{VAR}}
}

\examples{
data(Canada)
var.2c <- VAR(Canada, p = 2, type = "const")
Acoef(var.2c)
}

\keyword{regression}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coloc.test.R
\name{coloc.test.summary}
\alias{coloc.test.summary}
\title{Colocalisation testing using regression coefficients}
\usage{
coloc.test.summary(
  b1,
  b2,
  V1,
  V2,
  k = 1,
  plot.coeff = FALSE,
  plots.extra = NULL,
  bayes = !is.null(bayes.factor),
  n.approx = 1001,
  level.ci = 0.95,
  bayes.factor = NULL
)
}
\arguments{
\item{b1}{regression coefficients for trait 1}

\item{b2}{regression coefficients for trait 2}

\item{V1}{variance-covariance matrix for trait 1}

\item{V2}{variance-covariance matrix for trait 2}

\item{k}{Theta has a Cauchy(0,k) prior.  The default, k=1, is
equivalent to a uniform (uninformative) prior.  We have found
varying k to have little effect on the results.}

\item{plot.coeff}{DEPRECATED.  Please \code{plot()} returned
object instead. \code{TRUE} if you want to generate a plot
showing the coefficients from the two regressions together with
confidence regions.}

\item{plots.extra}{list with 2 named elements, x and y, equal
length character vectors containing the names of the quantities
to be plotted on the x and y axes.

\code{x} is generally a sequence of \code{theta} and \code{eta},
with \code{y} selected from \code{post.theta}, the posterior
density of theta, \code{chisq}, the chi-square values of the
test, and \code{lhood}, the likelihood function.}

\item{bayes}{Logical, indicating whether to perform Bayesian
inference for the coefficient of proportionality, eta.  If
\code{bayes.factor} is supplied, Bayes factors are additionally
computed for the specificed values.  This can add a little time
as it requires numerical integration, so can be set to FALSE to
save time in simulations, for example.}

\item{level.ci, n.approx}{\code{level.ci} denotes the required
level of the credible interval for \code{eta}.  This is
calculated numerically by approximating the posterior
distribution at \code{n.approx} distinct values.}

\item{bayes.factor}{Calculate Bayes Factors to compare specific
values of eta.  \code{bayes.factor} should either a numeric
vector, giving single value(s) of \code{eta} or a list of
numeric vectors, each of length two and specifying ranges of eta
which should be compared to each other.  Thus, the vector or
list needs to have length at least two.}
}
\value{
an object of class coloc, or colocBayes
}
\description{
Colocalisation testing supplying only regression coefficients and their variance-covariants matrices
}
\details{
Typically this should be called from \code{\link{coloc.test}()},
but is left as a public function, to use at your own risk, if you
have some other way to define the SNPs under test.
}
\author{
Chris Wallace
}

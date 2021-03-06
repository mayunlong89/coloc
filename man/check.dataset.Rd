% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/claudia.R
\name{check.dataset}
\alias{check.dataset}
\title{check.dataset}
\usage{
check.dataset(d, suffix = "", req = NULL)
}
\arguments{
\item{d}{dataset to check}

\item{suffix}{string to identify which dataset (1 or 2)}

\item{req}{names of elements that must be present}
}
\description{
Check dataset inputs for errors
}
\details{
Will call stop() unless a series of expectations on dataset input format are met

This is a helper function for use by other coloc functions, but
you can use it directly to check the format of a dataset to be
supplied to coloc.abf(), coloc.signals(), finemap.abf(), or
finemap.signals().
}
\author{
Chris Wallace
}

\name{plot.fmforecast}
\alias{plot.fmforecast}
\alias{plot.lca}
\title{Plot forecasts from a functional demographic modell}
\usage{
\method{plot}{fmforecast}(x, plot.type = c("function", "component", "variance"),
                 vcol = 1:4, mean.lab = "Mean", xlab2 = "Year", h = 1,
                 ...)
}

\arguments{
\item{x}{Output from \code{\link[ftsa]{forecast.ftsm}}, \code{\link{forecast.fdm}} or \code{\link{lca}}.}
\item{plot.type}{Type of plot. See details.}
\item{vcol}{Colors to use if \code{plot.type="variance"}.}
\item{mean.lab}{Label for mean component.}
\item{xlab2}{x-axis label for coefficient time series.}
\item{h}{If \code{plot.type="variance"}, h gives the forecast horizon for which the variance is plotted.}
\item{...}{Other arguments are passed to \code{\link{plot.demogdata}} (if \code{plot.type=="function"}),
    \code{\link[graphics]{plot}} (if \code{plot.type=="variance"}) or \code{\link[ftsa]{plot.ftsf}} (if
    \code{plot.type=="component"}).}
}

\description{Type of plot depends on value of \code{plot.type}:
\describe{
\item{\code{plot.type="function"}}{produces a plot of the forecast functions;}
\item{\code{plot.type="components"}}{produces a plot of the basis functions and coefficients
    with forecasts and prediction intervals for each coefficient;}
\item{\code{plot.type="variance"}}{produces a plot of the variance components.}
}}

\value{None. Function produces a plot}

\seealso{\link{fdm}, \link{lca}, \link{forecast.fdm}}

\author{Rob J Hyndman}
\examples{
france.fcast <- forecast(fdm(fr.mort))
plot(france.fcast)
plot(france.fcast,"c")
plot(france.fcast,"v")
}
\keyword{hplot}

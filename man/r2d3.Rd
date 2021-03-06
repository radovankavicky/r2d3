% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/render.R
\name{r2d3}
\alias{r2d3}
\title{D3 visualization}
\usage{
r2d3(data, script, css = "auto", dependencies = NULL, options = NULL,
  d3_version = c("5", "4", "3"), container = "svg", width = NULL,
  height = NULL, sizing = default_sizing(), viewer = c("internal",
  "external", "browser"))
}
\arguments{
\item{data}{Data to be passed to D3 script.}

\item{script}{JavaScript file containing the D3 script.}

\item{css}{CSS file containing styles. The default value "auto" will use
any CSS file located alongside the script file with the same stem
(e.g. "barplot.css" would be used for "barplot.js") as well as any
CSS file with the name "styles.css".}

\item{dependencies}{Additional HTML dependencies. These can take the
form of paths to JavaScript or CSS files, or alternatively can be
fully specified dependencies created with \link[htmltools:htmlDependency]{htmltools::htmlDependency}.}

\item{options}{Options to be passed to D3 script.}

\item{d3_version}{Major D3 version to use, the latest minor version
is automatically picked.}

\item{container}{The 'HTML' container of the D3 output.}

\item{width}{Desired width for output widget.}

\item{height}{Desired height for output widget.}

\item{sizing}{Widget sizing policy (see \link[htmlwidgets:sizingPolicy]{htmlwidgets::sizingPolicy}).}

\item{viewer}{"internal" to use the RStudio internal viewer pane for
output; "external" to display in an external RStudio window;
"browser" to display in an external browser.}
}
\description{
Visualize data using a custom D3 visualization script
}
\examples{

library(r2d3)
r2d3(
  data = c (0.3, 0.6, 0.8, 0.95, 0.40, 0.20), 
  script = system.file("examples/barchart.js", package = "r2d3")
)

}

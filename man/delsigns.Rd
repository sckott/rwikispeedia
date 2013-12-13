\name{delsigns}
\alias{delsigns}
\title{Delete Wikispeedia speed limit signs.}
\usage{
delsigns(nelat = NA, swlat = NA, nelng = NA, swlng = NA,
  style = "POST", curl = getCurlHandle())
}
\arguments{
  \item{nelat}{Northeastern latitude bounding point.}

  \item{swlat}{Southwestern latitude bounding point.}

  \item{nelng}{Northeastern longitude bounding point.}

  \item{swlng}{Southwestern longitude bounding point.}

  \item{curl}{curl handle}

  \item{style}{"GET" or "POST"}
}
\value{
Data frame of speed limit signs with label, lat, long, mph,
kph, cog, and alt_meters.
}
\description{
Delete Wikispeedia speed limit signs.
}
\examples{
\dontrun{
delsigns(63.27, 59.03, -113, -121.29)
}
}


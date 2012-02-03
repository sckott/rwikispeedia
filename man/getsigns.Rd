\name{getsigns}
\alias{getsigns}
\title{Search Wikispeedia for speed limit signs.}
\usage{
  getsigns(nelat = NA, swlat = NA, nelng = NA, swlng = NA,
    url = "http://www.wikispeedia.org/a/marks_bb2.php",
    ..., curl = getCurlHandle())
}
\arguments{
  \item{nelat}{Northeastern latitude bounding point.}

  \item{swlat}{Southwestern latitude bounding point.}

  \item{nelng}{Northeastern longitude bounding point.}

  \item{swlng}{Southwestern longitude bounding point.}
}
\value{
  Data frame of speed limit signs with label, lat, long,
  mph, kph, cog, and alt_meters.
}
\description{
  Search Wikispeedia for speed limit signs.
}
\examples{
\dontrun{
getsigns(35.198676, 35.194676, -89.56558, -89.56958)
}
}


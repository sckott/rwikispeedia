\name{getsigns}
\alias{getsigns}
\title{Search Wikispeedia for speed limit signs.}
\usage{
  getsigns(nelat = NA, swlat = NA, nelng = NA, swlng = NA,
    url = "http://www.wikispeedia.org/a/marks_bb2.php",
    ..., curl = getCurlHandle())
}
\arguments{
  \item{nelat}{Northeastern bounding point.}

  \item{swlat}{Northeastern bounding point.}

  \item{nelng}{Northeastern bounding point.}

  \item{swlng}{Northeastern bounding point.}
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


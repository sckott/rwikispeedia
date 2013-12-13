#' Search Wikispeedia for speed limit signs. 
#' 
#' @import RCurl XML plyr
#' @param nelat Northeastern latitude bounding point.
#' @param swlat Southwestern latitude bounding point.
#' @param nelng Northeastern longitude bounding point.
#' @param swlng Southwestern longitude bounding point.
#' @param curl curl handle
#' @param ... More args passed on to getForm()
#' @return Data frame of speed limit signs with label, lat, long, mph, kph, 
#'    cog, and alt_meters.
#' @export
#' @examples \dontrun{
#' getsigns(35.198676, 35.194676, -89.56558, -89.56958)
#' }
getsigns <- function(nelat = NA, swlat = NA, nelng = NA, swlng = NA, curl = getCurlHandle(),
  ...)
{
  url = 'http://www.wikispeedia.org/a/marks_bb2.php'
  args <- list(name = "all")
  if(!is.na(nelat))
    args$nelat <- nelat
  if(!is.na(swlat))
    args$swlat <- swlat
  if(!is.na(nelng))
    args$nelng <- nelng
  if(!is.na(swlng))
    args$swlng <- swlng
  tt <- getForm(url, 
    .params = args, 
    ...,
    curl = curl)
  ldply(xpathApply( xmlParse(tt), "//marker" ), xmlAttrs)
}
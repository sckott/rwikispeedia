#' Delete Wikispeedia speed limit signs. 
#' 
#' @import RCurl XML
#' @param nelat Northeastern latitude bounding point.
#' @param swlat Southwestern latitude bounding point.
#' @param nelng Northeastern longitude bounding point.
#' @param swlng Southwestern longitude bounding point.
#' @return Data frame of speed limit signs with label, lat, long, mph, kph, 
#'    cog, and alt_meters.
#' @export
#' @examples \dontrun{
#' delsigns(63.27, 59.03, -121.29, -140.1)
#' }
delsigns <- function(nelat = NA, swlat = NA, nelng = NA, swlng = NA,   
  url = 'http://www.wikispeedia.org/a/delete_bb2.php',
  style = "POST", curl = getCurlHandle())
{
  args <- list(name = "all")
  if(!is.na(nelat))
    args$nelat <- nelat
  if(!is.na(swlat))
    args$swlat <- swlat
  if(!is.na(nelng))
    args$nelng <- nelng
  if(!is.na(swlng))
    args$swlng <- swlng
  postForm(uri = url, .params = args, style = style, curl = curl)
}
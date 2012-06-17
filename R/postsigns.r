#' Post speed limit signs to Wikispeedia.
#' 
#' @import RCurl plyr
#' @param input Input R object to the function to post signs: list or data.frame. 
#' @param type Type of input: a single point (args), a list containing more than
#'    one point (list), or a data.frame (df).
#' @param mlat Latitude of the point in degree decimal.
#' @param mlon Longitude of the point in degree decimal.
#' @param malt_meters Altidue of the point in meters.
#' @param mmph Speed of speed limit sign in mph.
#' @param mkph Speed of speed limit sign in kph.
#' @param mtag Name of the sign.
#' @param mcog Course over ground in degrees.
#' @param mhours Optional field, not used presently.
#' @param memail Email address of submitter.
#' @return Returns success message if post succesful.
#' @export
#' @examples \dontrun{
#' # Post a single sign
#' postsigns(mlat=49.87, mlon=-145.05, malt_meters=20, mmph=60, mtag="scotttest18", mcog=0, memail="johndoe@@gmail.com", type = 'args')
#' 
#' # Post many signs
#' sign1 <- list(mlat=59.87, mlon=-115.05, malt_meters=20, mmph=60, mtag="testlist1", mcog=0, memail="johndoe@@gmail.com")
#' sign2 <- list(mlat=59.87, mlon=-125.05, malt_meters=20, mmph=60, mtag="testlist2", mcog=0, memail="johndoe@@gmail.com")
#' mysigns <- list(sign1, sign2)
#' postsigns(input = mysigns, type = 'list')
#' 
#' # Reading in data from spreadsheet (create your own following format of one below)
#' dat <- read.csv("~/github/SChamberlain/rwikispeedia/data/signs.csv")
#' postsigns(input = dat, type = 'df')
#' }
postsigns <- function(input = NULL, type = list('args','list','df'), 
  mlat = NA, mlon = NA, malt_meters = NA, mmph = NA, mkph = NA, mtag = NA, 
  mcog = NA, mhours = NA, memail = NA, 
  url = 'http://www.wikispeedia.org/a/process_submit_bb.php', 
  style = "POST", curl = getCurlHandle())
{
  if(type == 'args'){
    args <- list()
    if(!is.na(mlat))
      args$mlat <- mlat
    if(!is.na(mlon))
      args$mlon <- mlon
    if(!is.na(malt_meters))
      args$malt_meters <- malt_meters
    if(!is.na(mmph))
      args$mmph <- mmph
    if(!is.na(mkph))
      args$mkph <- mkph
    if(!is.na(mtag))
      args$mtag <- mtag
    if(!is.na(mcog))
      args$mcog <- mcog
    if(!is.na(mhours))
      args$mhours <- mhours
    if(!is.na(memail))
      args$memail <- memail
    postForm(uri=url, .params = args, style = style, curl = curl)
  } else
    if(type == 'list'){
      l_ply( input, .print=T, function(x) 
        postForm(uri=url, .params = x, style = style, curl = curl) )
    } else
      if(type == 'df'){
        dl <- apply(input, 1, as.list)  
        l_ply( dl, .print=T, function(x){ 
          postForm(uri=url, .params = x, style = style, curl = curl) 
            } 
          )
      }
}
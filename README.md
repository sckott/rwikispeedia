# rwikispeedia #

`rwikispeedia` is a wrapper to the Wikispeddia API. Wikispeedia is "the Open Speed Limit Database".  They are "gathering GPS-coordinates of every speed-limit sign on earth".   

Their homepage is [here](http://www.wikispeedia.org/).
Find them on Wikipeedia [here](http://en.wikipedia.org/wiki/Wikispeedia).
The short description of their API is [here](http://www.wikispeedia.org/faq.txt).

This is an example API call:
http://www.wikispeedia.org/a/marks_bb2.php?name=all&nelat=35.198676&swlat=35.194676&nelng=-89.56558&swlng=-89.56958


Install using install_github within Hadley's [devtools](https://github.com/hadley/devtools) package.

```R
install.packages("devtools")
require(devtools)
install_github("rwikispeedia", "SChamberlain")
require(rwikispeedia)
```

You will also need to install the RCurl, XML, and plyr packages to use rwikispeedia. 
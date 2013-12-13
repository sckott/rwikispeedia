rwikispeedia
============

`rwikispeedia` is a wrapper to the Wikispeddia API. Wikispeedia is "the Open Speed Limit Database".  They are "gathering GPS-coordinates of every speed-limit sign on earth".

* Their homepage is [here](http://www.wikispeedia.org/).
* Find them on Wikipeedia [here](http://en.wikipedia.org/wiki/Wikispeedia).
* The short description of their API is [here](http://www.wikispeedia.org/faq.txt).

This is an example API call:
[http://www.wikispeedia.org/a/marks_bb2.php?name=all&nelat=35.198676&swlat=35.194676&nelng=-89.56558&swlng=-89.56958](http://www.wikispeedia.org/a/marks_bb2.php?name=all&nelat=35.198676&swlat=35.194676&nelng=-89.56558&swlng=-89.56958)

Install dependencies

```coffee
install.packages(c("RCurl", "XML", "plyr"))
```

Install rwikispeedia

```coffee
install.packages("devtools")
library(devtools)
devtools::install_github("sckott/rwikispeedia")
library(rwikispeedia)
```

Get some data

```coffee
getsigns(nelat=35.198676, swlat=35.194676, nelng=-89.56558, swlng=-89.56958)
```

```coffee
         label         lat          lng mph kph cog alt_meters
1              35.19800509 -89.56761047  45   0 180       0.00
2       prasad 35.19800509 -89.56761047  45   0  45       0.00
3       prasad 35.19800509 -89.56761047  45   0  45       0.00
4       prasad 35.19800509 -89.56761047   0   0  45       0.00
5 durga prasad 35.19800509 -89.56761047  90   0  45       0.00
6              35.19786153 -89.56760511  45   0 180       0.00
7              35.19636122 -89.56752062  60   0 180       0.00
```
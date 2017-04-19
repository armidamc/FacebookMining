library(httpuv)
library(RColorBrewer)
library(RCurl)
library(bitops)
library(rjson)
library(httr)
library(igraph)
library(Rfacebook)

#sacar el token de developers.facebook.com/apps de 'Herramientas y ayuda' --> 'Explorador  de la API Graph'
mitoken <- 'EAACEdEose0cBADTDA1MkIHzI8YmlYeXtSBbqJJwES3i2nA9eQh3ma6iZBYMQkEGYM10FVPvDWYVv3Dum0RbUgksZAhW2j1mKxcy5aZBtQUy1kVrXptG4xWOZBcyYb4OxlOQ1HNMVjD4ZAHIQIzo0CQdccPgZC9ZCktLAZA16EKwkhwhZA5KPMXKzrPUXqFL0sbXMZD'
options(RCurlOptions = list(verbose=FALSE),capath=system.file("CurlSSL","cacert.pem",package = "RCurl"),ssl.verifypeer=FALSE)
me <- getUsers("me",token=mitoken)
me
myfriends <- getFriends(token=mitoken,simplify=F)
pie(table(myfriends$location),col=brewer.pal(9,"Blues"))
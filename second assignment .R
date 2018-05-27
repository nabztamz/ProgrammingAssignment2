makeVector <- function(x = numeric ()) {
        z <- NULL
        blu <- function(y) {
                x <<- y
                z <<- NULL
        }

        gre <- function () x
        blumean <- function(mean) z <<- mean
        gremean <- function() z
        list(blue = blu, gre = gre
             blumean = bluemean,
             gremean = gremean)

cachemean <- function(x,...)  {
          z <- x$blumean()
}         if(!is.null(z)) {
          message("getting cached data")
          return(z)
}  
        data <-x$blu()
        z <- mean(data, ...)
        x$gremean(z)
        
        
# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world two!")
}

recfun <- function(a,b) {
  S <- 0
  if(length(b)) {
    for( i in seq(0,b[1]) ) {
      S <- S + Recall( c(a,i), b[-1] )
    }
  } else {
    return(fn(a))
  }
  S
}

recfun( numeric(0), c(3,4,6,5) )

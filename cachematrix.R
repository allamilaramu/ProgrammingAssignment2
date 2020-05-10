#The function is caching inverse of the matrix x

makeCacheMatrix <- function(x = matrix()) {
f <- NULL
set <- function(y){
  x <<- y
  f <<- NULL
  #now we get the funtion returned
}
get <- function() x
setInverse <- function(inverse) f <<- inverse
getInverse < function()f
#finally, we arrange it as a list
list(set=set, get=get,
     setInverse = setInverse,
     getInverse = getInverse)
}


## The function is meant to check for the inversed cached data and return it without over-calculating it all over again.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  f <- x$getInverse()
  if(!is.null(j)){
    message ("getting cached data")
    return(f)
  }
  mat <- x$get()
  f <- solve(mat, ...)
  x$setInverse(f)
  #now we returne the matrix inversed as x
  f
}

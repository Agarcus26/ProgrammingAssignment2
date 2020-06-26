## Put comments here that give an overall description of what your
## functions do
This function creates a special "matrix" object that can cache its inverse.
This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  get <- function() {
    m
  }
  setInverse <- function(inverse) {
    i <<- inverse
  }
  getInverse <- function() {
    i
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data) %*% data
  x$setInverse(m)
  m
}
solve(4)
[,1]
[1,] 0.25

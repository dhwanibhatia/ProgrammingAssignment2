## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Setting and getting the matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) inverse <<- inv
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## returning the inverse from cache/if not exist in cache then calculate inverse and store in cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  m
}

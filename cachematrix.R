## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## write a pair of functions that cache the inverse of a matrix
## this function creates a matrix that will cache its inverst

makeCacheMatrix <- function(x = matrix()) {
i <- NULL

set <- function (matrix) {
 m <<- matrix
 i <<- NULL
}
get <- function()
        m

setInverse <- function(inverse)
        i <<- inverse

getInverse <- function()
        i

list( set = set, get = get, 
      setInverse = setInverse,
      getInverse = getInverse)
}

## Write a short comment describing this function
## this function computes the inverse of the makeCacheMatrix. If the inverse has
## already been calculated then cachesolve retrieve this from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getInverse()

if(!is.null(m)){
        message("getting cached data")
        return(m)
}
data <- x$get()

m <- solve(data) %*% data

x$setInverse(m)

m
}

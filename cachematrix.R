## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
    }

    get <- function() x

    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(get = get, set = set, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ##
    inv <- x$getinv()
    if (!is.null(inv)){
        message("Result is cached. Going to get precalculated data")
        return (inv)
    }
    dat <- x$get()
    inv <- solve(dat)
    x$setinv(inv)
    inv
}

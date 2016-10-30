## These two functions cache the inverse of a matrix

## This function caches the input matrix
makeCacheMatrix <- function(x = matrix()) {
        xinv <- NULL
        set  <- function(y) {
        x <<- y
        xinv <<- NULL
    }
        get <- function() x
        setinv <- function(inv) xinv <<- inv
        getinv <- function() xinv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This function retrieves the inverse of the input matrix
cacheSolve <- function(x, ...) {
        xinv <- x$getinv()
        if(!is.null(xinv)) {
        message("getting cached data")
        return(xinv)
    }
        m <- x$get()
        xinv <- solve(m, ...)
        x$setinv(xinv)
        xinv
}

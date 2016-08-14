## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Function that initializes are necessary variables used for inverse
makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        ##set and get functions for the provided matrix
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        
        ##set and get functions for the inversed matrix
        setSolve <- function(sInv) s <<- sInv
        getSolve <- function() s
        ##create list of all functions for use
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}


## Write a short comment describing this function

##Function to check if inverted matrix is already cached, if not calculate and store
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ##Get inverted matrix 
        s <- x$getSolve()
        ##If data is already cached then provide 
        if(!is.null(s)){
                message("getting cached data")
                return(s)
        }
        ##If data is not already cached then calculate, cache, and return inverted matrix
        data <- x$get()
        s <- solve(data, ...)
        x$setSolve(s)
        s
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    ## Initializing a variable
    s <- NULL
    
    ## Set method to set matrix
    set <- function(matrix) {
            x <<- matrix
            s <<- NULL
    }
    
    ## Get method to get matrix
    get <- function() x
    
    ## Setinverse to set inverse matrix
    setinverse <- function(inverse) s <<- inverse
    
    ## Getinverse to set inverse matrix
    getinverse <- function() s
    
    ## List to return
    list(set = set, 
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

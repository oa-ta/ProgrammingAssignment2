
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


cacheSolve <- function(x, ...) {
    
    # Getting inverse of x
    s <- x$getinverse()
    
    # Returning inverse of x if already exists
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    
    # Calculatinv inverse matrix
    data <- x$get()
    s <- solve(data) %*% data
    
    # Setting inverse to an object
    x$setinverse(s)
    
    s
}

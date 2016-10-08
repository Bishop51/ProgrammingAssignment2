## This is how we cash the inverse of a Matrix
## First mCM create a list with a function

makeCacheMatrix <- function(x = matrix()) {
## store cache value
        cache <- NULL
        set <- function(y) {
                x <<- y
                cache <<- NULL
 }
## get value of matrix
## invert the matrix
get <- function() x
   setMatrix <- function(inverse) cache <<- inverse

## return function
getInverse <- function() cache
list(set = set, get = get, setMatrix = setMatrix, getInverse = getInverse)        
        
}


## This is how we return inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
 inv <- x$getInverse()
   if(!is.null(inv)) {
        message("ached data is on the way")
           return(inv)
    }
        
  data <- x$get()
        inv <-solve(data)
        x$setInverse(inv)
        inv
        
}

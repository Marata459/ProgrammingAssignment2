## The following code calculates an inverse of a matrix x
## since this process may be resource intensive, caching is used

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  A <- NULL #Initialise the inverse of the matrix x
  set <- function(y) {
    
    # The following caches the matrix x into y and A to NULL
    x <<- y
    A <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) A <<- inverse
  getinverse <- function() A
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  A <- matrix_x$getinverse()
  if(!is.null(A)) { #if the inverse has already been created, it will print it, 
    message("getting cached data.")
    return(A)
  }
  data <- matrix_x$get() #otherwise it will create it
  A <- solve(data)
  matrix_x$setinverse(A)
  A
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  ##set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ##get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ##set the inverse of the matrix
  setInv <- function(inverse) {
    i <<- inverse
  }
  
  ##get the inverse of the matrix
  getInv <- function() {
    ## Return the inverse property
    i
  }
  
  ## Return a list of the methods
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getInv()
  
  ## Just return the inverse if its already set
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## Get the matrix from our object
  data <- x$get()
  
  ## Calculate the inverse using matrix multiplication
  m <- solve(data) %*% data
  
  ## Set the inverse to the object
  x$setInv(m)
  
  ## Return the matrix
  m
        ## Return a matrix that is the inverse of 'x'
}

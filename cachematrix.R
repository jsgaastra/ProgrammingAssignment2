## Put comments here that give an overall description of what your
## functions do

## set a matrix to cache which can be inverted

cmat<-matrix(1:4,2)

## cache the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function() inv <<- solve(x) #calculate the inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


makeCacheMatrix(cmat)

## return inverse of cached matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  back <- solve(x)
  return (back)
}

cacheSolve(cmat)


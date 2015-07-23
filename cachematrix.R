## Alex Shchepetkin
## Calculates and caches the inverse of the matrix 
## 

## Caches and retrieves the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<-y
    m <<- NULL
  }
  get <- function(){
    x
  }
  setinverse <- function(inverse){
    inv <<- inverse
  }
  getinverse <- function(){
    inv
  }
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Calculates the inverse of the matrix

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("Getting cached data")
    return(inv)
  }
  x$set(x$get())
  inv <- solve(x$get())
  x$setinverse(inv)
  return(inv)
}

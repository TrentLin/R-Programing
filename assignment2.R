#Create a special "matrix" object that can cache ists inverse.  
makeCacheMatrix <- function(x = numeric()) {
             inver <- NULL
             set <- function(y) {
                       x <<- y
                       inver <<- NULL
               }
             get <- function()x
             #Cache inverse by setinverse()
             setinverse <- function(inverse) inver <<- inverse
             #get inverse by getinverse()
             getinverse <- function() inver
             list(set = set, get = get,
                                 setinverse = setinverse,
                                 getinverse = getinverse)
     }
#Computes the inverse of the special "matrix" returned by
#makeCacheMatrix above
cacheSolve <- function(x, ...) {
             inver <- x$getinverse()
             if(!is.null(inver)) {
                       message("getting cached data")
                       return(inver)
               }
             #get matrix  by get() 
             data <- x$get()
             #inverse the matrix
             inver <- solve(data, ...)
             #insert inver into setinverse funtion(inver = inverse)
             x$setinverse(inver)
             inver
     }
  

## The following functions are used to cache the inverse of a matrix.

## This function creates a list that will do the following:
## set the value of the matrix, get the value of the matrix, 
## set the value of its inverse, and get the value of its inverse

makeCacheMatrix <- function(x = matrix()) {
	inverse_matrix <- NULL
	set <- function(y){
	
	x <<- y
	inverse_matrix <<- NULL
	}
	
	get <- function()x
	setinverse <- function(inverse)inverse_matrix <<- inverse
	getinverse <-function()inverse_matrix
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function returns the inverse of the matrix.
## It first checks if the inverse of the matrix is already created.
## If it is already created, it gets the cached data.
## Else it creates the inverse of the matrix and stores in cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

inverse_matrix <- x$getinverse()

if(!is.null(inverse_matrix)){
message("getting cached data")
return(inverse_matrix)
}

data <- x$get()
inverse_matrix <- solve(data)
x$setinverse(inverse_matrix)
inverse_matrix
}


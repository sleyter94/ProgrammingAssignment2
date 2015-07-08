## Put comments here that give an overall description of what your
## functions do

## save four functions, facilities to store the matrix, the matrix get for, setinverse to save the inverse matrix and getinverse for the inverse matrix

makeCacheMatrix <- function(matr = matrix()) {
	inverse<-NULL
	set <- function(inve){
		if(all(matr!=inve)){
			matr<<-inve
			inverse<<-NULL
		}
	}
	get <- function() matr
	setinverse <- function(inve){
		inverse<<-inve
	}
	getinverse <- function() inverse
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Gets the value of the inverse of the matrix, if the cache or else the calculated

cacheSolve <- function(x) {
      inver<-x$getinverse()
	if(!is.null(inver)){
		print("getting cached data")
		return(inver)
	}
	data<-x$get()
	inver<-solve(data)
	x$setinverse(inver)
	inver
}

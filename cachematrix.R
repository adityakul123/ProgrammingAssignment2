## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	inverse<-NULL

##set the matrix object
	set<- function(matrix){

	x<<-matrix
	inverse<<-NULL

	}

##to get the matrix
	get<-function(){
		x
	}


## set the inverse for the matrix
	setInverse<-function(i){
		inverse<<-i
	}

## get the inverse for the matrix	
	getInverse<-function(){
		inverse
	}

	list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getInverse()


	## checks whether inverse is present in the list
		if(!is.null(inv))
		{
			message("Getting cached data!")
			return(inv)
		}

	## if no inverse , calculate inverse using solve() function

		matrix<-x$get()

		inv<-solve(matrix)

	## inverse is set in the list	using setInverse function.	

		x$setInverse(inv)

		inv

}

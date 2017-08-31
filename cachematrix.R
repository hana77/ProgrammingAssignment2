## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix creates a matrix for functions
##set stores the matrix and get recalls the matrix
##setInverse and getInverse stores and recalls the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
           x<<-y
           m<<- NULL #store matrix in cache
    
    }
    get <- function ()x #get matrix
    setInverse <- function(inverse) m<<-inverse #setinverse matrix
    getInverse <- function() m #getinverse matrix
    list(set=set, 
         get=get,
         setInverse=setInverse,
         getInverse=getInverse) #create functions list
}


## Write a short comment describing this function
##cacheSolve 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverse() #query cached x matrix
        if(!is.null(m)){ #checks if a cache inverse was calculated
            message("getting cached data") #sets message
            return(m) #return cache
        }
        data <-x$get() #get makeCacheMatrix function matrix
        m<- slove(data,...) #inverse of matrix
        x$setInverse(m) #stroe inverse matrix in makeCacheMatrix 
}

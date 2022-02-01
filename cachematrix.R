## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  
  get<-function() x
  setInv<-function(invX){inv<<-invX}
  getInv<-function(){inv}
  
  list(
    set=set,
    get=get,
    setInv=setInv,
    getInv=getInv
  )
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  k<-x$getInv()
  if(!is.null(k)){
    message("getting cached data")
    return(k)
  }
  
  data<-x$get()
  invx<-solve(data)
  x$setInv(invX = invx)
  
  invx
}

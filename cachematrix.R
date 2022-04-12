## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  xcache<-NULL
set<-function(y){
  x<<-y
  xcache<<-NULL
}
get<-function() {x}
setcache<-function(y)  {
  xcache<<-y}

getcache<-function() {
 
  xcache
  }

list(set=set,get=get, setcache=setcache, getcache=getcache)

}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
  y<-makeCacheMatrix(x)
  
  m<-y$getcache()
  ##print(m)
  if (!(is.null(m))
  {
    message('getting cached inverse of matrix')
    return(m)
  }
  else
  {
  data<-y$get()
  
  ## this is matrix inversion 
  m2<-solve(data)
  
  y$setcache(m2)
  
  m<-y$getcache()
  m
  }
}

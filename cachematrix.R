## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  xcache<-matrix(nrow=nrow(x),ncol=ncol(x))
set<-function(y){
  x<<-y
}
get<-function() {x}
setcache<-function(y)  {xcache<<-y}

getcache<-function() {xcache}

list(set=set,get=get, setcache=setcache, getcache=getcache)

}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
  y<-makeCacheMatrix(x)
  
  m<<-y$getcache()
  print(m)
  if (!is.na(m[1][1]) > 0)
  {
    message('getting cached inverse of matrix')
    return(m)
  }
  data<-y$get()
  
  ## this is matrix inversion 
  m2<-solve(data)
  
  y$setcache(m2)
  m2
}

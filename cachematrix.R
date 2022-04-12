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
setcache<-function(y)  {xcache<<-y}

getcache<-function() {xcache}

list(set=set,get=get, setcache=setcache, getcache=getcache)

}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
  y<-makeCacheMatrix(x)
  
  m<-y$getcache()
  if (!is.null(m))
  {
    message('getting cached inverse of matrix')
    return(m)
  }
  data<-y$get()
  ## this is not inverse just to replace the code of inversion
  m2<-matrix(nrow=ncol(x),ncol=nrow(x))
  j<-1
  while (j <= ncol(data))
  {
    i<-1
    while (i <= nrow(data) )
    {
      m2[j,i]=data[i,j]
      i<-i+1
    }
    j<-j+1
  }
    
  y$setcache(m2)
  m2
}

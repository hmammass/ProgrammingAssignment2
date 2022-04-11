## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<<-x
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ##m1=makeCacheMatrix(x)
  m2<-matrix(nrow = ncol(x), ncol=nrow(x))
 
  j<-1
  while (j <= ncol(x))
  {
    i<-1
    while (i <= nrow(x) )
    {
      m2[j,i]=x[i,j]
      i<-i+1
    }
    j<-j+1
  }
    
  m2
}

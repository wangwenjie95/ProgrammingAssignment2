## Put comments here that give an overall description of what your
## functions do

##catch the inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setmean<-function(mean) 
    m<<-mean
  getmean<-function()m
  list(set=set,get=get,
       setmean=setmean,
       getmean=getmean)

}


##computes the inverse of the matrix

cacheSolve <- function(x, ...) {
  m<-x$getmean()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-men(data,...)
  x$setmean(m)
  m
        ## Return a matrix that is the inverse of 'x'
}

## My function it's very similar to the original example, that's because 
## there's a lot of useful recycling material; the main differnce is that
## the original functions you need to select the "sub-function" to get, set
## the mean, but mine doesn't. Literally we ask for a function that 
## "creates a special 'matrix' object that can cache its inverse"



makeCacheMatrix <- function(y = matrix()) {  #Creates our special matrix from zero
  
    x <<- y         #There's no need to call another function to set the value
    m <<- NULL      #m=inverse....Here i'm Initializing the inverse equal to zero for a new matrix
    m <<-solve(x)   #Acording to the hipothesis in the instructions, there's no problem of what's 
                    #inside of "solve()". And the value is store in the GLOBAL ENVIROMENT!
    
  back<-function(){  #This is an auxiliar function that help extract the inverse and checkout it in 
         m           #the "cacheSolve()" function 
  }
  list(back=back)    # This turn the OUTPUT into a list, so I can callback the cache efficiently
                     #There's no need to return anything in this part  
}


## Now that we have created a special matrix, the next fuction will return the inverse, if there no inverse
## in the CACHE we will call the "makeCacheMatrix" function

cacheSolve <- function(a, ...) {
                                      ## Return a matrix that is the inverse of 'x'
  m <- vector$back()                  ## the variable "a" can be either the especial vector before, 
  if(!is.null(m)) {                   ## or a matrix 
    message("Getting cached data")
    return(m)
  }
  vector<-makeCacheMatrix(a)          ## The else part of the "if"
  vector$back()
}

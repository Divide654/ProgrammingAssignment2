
## takes a matrix as input and caches it,

makeCacheMatrix <- function(inputMatrix = matrix()) {
  inversed=FALSE
  isInversed <-function(){inversed} #returns true or false if the value is inverted
  solveMatrix <- function() { #inversed the matrix and changes value of isinversed
    inversed <<- TRUE
    inputMatrix<<-solve(inputMatrix)
  }
  returnMatrix<-function() inputMatrix #returns matrix
  
  list(solveMatrix = solveMatrix, isInversed=isInversed,returnMatrix = returnMatrix)
}

## Solves the matrix if it is unsolved, then returns matrix, 

cacheSolve <- function(matrixToSolve,...) {
  if(!matrixToSolve$isInversed()){matrixToSolve$solveMatrix()} #if not inversed, solves matrix

  matrixToSolve$returnMatrix()
}

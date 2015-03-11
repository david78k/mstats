library('matrixStats')

x <- matrix(1:50, nrow = 5, ncol = 10)
print (x)

#y <- rowMins_R(x)

y <- matrixStats::colVars(x)
print (y)

#y <- apply(x, MARGIN = 2, FUN = vars)

y <- colVars(x, rows = -1:20, cols = 101:400)
print (y)

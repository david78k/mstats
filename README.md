# matrixStats: Methods that Apply to Rows and Columns of a Matrix

_UPDATE: Students, please see  our Google Summer of Code 2015 project **[Subsetted and parallel computations in matrixStats](https://github.com/rstats-gsoc/gsoc2015/wiki/matrixStats)** for further enhancements of the matrixStats package.  Application deadline is **March 27, 2015**._

The matrixStats package provides highly optimized functions for
computing common summaries over rows and columns of matrices,
e.g. `rowQuantiles()`. There are also functions that operate on vectors,
e.g. `logSumExp()`. Their implementations strive to minimize both memory
usage and processing time. They are often remarkably faster compared
to good old `apply()` solutions. The calculations are mostly implemented
in C, which allow us to optimize beyond what is possible to do in
plain R. The package installs out-of-the-box on all common operating
systems, including Linux, OS X and Windows.

## Example
It is [many times
faster](http://www.jottr.org/2015/01/matrixStats-0.13.1.html) to
calculate medians column by column using
```r
> library("matrixStats")
> X <- matrix(rnorm(20 * 500), nrow = 20, ncol = 500)
> mu <- colMedians(X)
```
compared with
```r
> mu <- apply(X, MARGIN=2, FUN=medians)
```

## Benchmarks
For formal benchmarking of matrixStats functions relative to
alternatives, see the [Benchmark reports](https://github.com/HenrikBengtsson/matrixStats/wiki/Benchmark-reports).

## Installation
R package matrixStats is available on [CRAN](http://cran.r-project.org/package=matrixStats) and can be installed in R as:
```r
install.packages('matrixStats')
```


## Software quality

| Resource:     | CRAN        | Travis CI        | Appveyor         |
| ------------- | ------------------- | ---------------- | ---------------- |
| _Platforms:_  | _Multiple_          | _Linux_          | _Windows_        |
| R CMD check   | [status](http://cran.r-project.org/web/checks/check_results_matrixStats.html) | <a href="https://travis-ci.org/HenrikBengtsson/matrixStats"><img src="https://travis-ci.org/HenrikBengtsson/matrixStats.svg" alt="Build status"></a>    |  |
| Test coverage |                     | <a href="https://coveralls.io/r/HenrikBengtsson/matrixStats"><img src="https://coveralls.io/repos/HenrikBengtsson/matrixStats/badge.png?branch=develop" alt="Coverage Status"/></a> |                  |

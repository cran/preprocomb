% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/00Utils.R
\docType{data}
\name{exampleresult}
\alias{exampleresult}
\title{preprocomb example}
\format{A PreProCombClass object}
\usage{
exampleresult
}
\description{
Modified Iris-data preprocessed with 540 combinations and evaluated with \cr
support vector machine classifier. \cr
}
\details{
# testdata \cr
set.seed(1) \cr
testdata <- iris \cr
testdata[sample(1:150,40),3] <- NA # add missing values to the third variable \cr
testdata[,4] <- rnorm(150, testdata[,4], 2) # add noise to the fourth variable \cr
testdata$Irrelevant <- runif(150, 0, 1) # add an irrelevant feature \cr

# grid with five phases totalling 540 combinations \cr
examplegrid <- setgrid(phases=c("imputation", "outliers", "scaling", "smoothing", "selection"), data=testdata)

# evaluation of the grid \cr
exampleresult <- preprocomb(grid=examplegrid, models=c("svmRadial"), nholdout=10, cluster=TRUE, outlier=TRUE, cores=2)
}
\keyword{datasets}


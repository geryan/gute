\name{read.multi.line.header}
\alias{read.multi.line.header}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Data input with header over multiple lines
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Reads in tabular data where header spills over multiple lines, e.g first line might be field, second line migh be units.

Returns data frame with first line of data file as header.
}
\usage{
read.multi.line.header.Rd(file, header.lines = 2, sep = ",")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
Name of the file to read data from
}
 \item{header.lines}{
Number of lines the file header spills over. Default = 2
}
 \item{sep}{
Field separator character. Defaule = ",", i.e., csv.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
A data.frame.
\references{
%% ~put references to the literature/web site here ~
Made for answer on stack overflow \url{https://stackoverflow.com/a/55859925/2706826}
}
\author{
%%  ~~who you are~~
Gerry Ryan
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
## NOT EXECUTABLE

## mydata <- read.multi.line.header(path = "data.txt")

## > head(mydata)
##       trt      biomass      yield
## 1      C2        17.76     205.92
## 2      C2        17.96     207.86
## 3      CC        17.72     197.22
## 4      CC        18.42     205.20
## 5     CCW        18.15     200.51
## 6     CCW        17.45     190.59
}


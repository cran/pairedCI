\name{paired.Loc}
\alias{paired.Loc}
\title{
Confidence intervals for the ratio of locations of two paired samples
}
\description{
This function computes confidence intervals for the ratio of locations with matched pairs. Expected values must be positive. 
}
\usage{
paired.Loc(x, y, method = "parametric", exact = FALSE, conf.level = 0.95, alternative = "two.sided")
}
\arguments{
  \item{x}{
sample 1; a (non-empty) numeric vector of data values
}
  \item{y}{
sample 2; a (non-empty) numeric vector of data values
}
  \item{method}{
either "parametric" (default) or "nonparametric"
}
  \item{exact}{
a logical indicating whether the exact nonparametric confidence interval should be computed
}
  \item{conf.level}{
confidence level of the interval with 95\% as default
}
  \item{alternative}{
type of alternative hypothesis, one of "two.sided" (default), "greater" or "less"
}
}

\value{
  \item{estimate}{ratio of means (x/y)}
  \item{lower}{lower confidence bound}
  \item{upper}{upper confidence bound}
}
\references{
J. Ogawa (1983): On the "confidence bounds" of the ratio of the means of a bivariate normal distribution. Ann. Inst. Statist. Math., 35, 41-48.

B.M. Bennett (1965): Confidence limits for a ratio using Wilcoxon's signed rank test. Biometrics, 21, 231-234.

K.F. Yee (1988): Confidence-interval approach for evaluating bias in laboratory methods. Journal of Automatic Chemistry, 10 (3), 144-146.
}
\author{
Cornelia Froemke, Ludwig Hothorn and Michael Schneider
}


\examples{

astra <- c(2.4, 4.8, 4, 4.9, 3.9, 4.1, 3.8, 3.5, 4.6, 2.9, 4.9, 3.7, 4.8, 3.7, 3.8, 4.1, 4.2, 4.3, 3.9, 3.8)

flame <- c(2.4, 4.8, 4, 4.7, 3.9, 4.2, 3.8, 3.3, 4.6, 3, 5, 3.6, 4.9, 3.8, 3.9, 4.6, 4.2, 4.4, 4, 3.4)

paired.Loc(astra, flame, conf.level=0.9, method="parametric")
paired.Loc(astra, flame, conf.level=0.9, method="nonparametric")

}
\keyword{htest}

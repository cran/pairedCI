\name{paired.Scale}
\alias{paired.Scale}
\title{
Confidence intervals for the ratio of scales of two paired samples
}
\description{
This function computes confidence intervals for the ratio of scales with matched pairs.
}
\usage{
paired.Scale(x, y, method = "parametric", conf.level = 0.95, alternative = "two.sided")
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
  \item{conf.level}{
confidence level of the interval with 95\% as default
}
  \item{alternative}{
type of alternative hypothesis, one of "two.sided" (default), "greater" or "less"
}
}
\value{

\item{estimate}{parametric: ratio of standard deviations, nonparametric: ratio of mean absolute deviations of the medians (x/y)}
\item{lower}{lower confidence bound}
\item{upper}{upper confidence bound}
}
\references{
Bonett, D.G. (2006): Confidence interval for a ratio of variance in bivariate nonnormal distributions. J. Stat. Comput. Sim., 76 (7),
637-644.

Bonett, D.G. and E. Seier (2003): Statistical inference for a ratio of dispersions using paired samples. J. Educ. Behav. Stat., 28 (1), 21-30.

K.F. Yee (1988): Confidence-interval approach for evaluating bias in laboratory methods. Journal of Automatic Chemistry, 10 (3), 144-146.

}
\author{
Cornelia Froemke, Ludwig Hothorn and Michael Schneider
}

\examples{

astra <- c(2.4, 4.8, 4, 4.9, 3.9, 4.1, 3.8, 3.5, 4.6, 2.9, 4.9, 3.7, 4.8, 3.7, 3.8, 4.1, 4.2, 4.3, 3.9, 3.8)

flame <- c(2.4, 4.8, 4, 4.7, 3.9, 4.2, 3.8, 3.3, 4.6, 3, 5, 3.6, 4.9, 3.8, 3.9, 4.6, 4.2, 4.4, 4, 3.4)


paired.Scale(astra, flame, conf.level=0.9, method="parametric")
paired.Scale(astra, flame, conf.level=0.9, method="nonparametric")

}
\keyword{ htest }

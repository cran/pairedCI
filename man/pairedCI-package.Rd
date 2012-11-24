\name{pairedCI-package}
\alias{pairedCI-package}
\alias{pairedCI}
\docType{package}
\title{
Confidence intervals for the ratio of locations and for the ratio of scales of two paired samples
}
\description{
The package contains two functions: paired.Loc and paired.Scale. A
parametric and nonparametric confidence interval can be computed for the
ratio of locations (paired.Loc) and the ratio of scales
(paired.Scale). The samples must be paired and expected means must be positive.
}
\details{
\tabular{ll}{
Package: \tab pairedCI\cr
Type: \tab Package\cr
Version: \tab 0.5-4\cr
Date: \tab 2012-11-24\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}

}
\author{
Cornelia Froemke, Ludwig Hothorn, Michael Schneider

Maintainer: Cornelia Froemke <cornelia.froemke@tiho-hannover.de>
}
\references{
J. Ogawa (1983): On the confidence bounds of the ratio of the means of
a bivariate normal distribution. Ann. Inst. Statist. Math., 35, 41-48.

B.M. Bennett (1965): Confidence limits for a ratio using Wilcoxon's
signed rank test. Biometrics, 21, 231-234.

Bonett, D.G. (2006): Confidence interval for a ratio of variance in
bivariate nonnormal distributions. J. Stat. Comput. Sim., 76 (7),
637-644.

Bonett, D.G. and E. Seier (2003): Statistical inference for a ratio of dispersions using paired samples. J. Educ. Behav. Stat., 28 (1), 21-30.

K.F. Yee (1988): Confidence-interval approach for evaluating bias in laboratory methods. Journal of Automatic Chemistry, 10 (3), 144-146.
}

\keyword{ htest }

\examples{
astra <- c(2.4, 4.8, 4, 4.9, 3.9, 4.1, 3.8, 3.5, 4.6, 2.9, 4.9, 3.7, 4.8, 3.7, 3.8, 4.1, 4.2, 4.3, 3.9, 3.8)
flame <- c(2.4, 4.8, 4, 4.7, 3.9, 4.2, 3.8, 3.3, 4.6, 3, 5, 3.6, 4.9, 3.8, 3.9, 4.6, 4.2, 4.4, 4, 3.4)

paired.Loc(astra, flame, conf.level=0.9, method="parametric")
paired.Loc(astra, flame, conf.level=0.9, method="nonparametric")

paired.Scale(astra, flame, conf.level=0.9, method="parametric")
paired.Scale(astra, flame, conf.level=0.9, method="nonparametric")

}

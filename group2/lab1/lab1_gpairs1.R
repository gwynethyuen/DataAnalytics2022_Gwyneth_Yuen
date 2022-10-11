allexamples <- FALSE

y <- data.frame(A=c(rep("red", 100), rep("blue", 100)),
                B=c(round(rnorm(100), 1),round(rnorm(100,5,1),1)),
                C=round(runif(200), 1),
                D=c(rep("big", 150), rep("small", 50)),
                E=round(rnorm(200), 1))

y <- data.frame(A=c(round(rnorm(100), 1),round(rnorm(100,5,1),1)),
                B=round(runif(200), 1),
                C=round(rnorm(200), 1),
                D=c(rep("big", 150), rep("small", 50)),
                E=c(rep("red", 100), rep("blue", 100)))

# not working
gpairs(y)

data(iris)
gpairs(iris)
if (allexamples) {
  gpairs(iris, upper.pars = list(scatter = 'stats'),
         scatter.pars = list(pch = substr(as.character(iris$Species), 1, 1),
                             col = as.numeric(iris$Species)),
         stat.pars = list(verbose = FALSE))
  gpairs(iris, lower.pars = list(scatter = 'corrgram'),
         upper.pars = list(conditional = 'boxplot', scatter = 'loess'),
         scatter.pars = list(pch = 20))
}

data(Leaves)
gpairs(Leaves[1:10], lower.pars = list(scatter = 'loess'))
if (allexamples) {
  gpairs(Leaves[1:10], upper.pars = list(scatter = 'stats'),
         lower.pars = list(scatter = 'corrgram'),
         stat.pars = list(verbose = FALSE), gap = 0)
  corrgram(Leaves[,-33])
}

runexample <- TRUE
if (runexample) {
  data(NewHavenResidential)
  gpairs(NewHavenResidential)
}

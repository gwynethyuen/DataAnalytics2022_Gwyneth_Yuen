#compare to kknn?

library(kknn)
# spam not working?
skknn <- kknn(spam~., train, test, distance = 1, kernel = "triangular")
summary(skknn)
# etc....
# other distances and kernels!!

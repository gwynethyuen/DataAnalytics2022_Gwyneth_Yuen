data(swiss)
View(swiss)
sclass <- kmeans(swiss[1:6], 3)
table(sclass$cluster, swiss[,2])    
# 
library(e1071)
m <- naiveBayes(swiss[1:6], swiss[,2])

# all arguments must have the same length
table(predict(m, swiss[1:6]), swiss[,2])

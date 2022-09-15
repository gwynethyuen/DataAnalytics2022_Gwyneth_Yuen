# load data
epi_data <- read.csv("2010EPI_data.csv")
attach(epi_data)

# remove the first row (with x.1 etc)
names(epi_data) <- as.matrix(epi_data[1,])
epi_data <- epi_data[-1,]
epi_data[] <- lapply(epi_data, function(x) type.convert(as.character(x)))
epi_data
View(epi_data)

# create variable for EPI column
EPI <- epi_data$EPI

# exercise
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
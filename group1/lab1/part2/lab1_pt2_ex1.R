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
DALY <- epi_data$DALY
FISH <- epi_data$FISHERIES

# exercise
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
plot(ecdf(EPI), do.points=TRUE, verticals=TRUE)
par(pty="s")

qqnorm(EPI)
qqline(EPI)

x <- seq(30,95,1)
x2 <- seq(30,95,2)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot 1")
qqline(x)
qqplot(qt(ppoints(250), df=5), x2, xlab="Q-Q plot 2")
qqline(x2)

qqplot(EPI, DALY)
qqplot(EPI, FISH)

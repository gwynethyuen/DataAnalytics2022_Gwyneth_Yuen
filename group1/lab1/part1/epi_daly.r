epi_data <- read.csv("EPI_Data.csv")
View(epi_data)
# attach(epi_data)
# fix(epi_data)
EPI
tf <- is.na(EPI)
E <- EPI[!tf]

summary(EPI)
fivenum(EPI, na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI, na.rm=TRUE, bw=.1))
lines(density(EPI, na.rm=TRUE, bw="SJ"))
rug(EPI)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

par(pty="s")
qqnorm(EPI)
qqline(EPI)

x <- seq(30, 95, 1)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q Plot for t dsn")
qqline(x)


# DALY

summary(DALY)
fivenum(DALY, na.rm=TRUE)
stem(DALY)
hist(DALY)
hist(DALY, seq(30., 95., 1.0), prob=TRUE)
lines(density(DALY, na.rm=TRUE, bw=.1))
lines(density(DALY, na.rm=TRUE, bw="SJ"))
rug(DALY)

plot(ecdf(DALY), do.points=FALSE, verticals=TRUE)

par(pty="s")
qqnorm(DALY)
qqline(DALY)

x <- seq(30, 95, 1)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q Plot for t dsn")
qqline(x)


# COMPARE EPI AND DALY

boxplot(EPI, DALY)
qqplot(EPI, DALY)

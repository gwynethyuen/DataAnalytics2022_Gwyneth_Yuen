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

# EPI info and plots
summary(EPI)
fivenum(EPI, na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI, na.rm=TRUE, bw=.1))
lines(density(EPI, na.rm=TRUE, bw="SJ"))
rug(EPI)


# EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H, WATER_H, AIR_E, WATER_E, BIODIVERSITY
# set variables
ENVHEALTH <- epi_data$ENVHEALTH
ECOSYSTEM <- epi_data$ECOSYSTEM
DALY <- epi_data$DALY
AIR_H <- epi_data$AIR_H
WATER_H <- epi_data$WATER_H
AIR_E <- epi_data$AIR_E
WATER_E <- epi_data$WATER_E
BIODIVERSITY <- epi_data$BIODIVERSITY


# box plot and qq plot comparisons
boxplot(EPI, ENVHEALTH)
qqplot(EPI, ENVHEALTH)

boxplot(EPI, ECOSYSTEM)
qqplot(EPI, ECOSYSTEM)

boxplot(EPI, DALY)
qqplot(EPI, DALY)

boxplot(EPI, AIR_H)
qqplot(EPI, AIR_H)

boxplot(EPI, WATER_H)
qqplot(EPI, WATER_H)

boxplot(EPI, AIR_E)
qqplot(EPI, AIR_E)

boxplot(EPI, WATER_E)
qqplot(EPI, WATER_E)

boxplot(EPI, BIODIVERSITY)
qqplot(EPI, BIODIVERSITY)

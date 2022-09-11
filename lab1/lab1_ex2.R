epi_data <- read.csv("2010EPI_data.csv")
attach(epi_data)
EPI <- epi_data$EPI

# landlock
EPILand <- EPI[!epi_data$Landlock]
ELand <- EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
plot(ecdf(ELand), do.points=FALSE, verticals=TRUE)

# no surface water
SurfaceWater <- EPI[!epi_data$No_surface_water]
SWater <- SurfaceWater[!is.na(SurfaceWater)]
hist(SWater)
hist(SWater, seq(30., 95., 1.0), prob=TRUE)
plot(ecdf(SWater), do.points=FALSE, verticals=TRUE)

# desert
Desert <- EPI[!epi_data$Desert]
Deserted <- Desert[!is.na(Desert)]
hist(Deserted)
hist(Deserted, seq(30., 95., 1.0), prob=TRUE)
plot(ecdf(Deserted), do.points=FALSE, verticals=TRUE)

# high population density
HighPopDensity <- EPI[!epi_data$High_Population_Density]
PopDensity <- HighPopDensity[!is.na(HighPopDensity)]
hist(PopDensity)
hist(PopDensity, seq(30., 95., 1.0), prob=TRUE)
plot(ecdf(PopDensity), do.points=FALSE, verticals=TRUE)

# filter out geosubregion
EPI_South_Asia <- EPI[epi_data$GEO_subregion == "South Asia"]
South_Asia <- EPI_South_Asia[!is.na(EPI_South_Asia)]
hist(South_Asia)

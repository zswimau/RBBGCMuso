% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getMeteoData1.R
\name{getMeteoData1BGC}
\alias{getMeteoData1BGC}
\title{getMeteoData1BGC}
\usage{
getMeteoData1BGC(
  startYear = 2017,
  endYear = 2017,
  lon = 18.8,
  lat = 47.3,
  timeOut = 7200,
  monthList = sprintf("\%02d", 1:12),
  dayList = sprintf("\%02d", 1:31),
  hourList = sprintf("\%02d:00", 0:23),
  destDir = NULL,
  apiFile = NULL,
  fileDir = NULL
)
}
\arguments{
\item{startYear}{Start year of the downloading data. It shall be greater than 1978.}

\item{endYear}{End year of the downloading data. It shall be smaller than 2020.}

\item{lon}{Geographical longitude of the selected grid point (negative values: W, positive values: E). It shall be between -180 and 180. The value is rounded to two decimal places.}

\item{lat}{Geographical latitude of the selected grid point (negative values: S, positive values: N). It shall be between -90 and 90. The value is rounded to two decimal places.}

\item{timeOut}{Time in seconds to wait to download from Copernicus.}

\item{monthList}{Month selector (e.g. to download data for April then write "01", to download data for September and October then write c("04","05")}

\item{dayList}{Day selector (e.g. to download data for the 1st day of the month(s) then write "01", to download data for the 2nd and 4th day of the month then write c("02","04")}

\item{hourList}{Hour selector (e.g. to download data for 00 UTC then write "00:00", to download data for 01 UTC and 15 UTC then write c("01","15")}

\item{destDir}{Directory where the wth file will be created. If it is NULL then destDir is the same as fileDir.}

\item{apiFile}{Directory where the cdsapirc file is located}

\item{fileDir}{Directory where the .ini and .mtcin files will be created}
}
\description{
This function downloads hourly 2m air temperature and total precipitation values in NetCDF file format
at one grid point to create MTClim files which contain daily data.
Please note that, to download ERA5, you need Copernicus registration and API key.
According to default settings, data will be downloaded in the gridpoint of Martonvasar (Hungary), in 2017.
}
\author{
Erzsebet Kristof, Roland Hollos
}

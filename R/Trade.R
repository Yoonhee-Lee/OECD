#' The energy Trade qty of OECD Countries
#'
#' @param x "Country name"
#'
#' @return The function shows if this country exports or imports energy and how many energy it exports or imports.
#' @export
#'
#' @examples Trade("Austrailia")
Trade <- function(x){
  d1 <- subset(OECD,select=c("COUNTRY","TOTAL_ENERGY_GENERATION","ENERGY_CONSUMPTION"))
  d2 <- subset(d1,COUNTRY==x)
  export <- d2$TOTAL_ENERGY_GENERATION-d2$ENERGY_CONSUMPTION
  import <- d2$ENERGY_CONSUMPTION-d2$TOTAL_ENERGY_GENERATION
  ifelse(d2$TOTAL_ENERGY_GENERATION > d2$ENERGY_CONSUMPTION, cat("This country exports energy by",export,"BkWh"),cat("This country imports energy by",import,"BkWh"))
}

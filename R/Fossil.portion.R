#' The portion of generation energy using fossil fuels of OECD Countries
#'
#' @param x "Country name"
#'
#' @return The percentage of using fossil fuels in the total energy generation
#' @export
#'
#' @examples Fossil.portion("Canada")
Fossil.portion <- function(x){
  sb1 <- subset(OECD, select=c("COUNTRY","TOTAL_ENERGY_GENERATION","GENERATION_FOSSIL_FUELS"))
  sb1$PORTION <- sb1$GENERATION_FOSSIL_FUELS/sb1$TOTAL_ENERGY_GENERATION*100
  sb2 <- subset(sb1,select=c("COUNTRY","PORTION"))
  subset(sb2,COUNTRY==x)
}

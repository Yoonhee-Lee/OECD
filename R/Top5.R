#' Top 5 COUNTRY function
#'
#' @param a This should be a one of column which we want to know top 5.
#'
#' @return Returns a dataframe which includes top 5 countries in OECD and information which we want to know (a)
#' @export
#'
#' @examples
#' Top5(OECD$AREA)
Top5 <- function(a){
  df1 <- data.frame(OECD$COUNTRY, a)
  df2 <- df1[order(-a),]
  head(df2,5)
}

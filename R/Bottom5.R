#' Bottom 5 Country Function
#'
#' @param a This should be a one of column which we want to know top 5.
#'
#' @return Returns a dataframe which includes bottom 5 countries in OECD and information which we want to know (a)
#' @export
#'
#' @examples
#' Bottom5(OECD$AREA)
Bottom5 <- function(a){
  df1 <- data.frame(OECD$COUNTRY, a)
  df2 <- df1[order(a),]
  head(df2,5)
}

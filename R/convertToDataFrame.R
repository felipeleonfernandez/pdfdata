#' Convert a XML into a dataframe and name the columns
#'
#' @import XML
#'
#' @param data The XML data read
#' @param colnames A vector with the column names (it has to be the equal to the number of the dataframe columns)
#'
#' @return A dataframe built with the parameters
#' @export


convertToDataFrame <- function(data, colnames) {
  parsed <- xmlParse(data)

  if(missing(colnames)) {
    df <- xmlToDataFrame(parsed)
  }else{
    df <- xmlToDataFrame(parsed)
    colnames(df) <- colnames
  }

  return(df)
}

#' Transpose a dataframe and name the columns
#'
#' @import data.table
#'
#' @param dataframe The dataframe to be transposed
#' @param colnames A vector with the column names (it has to be the equal to the number of the dataframe columns)
#'
#' @return A transposed dataframe built with the parameters
#' @export


transposeDataFrame <- function(dataframe, colnames) {
  if(missing(colnames)) {
    df <- transpose(dataframe)
  }else{
    df <- transpose(dataframe)
    colnames(df) <- colnames
  }

  return(df)
}

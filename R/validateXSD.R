#' Validate a XML against the PDFDriver XSD
#'
#' @import xml2
#' @import utils
#'
#' @param xml The XML data read
#'
#' @return A boolean value indicating whether XML is validated
#' @export


validateXSD <- function(xml) {
  temp <- tempfile()

  download.file("http://grise.upm.es/dataframe.xsd", temp)

  schema <- read_xml(temp)

  xml_validate(xml, schema)
}

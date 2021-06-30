#' Extract the content of a PDF document attachment
#'
#' @import XML
#' @import pdftools
#' @import xml2
#'
#' @param filename The name of the PDF file
#'
#' @return The XML data read
#' @export


extractAttachmentContent <- function(filename) {
  attach <- pdf_attachments(filename)

  content <- attach[[1]]$data

  raw <- rawToChar(content)

  xml_db <- read_xml(raw)

  xml <- xmlParse(xml_db)

  print(xml)

  return(xml_db)
}

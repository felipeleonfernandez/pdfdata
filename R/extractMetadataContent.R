#' Extract the content of a XML element from the PDF document XMP
#'
#' @import pdftools
#' @import xml2
#' @import XML
#' @import magrittr
#'
#' @param filename The name of the PDF file
#' @param tag The element's name where the data is stored
#'
#' @return The XML data read
#' @export


extractMetadataContent <- function(filename, tag) {
  doc <- pdf_info(filename)

  file <- read_xml(doc$metadata)

  full_tag <- paste(".//", tag, sep = "")

  data <- xml_find_first(file, full_tag)

  clean_data <- xml_text(data) %>% trimws()

  xml_db <- read_xml(clean_data)

  xml <- xmlParse(xml_db)

  print(xml)

  return(xml_db)
}

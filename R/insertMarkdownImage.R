#' Paste image to file and insert with markdown syntax
#'
#' Call this function as an addin to paste an image to a file and insert markdown
#'
#' @export
insertMarkdownImage <- function() {
  # Paste to file
  fileName <- pasteImage()

  s <- glue::glue("![]({fileName})")

  rstudioapi::insertText(text = s)
}

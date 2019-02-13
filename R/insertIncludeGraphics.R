#' Paste image to file and insert \code{include_graphics} code block
#'
#' Call this function as an addin to paste an image to a file and insert a code
#' block with \code{include_graphics}.
#'
#' @export
insertIncludeGraphics <- function() {
  # Paste to file
  fileName <- pasteImage()

  s <- glue::glue("
    ```{{r echo=FALSE}}
    knitr::include_graphics('{fileName}')
    ```
    ")

  rstudioapi::insertText(text = s)
}

# Find the images directory and create if necessary
checkImagesDir <- function() {
  if ( ! file.exists('images') ) {
    dir.create('images')
    rstudioapi::showDialog("PasteImages", "Created images directory", url="")
  }
}

# Determine the file name for saving the image
getImageFileName <- function() {
  tempfile(pattern='pastedImage-', tmpdir='images', fileext='.png')
}

# Check for pngpaste
checkPngpaste <- function() {
  if ( system('which pngpaste > /dev/null') ) {
    rstudioapi::showDialog("PasteImages", "<b>pngpaste</b> is not in your path", url="")
    stop('pngpaste is not present in your path')
  }
}

# Paste the image to a file - returns the file name
pasteImage <- function() {
  checkPngpaste()
  checkImagesDir()
  fileName <- getImageFileName()
  system(paste('pngpaste', fileName))
  if ( ! file.exists(fileName) ) {
    rstudioapi::showDialog("PasteImages", "Could not create image file", url="")
    stop(paste("Could not create ", fileName))
  }
  message(paste('Pasted image to', fileName))
  fileName
}

# pasteImgMacAddin

Note that this package only works on a Mac. 

When writing an R Markdown file, I often want to include a screen-shot or an image from an Apple Note. To do so requires a process of copying the screen-shot/image to the clipboard, saving the image to a file in the correct directory (after coming up with a file name) and then writing the appropriate code or Markdown text in the R Markdown file to place it in the document. I've found these steps to be tedious enough to want to automate them with an RStudio addin. 

This package will create two addins: `Insert Include Graphics` and `Insert Markdown Image`. The former will add an R code chunk to your R Markdown document at the cursor to display the copied image when executed. The latter will add Markdown text `![](path_to_image_file)` to your document at the cursor. In both cases, the image on the clipboard is saved to the `images` subdirectory of your current working directory (it is created if not present already) with the `pastepng` shell command. If you do not have `pngpaste`, you can install it on your Mac with `brew install pngpaste`. The code will generate a randomized file name for the image. Then the appropriate code/text is added to the R Markdown file. 

You can install this package with 

```r
remotes::install_github("lyon-fnal/pasteImgMacAddin")
```

That should add the functions to your `Addins` menu. If not, then you may need to restart RStudio. 

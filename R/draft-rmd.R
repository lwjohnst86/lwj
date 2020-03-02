
#' Create a bookdown chapter file.
#'
#' @param .filename The name of the file to create.
#'
#' @return Creates a bookdown chapter file.
#' @export
#'
draft_bookdown_chapter <- function(.filename) {
    rmarkdown::draft(
        file = .filename,
        template = "bookdown-chapter",
        package = "lwj",
        create_dir = FALSE,
        edit = FALSE
    )
    rstudioapi::navigateToFile(paste0(.filename, ".Rmd"))
    ui_done("Created the new bookdown chapter file {ui_value(.filename)}.")
    return(invisible())
}

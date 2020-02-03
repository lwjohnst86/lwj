
#' File path of logo.
#'
#' @param org Organization name. See [logo_list()] for list of names.
#'
#' @return A file path to the logo image.
#' @export
#'
logo <- function(org = logo_list()) {
    org <- match.arg(org)
    logo_dir <- fs::path_package("lwj", "logos")
    fs::dir_ls(logo_dir, regexp = paste0(org, "\\.(png|jpg)$"))
}

#' List logos available.
#'
#' @return Character vector with possible logos to use.
#' @export
#'
logo_list <- function() {
    fs::path_package("lwj", "logos") %>%
        fs::dir_ls() %>%
        fs::path_file() %>%
        fs::path_ext_remove()
}


badge_document_status <- function(state = "in progress") {
    badge_url <- "https://img.shields.io/badge/document%20status-in%20progress-orange?style=flat-square"
    badge_name <- "document status"
    badge <- glue::glue("![{badge_name}]({badge_url})")

    ui_todo("Paste this badge in the document you are working on.")
    ui_code_block(badge)
}

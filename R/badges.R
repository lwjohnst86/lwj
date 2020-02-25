
badge_document_status <- function(state = c("in progress", "completed")) {

    state <- match.arg(state)
    badge_colour <- switch(
        state,
        `in progress` = "orange",
        completed = "success"
    )

    state <- stringr::str_replace(state, " ", "%20")
    badge_url <- glue::glue("https://img.shields.io/badge/document%20status-{state}-{badge_colour}?style=flat-square")
    badge_name <- "document status"
    badge <- glue::glue("![{badge_name}]({badge_url})")

    ui_todo("Paste this badge in the document you are working on.")
    ui_code_block(badge)
}

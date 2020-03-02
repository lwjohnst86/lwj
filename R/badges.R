#' Add a badge to a document on it's status.
#'
#' @param state What state the project is in (completed, in progress). See `document_status$state`
#'
#' @return Sends badge text to screen and puts it to the clipboard.
#' @export
#'
badge_document_status <- function(state = document_status$state) {
    badge_colour <- document_status$colour[document_status$state == state]
    badge_url <- generate_badge("document status", state, badge_colour)
    badge <- glue::glue("![]({badge_url})")

    ui_todo("Paste this badge in the document you are working on.")
    ui_code_block(badge)
    return(invisible())
}

document_status <- tibble(
    state = c("rough draft", "revising", "completed"),
    colour = c("red", "orange", "brightgreen")
)

generate_badge <- function(lhs_text, rhs_text, colour,
                           style = c("flat-square", "plastic", "flat")) {
    style <- match.arg(style)
    # Replace space with "%20"
    lhs_text <- stringr::str_replace_all(lhs_text, " ", "%20")
    rhs_text <- stringr::str_replace_all(rhs_text, " ", "%20")
    glue::glue("https://img.shields.io/badge/{lhs_text}-{rhs_text}-{colour}?style={style}")
}

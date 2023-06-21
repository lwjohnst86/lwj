#' Set basic configurations for using RStudio.
#'
#' @export
#' @return NULL. The function is used for its side effects.
#'
my_rstudio_config <- function() {
  usethis::use_rstudio_preferences(
    always_save_history = FALSE,
    auto_append_newline = TRUE,
    auto_run_setup_chunk = TRUE,
    auto_save_on_blur = TRUE,
    check_arguments_to_r_function_calls = TRUE,
    continue_comments_on_newline = TRUE,
    default_encoding = "UTF-8",
    doc_outline_show = "all",
    document_author = "Luke W. Johnston",
    editor_keybindings = "vim",
    editor_theme = "Twilight Night",
    font_size_points = 12,
    highlight_r_function_calls = TRUE,
    highlight_selected_line = TRUE,
    indent_guides = "rainbowfills",
    num_spaces_for_tab = 2,
    panes = list(
      quadrants = c(
        "Source",
        "TabSet1",
        "Console",
        "TabSet2"
      ),
      tabSet1 = c(
        "History",
        "Connections",
        "Tutorial",
        "Presentation"
      ),
      tabSet2 = c(
        "Environment",
        "Files",
        "Plots",
        "Packages",
        "Help",
        "Build",
        "VCS",
        "Viewer",
        "Presentations"
      ),
      console_left_on_top = FALSE,
      console_right_on_top = TRUE,
      additional_source_columns = 0
    ),
    rainbow_parentheses = TRUE,
    relative_line_numbers = TRUE,
    save_workspace = "never",
    scroll_past_end_of_document = TRUE,
    show_doc_outline_rmd = TRUE,
    show_hidden_files = TRUE,
    show_panel_focus_rectangle = TRUE,
    soft_wrap_r_files = TRUE,
    strip_trailing_whitespace = TRUE,
    style_diagnostics = TRUE,
    syntax_color_console = TRUE,
    use_roxygen = TRUE,
  )
}

# usethis:::modify_rproj
# usethis::pref

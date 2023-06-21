#' QR Code generator to SVG file.
#'
#' @param text The text or URL to use to add to the QR code.
#' @param path The output path for the SVG file.
#'
#' @export
qr_to_svg <- function(text, path) {
    qrcode::qr_code(x = text) |>
        qrcode::generate_svg(filename = path)
}


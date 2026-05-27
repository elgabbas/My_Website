generate_sitemap <- function(
    public_dir    = "public",
    base_url      = "https://elgabbas.netlify.app",
    output_file   = "public/sitemap.xml"
) {

  # ── 1. Read existing sitemap URLs (avoid duplicates) ──────────────────────
  sitemap_path <- output_file
  stopifnot(file.exists(sitemap_path))

  xml_content   <- readLines(sitemap_path, warn = FALSE)
  loc_lines     <- xml_content[grepl("<loc>", xml_content)]
  existing_locs <- trimws(gsub(".*<loc>(.*)</loc>.*", "\\1", loc_lines))

  # ── 2. Discover ALL .html and .pdf files under public/ ────────────────────
  all_files <- list.files(
    public_dir,
    pattern    = "\\.(html|pdf)$",
    recursive  = TRUE,
    full.names = FALSE,
    ignore.case = TRUE
  )

  # ── 3. Exclude files that should never appear in a sitemap ────────────────
  exclude_patterns <- c(
    "^index\\.html$",          # root index
    "^404\\.html$",            # error page
    "^sitemap\\.xml$",         # sitemap itself
    "^google[0-9a-f]+\\.html$",# Google verification file
    "/index\\.html$"           # Hugo section index files
  )
  for (pat in exclude_patterns) {
    all_files <- all_files[!grepl(pat, all_files)]
  }

  # ── 4. Build full URLs ─────────────────────────────────────────────────────
  base <- sub("/$", "", base_url)
  candidate_urls <- paste0(base, "/", all_files)

  # ── 5. Keep only URLs not already in the sitemap ──────────────────────────
  new_urls <- candidate_urls[!candidate_urls %in% existing_locs]

  if (length(new_urls) == 0) {
    message("Sitemap already complete — no new URLs to add.")
    return(invisible(NULL))
  }

  message(sprintf("Adding %d new URLs to sitemap.xml:", length(new_urls)))
  message(paste(" ", new_urls, collapse = "\n"))

  # ── 6. Build <url> entries ─────────────────────────────────────────────────
  today <- format(Sys.Date(), "%Y-%m-%d")

  new_entries <- paste0(
    vapply(new_urls, function(url) {
      sprintf(
        "  <url>\n    <loc>%s</loc>\n    <lastmod>%s</lastmod>\n    <changefreq>monthly</changefreq>\n    <priority>0.4</priority>\n  </url>",
        url, today
      )
    }, character(1)),
    collapse = "\n"
  )

  # ── 7. Inject before </urlset> ────────────────────────────────────────────
  closing_idx <- which(grepl("</urlset>", xml_content))[1]
  if (is.na(closing_idx)) stop("</urlset> not found in sitemap — aborting.")

  new_sitemap <- c(
    xml_content[seq_len(closing_idx - 1)],
    new_entries,
    xml_content[closing_idx:length(xml_content)]
  )

  writeLines(new_sitemap, sitemap_path)
  message("Done. sitemap.xml updated.")
}

generate_sitemap()

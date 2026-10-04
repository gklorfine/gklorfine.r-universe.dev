# create my packages.json for gklorfine.r-universe.dev
# Based on a script from Michael Friendly:
# https://github.com/friendly/friendly.r-universe.dev/blob/master/make-pkg-json.R

base <- "https://github.com/gklorfine/"

package <- c(
  "ggfourfold"
)

df <- data.frame(
  package = package,
  url = paste0(base, package, recycle0 = TRUE)
)

# Add Friendly packages I've co-authored
friendly <- "https://github.com/friendly/"

package_f <- c("vcdExtra", "ggmosaic2")

df_f <- data.frame(
  package = package_f,
  url = paste0(friendly, package_f)
)

df <- rbind(df, df_f)
print(df)

jsonlite::write_json(df, "packages.json", pretty = TRUE)

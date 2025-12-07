

source(here::here("config.R"))

code <- qr_code(WEBSITE_URL)
plot(code)

# simplify the code
library(magrittr)
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date <- Sys.Date() %>%
  format(.,"%Y") %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(.,straw_hat_df$birthday, sep = "-") %>%
  as.Date()

straw_hat_df$birth_date


# add BMI in dataframe
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights$bmi <- (weights / ((heights / 100)^2))

heights_and_weights

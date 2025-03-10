install.packages(c("tidyverse", "ggplot2", "dplyr"))

install.packages("reticulate")
library(reticulate)
py_install("kaggle")

kaggle <- import("kaggle")
kaggle$api$authenticate()

kaggle$datasets$download("-d vincentokumu/climate-change-modelling-r", path = "data", unzip = TRUE)


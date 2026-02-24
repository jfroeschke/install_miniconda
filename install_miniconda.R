## install miniconda
## run only once a new machine

install.packages("reticulate")
library("reticulate")


install_miniconda()
use_condaenv("r-reticulate", required = TRUE)

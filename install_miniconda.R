## install miniconda
## run only once a new machine

install.packages("reticulate")
library("reticulate")


install_miniconda()
use_condaenv("r-reticulate", required = TRUE)


### Test from rstudio
library(reticulate)

### check that reticulate sees the miniconda installation
conda_list()

### create a test environment
conda_create("r-test", packages = "python=3.11")

### activate it for current r session
use_condaenv("r-test", required = TRUE)

### verify
py_config()

### run some python code inside R
py_run_string("print('Hello from Python inside R!')")

### try importing a python package
conda_install("r-test", "numpy")

### test it out: 

np <- import("numpy")
np$random$rand(as.integer(3))

### confirm numpy is working

x <- np$array(c(1,2,3))
x

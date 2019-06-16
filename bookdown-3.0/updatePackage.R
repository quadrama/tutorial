source("packrat/init.R")

if ("DramaAnalysis" %in% .packages()) {
  detach("package:DramaAnalysis", unload = TRUE)
}

if ("DramaAnalysis" %in% rownames(installed.packages())) {
  remove.packages("DramaAnalysis")
}

install.packages("~/Documents/QuaDramA/DramaAnalysis_2.9.9.9000.tar.gz", repos = NULL, type = "source")

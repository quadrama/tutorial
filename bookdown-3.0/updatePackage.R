source("packrat/init.R")

if ("DramaAnalysis" %in% .packages()) {
  detach("package:DramaAnalysis", unload = TRUE)
}

if ("DramaAnalysis" %in% rownames(installed.packages())) {
  remove.packages("DramaAnalysis")
}


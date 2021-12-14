TARGETDIR=../../DramaAnalysis.gh-pages/tutorial/3/
DADIR=../../DramaAnalysis
SDIR=$(shell pwd)
DAVERSION=$(shell grep -o -e 'Version:.*' ${DADIR}/DESCRIPTION | egrep -o '\d+\.\d+(\.\d+)?(\.\d+)?')

refresh:
	Rscript updatePackage.R
	Rscript -e "install.packages('~/Documents/QuaDramA/DramaAnalysis_${DAVERSION}.tar.gz', repos = NULL, type = 'source')"

clear:
	rm -rf _bookdown_files

bookdown:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', output_dir='${TARGETDIR}')"


pdf:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', output_dir='${TARGETDIR}')"


epub:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book', output_dir='${TARGETDIR}')"
	
all: pdf epub bookdown
all: compile-scss make-pdf merge-pdf

SOURCE_DIR = ./resources

compile-scss:
	for file in $(SOURCE_DIR)/*.scss; \
	do \
  		npx sass $${file} $${file%.scss}.css; \
  	done

make-pdf:
	npx asciidoctor-web-pdf $(lecture)/*.adoc
	rm $(lecture)/*.html

merge-pdf:
	for file in $(lecture)/*.pdf; \
	do \
		yes | pdfxup -x 5 -fw 0 -m 3pt -o $${file} $${file}; \
	done

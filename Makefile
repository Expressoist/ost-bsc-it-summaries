all: compile-scss make-summary

SOURCE_DIR = ./resources

compile-scss:
	for file in $(SOURCE_DIR)/*.scss; \
	do \
  		npx sass $${file} $${file%.scss}.css; \
  	done

make-summary:
	for file in $(lecture)/*.adoc; \
	do \
		npx asciidoctor-web-pdf $${file}; \
		yes | pdfxup -x 5 -fw 0 -im 2pt -o $${file%.adoc}.pdf $${file%.adoc}.pdf; \
	done
	rm $(lecture)/*.html

make-cheatsheet:
	for file in $(lecture)/*.adoc; \
	do \
	  	npx asciidoctor-web-pdf $${file} -a stylesdir="../resources" -a stylesheet="summary-theme.css,cheatsheet-theme.css" -a cheatsheet; \
	  	yes | pdfxup -x 5 -fw 0 -im 2pt -o $${file%.adoc}.pdf $${file%.adoc}.pdf; \
	done
	rm $(lecture)/*.html

summary: compile-scss make-summary

cheatsheet: compile-scss make-cheatsheet

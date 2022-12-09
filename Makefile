all: compile-scss make-pdf

SOURCE_DIR = ./resources

compile-scss:
	for file in $(SOURCE_DIR)/*.scss; \
	do \
  		npx sass $${file} $${file%.scss}.css; \
  	done

make-pdf:
	npx asciidoctor-web-pdf $(lecture)/*.adoc
	# rm $(lecture)/*.html

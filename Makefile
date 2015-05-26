TARGET=$(patsubst %.Rmd,%.html,$(wildcard *.Rmd))
CSS=$(wildcard *.css)

all: ${TARGET}

clean:
	@rm -vf *.html

%.html: %.Rmd ${CSS}
	Rscript -e "rmarkdown::render('$<')"

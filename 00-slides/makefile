RMDFILES = $(wildcard *.Rmd)
HTMLFILES = $(wildcard *.html)

all: talk.html

talk.html: $(RMDFILES) style.css template.html $(HTMLFILES)
	R --vanilla -e "rmarkdown::render('talk.Rmd')"


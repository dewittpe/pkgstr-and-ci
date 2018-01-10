RMDFILES = $(wildcard *.Rmd)

all: talk.html

talk.html: $(RMDFILES) style.css template.html
	R --vanilla -e "rmarkdown::render('talk.Rmd')"



SOURCE=demo.tex

LATEX_ARGS= -shell-escape


all: docker_image presentation
	rm -f $(TEMP)

docker_image:
	docker build docker -t beamer:latest

presentation:
	docker run -v `pwd`:/data -i beamer:latest xelatex $(LATEX_ARGS) $(SOURCE) 

clean:
	rm -f *.pdf
	rm -f *.nav
	rm -f *.toc
	rm -f *.log
	rm -f *.aux
	rm -f *.snm
	rm -f *.out

	rm -rf _minted*


.PHONY: all clean docker docker_image

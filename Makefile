PROJECT=problems
TEX=pdflatex --shell-escape --halt-on-error --interaction=nonstopmode
BIBTEX=bibtex

all:
	$(TEX) $(PROJECT).tex
	$(BIBTEX) $(PROJECT)
	$(TEX) $(PROJECT).tex

clean:
	rm -rf _minted-slides *.{log,aux,out,bak,idx,toc,nav,snm,vrb,synctex.gz,fls,fdb_latexmk,pyg,dvi}

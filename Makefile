all: main.pdf
	@echo "done"

main.pdf: clean markdown run-1 bibtex glossar run-2 run-3

preview: markdown run-1
	open main.pdf

markdown: 
	@# convert markdown files to latex
	@find . -type f -name "*.md"  -print0 | while IFS= read -r -d '' file; do \
	echo $$file; \
		dir=$$(dirname "$$file"); \
		filename=$$(basename "$$file" .md); \
		pandoc "$$file"  --biblatex  -f markdown+implicit_figures+inline_notes --chapters --latex-engine=xelatex --parse-raw --smart  --to=latex+raw_tex  -o "$$dir/$$filename.md.tex"; \
	done

glossar: run-1 
	makeindex -s main.ist -t main.glg -o main.gls main.glo
	
bibtex: run-1
	bibtex main

run-1 run-2 run-3:
	@# On failire: run with toutput
	@pdflatex -interaction=batchmode main.tex || ( \
		echo "-----------------------------------------------------------------"; \
		echo "!Error while compiling latex. Running again with more output. "; \
		echo "-----------------------------------------------------------------"; \
		pdflatex -interaction=nonstopmode main.tex; \
	)

open: main.pdf
	open main.pdf

test: clean-all main.pdf
	ps2ascii main.pdf > main.txt
	diff tests/main.pdf.expected.txt main.txt && echo "Tests: OK"
	
clean: 
	-rm -f *.{aux,bak,md.tex}
	-rm -f */*.{aux,bak}
	-rm -f main.{txt,dvi,bbl,blg,glo,idx,ist,lof,lot,log,out,synctex.gz,toc,glg,gls}
	
clean-all: clean
	-rm -f main.pdf
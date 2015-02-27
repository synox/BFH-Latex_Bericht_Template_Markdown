# Markdown + Latex für Thesis

Dieses Template ist eine Variante des [BFH-Latex-Template vom BFH-Intranet](https://intranet.bfh.ch/TI/de/Dienste/kompr/pr%C3%A4sentationen/Seiten/default.aspx) mit:  

 - Style-Klasse (`bfh_template.cls`) ->  einfacheres `main.tex`
 - Markdown-Syntax (auch Latex-Befehle möglich)
 - simples Makefile
 
Die integration von Markdown wurde mit  [Pandoc](http://pandoc.com/) umgesetzt. 

 
Voraussetzungen
--------------------

Linux/Unix/Mac OSX System mit 

 - [Pandoc](http://pandoc.com/)
 - make
 - Latex ([MacTeX](https://www.tug.org/mactex/))
 - "sre/rubber" (fork, https://github.com/sre/rubber) 
 
Verwendung
--------------------
 - Git clone / zip download
 - Unnötige Features/Kapitel auskommentieren in `main.tex`
 - Details einstellen in `bfh_template.cls`. (z.B. für einseitigen Druck `twoside` entfernen).
 - Markdown-Dateien mit Endung `.md` anlegen und in `main.tex` mit `include` einbinden.
 - [kapitel/demo.md](kapitel/demo.md) zeigt die wichtigste Syntax

### Build actions
 
- `make pdf`: convert `.md` and create pdf
- `make clean`: remove temp. / `.md.tex` files

For debugging:

- `make markdown`: (only) convert `.md` -> `.md.tex` 
- `make rubber`: (only) create pdf (allows editing temp. `.md.tex` files.)
- `make pdf test`: create PDF and compare with expected pdf
 

Troubleshooting
--------------------

### Problem makeindex: openout_any / "I can't write on file ...""

Lösung: https://nvcleemp.wordpress.com/2011/03/13/curing-latexs-paranoia/

Auf meinem Mac ist es in der Datei: `  /usr/local/texlive/2014/texmf-dist/web2c/texmf.cnf` 
 
Developer Notes
--------------------
Notes to developers / forkers:  

 * Zitate wie [@juergens:einfuehrung] werden mit \autocite{} umgesetzt. Die von BFH verwendeten Packages kennen den Befehl nicht. Damit es trotzdem funktioniert  gibt es im `bfh_template.cls` ein Alias dafür. 
 * Es wird ein der [Fork](https://github.com/sre/rubber) von [Rubber](https://launchpad.net/rubber/) verwendet, weil es das Modul `glossaries` anbietet.
    

# Einleitung

Dieses Template ist eine Variante des [BFH-Latex-Template vom BFH-Intranet](https://intranet.bfh.ch/TI/de/Dienste/kompr/pr%C3%A4sentationen/Seiten/default.aspx). Zusätzlich wurde implementiert: 

 - Zusammenfassung als Style-Klasse (bfh_template.cls)
 - Verwendung von Markdown-Syntax
 - Einfaches Makefile
 
Nicht benötigte Teile können im `main.tex` einfach entfernt werden. Zur Verwendung der Tools und von Latex siehe das original Template. In diesem Template werden die Markdown-Spezialitäten erklärt. 
 
In Markdown ist die Verwendung von Latex weiterhin möglich. Es können also die Vorteile beider Tools verwendet werden. 
 
## Voraussetzungen

Linux/Unix/OSX System mit 

 - Pandoc
 - make
 - latex
 
## Verwendung

Als git-repo oder als ZIP herunterladen und an eigene Bedürfnise anpassen. 
 
 `make all` generiert das PDF
 
 `make markdown` wandelt alle `.md` dateien in .md.tex` um. Diese müssen noch in `main.tex` eingebunden werden. 
 
 `make test` generiert das PDF und testet, ob das PDF den Erwartungen entspricht. 
 
 `make clean` entfernt temporäre Dateien des Latex-Prozesses. 
 
 
 ## Developer Notes
 
 Bei der Verwendung von Pandoc gibt es zurzeit ein paar Einschränkungen: 
 
 * Zitate wie [@juergens:einfuehrung] werden mit \autocite{} umgesetzt. Die verwendeten Packages kennen den Befehl nicht, daher gibt es im `bfh_template.cls` ein Alias dafür. 

 * für rubber braucht es ein paar anpassungen:    https://nvcleemp.wordpress.com/2011/03/13/curing-latexs-paranoia/
    /usr/local/texlive/2014/texmf-dist/web2c/texmf.cnf
    
    

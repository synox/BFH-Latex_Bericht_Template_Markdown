# Einleitung

Dieses Template ist eine Variante des BFH-Latex-Template vom BFH-Intranet. Zusätzlich wurde implementiert: 

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
 
 

Syntax Summary
========================

## Markdown Syntax (Überschrift Level 2)
**Fett**, *kursiv*

1. Nummerierte Liste
2. usw. 

* Punkt-Liste 
* usw. 

> Dies ist ein Zitat.  

Zeile mit `Inline` Code. 

    Dies ist ein 
    Code Block. 

## Referenzen 

Link zu Kapitel [Syntax Summary] oder Überschrift [Referenzen]

Fussnote^[Inlines notes are easier to write, since
you don't have to pick an identifier and move down to type the
note.]

Zitieren: Latex-Einführung[@juergens:einfuehrung].

Unsichtbar zitieren (erscheint im Verzeichnis): \nocite{raichle:bibtex_programmierung}

Siehe Abbildung \ref{fig:demo1}

Siehe Kapitel [Syntax Summary] auf Seite \pageref{syntax-summary}


### Bilder (Überschrift Level 3)

Einfaches Bild ![BFH Logo](bilder/BFH_Logo_B.png) (Inline): 

Bild mit Referenz: Abbildung \ref{fig:bfh-logo}.

![BFH Logo \label{fig:bfh-logo}](bilder/BFH_Logo_B.png)

Latex-Bilder wie Abbildung \ref{fig:demo1} erlaubt mehr Einstellungs-Möglichkeiten. 

\begin{figure}[H]
    \centering
        \includegraphics[scale=0.85]{bilder/BFH_Logo_B.png}
    \caption{Das Logo}
    \label{fig:demo1}
\end{figure}

### Tabellen
  
| **Editor**   | **Plugin**               | **Kommentar**                     |
|:-------------|:-------------------------|:----------------------------------|
| Atom.io      | markdown-table-formatter | formatiert beim Speichern (CMD-S) |
| Sublime Text | Table Edittor            | formatiert mit Taste TAB          |

: Beispieltabelle mit den Legende


Oder eine Latex-Tabelle: 

\begin{table}[H]
	\centering
		\begin{tabular}{p{0.13\textwidth} p{0.75\textwidth}} \toprule
			\textbf{Paket} & \textbf{Funktion} \\ \midrule
			\texttt{Internet}\index{cmbright} & Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur.  \\ \midrule
			\texttt{Hello}\index{glossaries} & Lorem ipsum dolor sit amet. \\ \bottomrule
		\end{tabular}
	\caption{Pakete}
	\label{tab:pakete}
\end{table}


### Latex Funktionen

Glossar Wort verwenden (Abkürzung): \gls{StwVrz}

Für Stichwortverzeichnis indexieren: \index{Latex}

Math Formel \ref{eq:solve}: 

\begin{equation} \label{eq:solve}
	\mathcal{N}(x \mid \mathbold{\mu}, \mathbold{\Sigma}) = \frac{1}{(2\pi)^{D/2}} \frac{1}{|\mathbold{\Sigma}|^{(1/2)}} \exp \left( -\frac{1}{2}(x-\mathbold{\mu})^{T}\mathbold{\Sigma}^{-1}(x-\mathbold{\mu}) \right)
\end{equation}


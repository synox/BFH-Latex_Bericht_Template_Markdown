
Markdown
==========

Es können auch Teile des Berichts in Markdown geschrieben werden, diese werden mit Pandoc automatisch in Latex umgewandelt. Es können Latex-Befehle im Markdown-Text verwendet werden, diese werden nicht verändert.

Formatierung 
--------------
Mann kann **Fett** oder *kursiv* verwenden. Verweise zu anderen Kapiteln sind möglich, z.B. Kapitel [Theory].

Here is an inline note.^[Inlines notes are easier to write, since
you don't have to pick an identifier and move down to type the
note.]

Verweis/Zieteren: Latex-Einführung[@juergens:einfuehrung].

Bilder können eingefügt werden, jedoch kann nicht darauf verwiesen werden. 

![BFH Logo](bilder/BFH_Logo_B.png)



| **Vorname Name**  | **Mail**               | **Funktion**                              |
| :-------------    | :--------              | :-----------                              |
| Alfred Kaufmann   | alfred.kaufmann@bfh.ch | Auftraggeber, Projektleitung, Ergänzungen |
| Fritz Dellsperger | in Pension             | Tipps zur Struktur und Layout             |
| David Burri       | ausgetreten            | Erstellung der Vorlage                    |

  : Beispieltabelle mit den Kontaktpersonen

## Latex Fallback

In Abbildung \ref{fig:datei_struktur} ist eine Einbindung via Latex sichtbar, und hier ist der Verweis darauf. 

\begin{figure}[H]
    \centering
        \includegraphics[scale=0.85]{bilder/datei_struktur.png}
    \caption{Dateistruktur}
    \label{fig:datei_struktur}
\end{figure}


# Theory
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

# Conclusion
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


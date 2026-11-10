# 📝📈🚀🔥💯👾💻🌌💸🧨🔮

## Editing

`resume.tex` contains content only. `resume-style.sty` contains all layout,
spacing, fonts, and page setup.

The content file uses a small set of semantic commands:

```tex
\cvname{Name}{Subtitle}
\cvcontacts{item}{item}{item}{item}

\cvsection{Experience}

\begin{cvjob}{Company}{Role}{Dates}
  \cvitem{A bullet.}
  \cvitem{Another bullet with \cvlink{https://example.com}{a link}.}
\end{cvjob}

% For two titles in sequence at one employer (e.g. a promotion):
\begin{cvjobdual}{Company}{Current title}{Current dates}{Prior title}{Prior dates}
  \cvitem{A bullet.}
\end{cvjobdual}

\cveducation[Optional note]{Institution}{Degree}{Dates}

\cvskill{Category}{comma-separated items}
\cvfooter{References available upon request.}
```

## Building

```sh
make        # build resume.pdf
make watch  # rebuild on save
make dist   # copy resume.pdf to Cristian-Gonzales-Resume.pdf
make clean  # remove build artifacts
```

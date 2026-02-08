\ProvidesClass{doku_tpl} 
\ProcessOptions\LoadClass[a4paper,oneside]{article} 

\RequirePackage[english]{babel}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[hyphens]{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}

\frenchspacing % integration of appropriate spaces after the periods

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

% Default parameters
\def\subject#1	    {\gdef\@subject{#1}}
\def\title#1		{\gdef\@title{#1}}
\def\subtitle#1		{\gdef\@subtitle{#1}}
\def\discipline#1	{\gdef\@discipline{#1}}
\def\author#1		{\gdef\@author{#1}}
\def\adviser#1		{\gdef\@adviser{#1}}
\def\expert#1		{\gdef\@expert{#1}}
\def\data#1			{\gdef\@data{#1}}

\newcommand{\Subject}{\@subject}
\newcommand{\Title}{\@title}
\newcommand{\Subtitle}{\@subtitle}
\newcommand{\Discipline}{\@discipline}
\newcommand{\Author}{\@author}
\newcommand{\Adviser}{\@adviser}
\newcommand{\Expert}{\@expert}
\newcommand{\Data}{\@data}


% Front Page
\newcommand{\frontpage}{
	\begin{titlepage}
		\begin{center}
		
			% Top of page
			\textsc{\LARGE \bfseries Hochschule Luzern T\&A}\\[0.2cm]
			\textsc{\large Technik \& Architektur}\\[1cm]
			\textsc{\large Master of Science in Engineering}\\[.1cm]
			\textsc{\large Field of specialization: \Discipline}\\[.5cm]
			\vspace{4cm}
			\vspace{0.2cm}
			\textsc{\Large \Subject}

			% Title
			\HRule \\[0.4cm]{
				\huge \bfseries \Title\\[0.3cm]
				\large \Subtitle
			}\\[0.4cm]
			\HRule \\[1.0cm]
						
			\begin{tabular}{rl}
			
				\textbf{Author} 				
				& \Author \\
				& Hochschule Luzern T\&A 
				
				\vspace{0.2cm} 
				\\ \textbf{Advisor}
				& \Adviser \\				
				& Hochschule Luzern T\&A
				
				\vspace{0.2cm} 
				\\ \textbf{Expert}
				& \Expert \\
				& Elmor AG
				
			\end{tabular}

			% Bottom of page
			\vfill
			{\large \Data}
		\end{center}
	\end{titlepage}
}
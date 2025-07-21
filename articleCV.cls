%
% articleCV.tex
% Copyright 2025 Pedro H. Mattos
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, version 1.3c .
%
% The latest version of this license LPPL (v1.3c) is in
% https://www.latex-project.org/lppl.txt
%
% This work has the LPPL maintenance status `maintained'.
%
% The current maintainer of this work is Pedro H. Mattos
%
% This work consists of the files articleCV.cls and CVexample.tex,
% and the derived file userguide.pdf

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{articleCV}[2025/06/03 modification of the article class for CVs]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} 	%	pass all options to the article class	
\ProcessOptions\relax
\LoadClass[11pt, a4paper]{article} 	%	load the article class with the options 11pt and a4paper

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{libertine}

%--------------------------------------------------
% Page size
\RequirePackage{geometry}
\geometry{margin=25mm}

%--------------------------------------------------
% Page style
\RequirePackage{fancyhdr}
\pagestyle{empty}
\fancyhf{}

%--------------------------------------------------
% Sections
\RequirePackage{titlesec}
\titleformat{\section}{\Large\raggedright}{}{0em}{}[\titlerule]
\titlespacing{\section}{0pt}{0pt}{5pt}

%--------------------------------------------------
% Items
\RequirePackage{enumitem}
\setlist[1]{labelindent=\parindent}
\setlist[itemize]{topsep=0pt, after=\vspace{\baselineskip}, before=\small, label=---}

% Tables
%--------------------------------------------------
\RequirePackage{tabularx}
\RequirePackage{array}

%	creates two `fake' column types `$' and `^', used to apply `\currentrowstyle'
\newcolumntype{$}{>{\global\let\currentrowstyle\relax}} 		%	a column of type `$' indicates nothing
\newcolumntype{^}{>{\currentrowstyle}}
\newcommand{\rowstyle}[1]{\gdef\currentrowstyle{#1}%
  #1\ignorespaces
}

\newcommand{\tab}[4]{ 	%	defines the command \tab, which take four [4] arguments, that can be NULL
\begin{tabularx}{1\textwidth}{@{} $ X ^ r} 		%	creates a tabularx environment, with four columns, $ X ^ and r. The declaration @{} controls column spacing
\rowstyle{\bfseries} {#1} & {#2} \\ 	%	row 1 
\rowstyle{\itshape\sffamily\small} {#3} & {#4} \\ 	%	row 2
\end{tabularx}
}

%--------------------------------------------------
% Hyperlinks
\RequirePackage{hyperref} 	%	enables hypertext functionality
\newcommand\Email[1]{\href{mailto:#1}{#1}}	%	defines a new command called \Email, which creates an email link that directs readers to the relevant inbox
\hypersetup{%
	colorlinks=true, 	%	hyperlinks are coloured
	linkcolor={.},	%	internal document links are black, i.e. text-coloured
	urlcolor=[RGB]{0,102,204}	%	 URL-links are coloured HTML-standard blue
}
\urlstyle{same}	% makes URL formatting the same as other hypertext links within the document
\endinput
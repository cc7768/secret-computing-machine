%=====================================================================
% jhwhw.cls
% Provide jhwhw.cls class
%=====================================================================

%=====================================================================
% Identification
%=====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jhwhw}[2013/09/03 Chase Coleman's Homework Class]
% Draws almost entirely from Justin Wilson's Homework Class at
% https://gist.github.com/jhwilson/1278588
% Credit goes to him; I only modified a few commands.

\LoadClass[letterpaper, 12pt]{report}
%\RequirePackage{jhwmath} Personal style file I use.

\RequirePackage{fancyhdr}
\RequirePackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{empheq}
\RequirePackage{ifthen}
  \usepackage{threeparttable}
  \usepackage{geometry}
  \geometry{letterpaper,tmargin=1in,bmargin=1in,lmargin=1in,rmargin=1in}
  \usepackage[format=hang,font=normalsize,labelfont=bf]{caption}
  \usepackage{amsmath}
  \usepackage{multirow}
  \usepackage[table]{xcolor}
  \usepackage{array}
  \usepackage{delarray}
  \usepackage{amssymb}
  \usepackage{amsthm}
  %\usepackage{pdflscape} % Use this package if you want to see the landscape pages
                          % but are not going to print them (this is for editing)
                          % Use lscape package for printing.
  \usepackage{lscape}
  \usepackage{natbib}
  \usepackage{setspace}
  \usepackage{float,color, colortbl}

%=====================================================================
% Commands
%=====================================================================

\setlength{\headheight}{15pt}
\lhead{\@author}\chead{\@title}\rhead{\today}
\lfoot{}\cfoot{\thepage}\rfoot{}
\pagestyle{fancy}

\ifx\pdfoutput\undefined %LaTeX
\RequirePackage[ps2pdf,bookmarks=true]{hyperref}
\hypersetup{ %
pdfauthor = {\@author},
pdftitle = {\@title},
pdfcreator = {LaTeX with hyperref package},
pdfproducer = {dvips + ps2pdf}
}
\else %PDFLaTeX
\RequirePackage[pdftex,bookmarks=true]{hyperref}
\hypersetup{ %
pdfauthor = {\@author},
pdftitle = {\@title},
pdfcreator = {LaTeX with hyperref package},
pdfproducer = {dvips + ps2pdf}
}
\pdfadjustspacing=1
\fi

% Set up counters for problems and subsections

\newcounter{ProblemNum}
\newcounter{SubProblemNum}[ProblemNum]

\renewcommand{\theProblemNum}{\arabic{ProblemNum}}
\renewcommand{\theSubProblemNum}{\alph{SubProblemNum}}


\newcommand*{\anyproblem}[1]{\newpage\subsection*{#1}}
\newcommand*{\problem}[1]{\stepcounter{ProblemNum} %
\anyproblem{Problem \theProblemNum. \; #1}}
\newcommand*{\soln}[1]{\subsubsection*{#1}}
\newcommand*{\solution}{\soln{Solution}}
\renewcommand*{\part}{\stepcounter{SubProblemNum} %
\soln{Part (\theSubProblemNum)}}

\renewcommand{\theenumi}{(\alph{enumi})}
\renewcommand{\labelenumi}{\theenumi}
\renewcommand{\theenumii}{\roman{enumii}}

% \def\problemmark{}

% % Typesetting problems

% % \newcommand*{\prob}[1]{\newpage \noindent \textbf{\Large #1}}
% % \newcommand*{\problem}[1]{\stepcounter{ProblemNum} \prob{Problem %
% % \theProblemNum.}}
% % \newcommand*{\soln}[1]{\\ \noindent \textbf{\Large #1}}
% % \newcommand*{\solution}{\soln{Solution}}
% % \renewcommand*{\part}{\\ \noindent \stepcounter{SubProblemNum} %
% % \textbf{\Large Part (\theSubProblemNum)}}

% \newcommand\problem{\@startsection{problem}{1}{\z@}%
% {-3.25ex \@plus -1ex \@minus -.2ex}%
% {1.5ex \@plus .2ex}%
% {\normalfont\large\bfseries}}

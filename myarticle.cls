\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myarticle}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper, 11pt]{article}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					lokaliseerimine
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[estonian]{babel}
\usepackage[T2A,T1]{fontenc}
\usepackage[utf8]{inputenc}
% end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					valemid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{amsmath, amssymb, amsthm}
\numberwithin{equation}{section}

% yhikud
\usepackage{siunitx}
\sisetup{
    list-final-separator = { ja },
    list-pair-separator = { ja },
    range-phrase = { kuni },
    output-decimal-marker = {,},
    exponent-product = \cdot,
    inter-unit-product = \ensuremath{{\cdot}}
}
% end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					joonised, tabelid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{graphicx, wrapfig}
\graphicspath{{./Joonised/}}
\usepackage{float}
\usepackage{multirow}          	%tabelistes kombineerida mitu rida

\setlength{\abovecaptionskip}{6pt}
\setlength{\belowcaptionskip}{6pt}
\setlength{\intextsep}{10pt}
% end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					viitamine
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[backend=biber, style=ieee, citestyle=numeric-comp]{biblatex}
\usepackage{csquotes}
\addbibresource{kirjandus.bib}
% end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					vormistus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{microtype}

% värvid
\usepackage[dvipsnames]{xcolor}

% veerised ja mõõdud
\usepackage{geometry}
\geometry{left=30mm, right=25mm, top=25mm, bottom=25mm}

\setlength{\parskip}{11pt}
\setlength{\parindent}{0pt}
\setlength{\baselineskip}{11pt}
\renewcommand{\baselinestretch}{1.2}
\emergencystretch=1em

% pealkirjad
\usepackage{titlesec}
\titleformat{\section}[block]{\Large\bfseries}{\thesection.}{0.5em}{}[]
\titleformat{\subsection}[block]{\large\bfseries}{\thesubsection.}{0.5em}{}[]
\titleformat{\subsubsection}[block]{\normalsize\bfseries}{\thesubsubsection.}{0.5em}{}[]

% lingid
\usepackage[hidelinks]{hyperref}

% listid
\usepackage{enumitem}
\setlist[itemize]{itemsep=0pt, topsep=0pt}
\setlist[enumerate]{itemsep=0pt, topsep=0pt} 
% end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					tiitelleht
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{xstring}
\makeatletter
\def\studentcode#1{\gdef\@studentcode{#1}}
\def\@studentcode{\@latex@warning@no@line{No \noexpand\studentcode given}}

\def\supervisor#1{\gdef\@supervisor{#1}}
\def\@supervisor{\@latex@warning@no@line{No \noexpand\supervisor given}}

\def\type#1{\gdef\@type{#1}}
\def\@type{\@latex@warning@no@line{No \noexpand\type given}}

\def\institute#1{\gdef\@institute{#1}}
\def\@institute{\@latex@warning@no@line{No \noexpand\institute given}}

\renewcommand{\maketitle}{
	\begin{titlepage}
		\begin{center}
			Tallinna Tehnikaülikool \\
			\@institute
					
			\vspace{70mm}	
			\begin{Large}
				\textbf{\@title}
			\end{Large} \\
				\@type
					
			\vspace{40mm}
			\hfill
			\parbox{60mm}{	Üliõpilane: \@author \\
							Üliõpilase kood: \@studentcode \\
							Õppejõud: \@supervisor \\
							Kuupäev: \@date}
			
			\vfill
			Tallinn \StrRight{\@date}{4}
			
		\end{center}
	\end{titlepage}
}
\makeatother
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					matemaatika
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\D}{\ensuremath{\partial}}
\renewcommand{\d}{\ensuremath{\textrm{d}}}
\newcommand{\rvec}[1]{\ensuremath{\mathbf{#1}}}
\newcommand{\T}{\ensuremath{\intercal}}
\newcommand{\cov}{\ensuremath{\textrm{cov}}}
\newcommand{\corr}{\ensuremath{\textrm{corr}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					metadata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{\@latex@warning@no@line{No \noexpand\keywords given}}

\hypersetup
{
    pdfauthor={\@author},
    pdfsubject={\@title},
    pdfkeywords={\@keywords}
}
\makeatother


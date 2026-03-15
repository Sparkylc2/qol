\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icl_flashcards}[2025/09/21 Custom Flashcard Class]


\LoadClass[11pt]{article}


\RequirePackage{geometry}
\RequirePackage{array}
\RequirePackage{calc}
\RequirePackage{xparse}
\RequirePackage{adjustbox}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{tabularx}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{bm}
\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage[math-style=TeX]{unicode-math}
\RequirePackage{lete-sans-math}
% \RequirePackage{lete-sans-math}
% \setmainfont{SF Pro Display Light}
% \setmainfont{Lato}[UprightFont=*-Light]
\setmainfont{Lato}

% \setmainfont{SF Pro Text}[
% 	UprightFont = *-Light,
% 	BoldFont = *-Semibold,
% ]

% \setmathfont{SF Pro Text Light}[
% range={up/{num,Latin,latin,Greek,greek}},
% script-features={},
% sscript-features={}
% ]
% \setmathfont{SF Pro Text Light Italic}[
% range={it/{Latin,latin,Greek,greek}},
% script-features={},
% sscript-features={}
% ]

\newfontface{\letefont}{Lete Sans Math}

\newcommand{\fsym}[1]{\text{\letefont#1}}

% ---------------





\definecolor{darkbg}{HTML}{181616}
\definecolor{kgblack}{HTML}{0d0c0c}
\definecolor{kgred}{HTML}{c4746e}
\definecolor{kggreen}{HTML}{8a9a7b}
\definecolor{kgyellow}{HTML}{c4b28a}
\definecolor{kgblue}{HTML}{8ba4b0}
\definecolor{kgmagenta}{HTML}{a292a3}
\definecolor{kgcyan}{HTML}{8ea4a2}
\definecolor{kgwhite}{HTML}{C5C9C5}

% Bright variants
\definecolor{kgbrightblack}{HTML}{a6a69c}
\definecolor{kgbrightred}{HTML}{E46876}
\definecolor{kgbrightgreen}{HTML}{87a987}
\definecolor{kgbrightyellow}{HTML}{e6c384}
\definecolor{kgbrightblue}{HTML}{7fb4ca}
\definecolor{kgbrightmagenta}{HTML}{938aa9}
\definecolor{kgbrightcyan}{HTML}{7aa89f}
\definecolor{kgbrightwhite}{HTML}{c5c9c5}

% Additional accent colors
\definecolor{kgorange}{HTML}{b6927b}
\definecolor{kgpurple}{HTML}{957fb8}

\pagecolor{darkbg}
\color{kgwhite}



\geometry{margin=0in}
\pagestyle{empty}


\newcounter{cardsperpage}
\setcounter{cardsperpage}{4}


\NewDocumentCommand{\setcardsperpage}{m}{%
	\setcounter{cardsperpage}{#1}%
}

\newlength{\cardheight}
\newlength{\cardwidth}
\newlength{\textpadding}
\setlength{\textpadding}{5pt}

\NewDocumentCommand{\updatecardsize}{}{%
	\setlength{\cardheight}{\textheight / \thecardsperpage -2pt }%
	\setlength{\cardwidth}{\textwidth}%
}

\AtBeginDocument{\updatecardsize}

\newcounter{cardsonpage}
\setcounter{cardsonpage}{0}

\NewDocumentEnvironment{flashcardenv}{m m}{%
	\ifnum\thecardsonpage=\thecardsperpage
		\newpage
		\setcounter{cardsonpage}{0}%
	\fi

	\ifnum\thecardsonpage>0
		\noindent\rule{\textwidth}{0.4pt}%
	\fi

	\noindent
	\begin{tabularx}{\cardwidth}{X|X}
		\begin{minipage}[t][\cardheight - 2\textpadding][c]{\linewidth - 2\textpadding}
			\vspace{\textpadding}
			\centering
			\adjustbox{width=\linewidth, totalheight=\cardheight - 4\textpadding, keepaspectratio}{%
				\begin{minipage}{\linewidth}
					\centering
					#1
				\end{minipage}%
			}
			\vspace{\textpadding}
		\end{minipage}
		 &
		\begin{minipage}[t][\cardheight - 2\textpadding][c]{\linewidth - 2\textpadding}
			\vspace{\textpadding}
			\centering
			\adjustbox{width=\linewidth, totalheight=\cardheight - 4\textpadding, keepaspectratio}{%
				\begin{minipage}{\linewidth}
					\centering
					#2
				\end{minipage}%
			}
			\vspace{\textpadding}
		\end{minipage}
		\\
	\end{tabularx}

	\stepcounter{cardsonpage}%
}{%
}

\NewDocumentEnvironment{figflashcardenv}{m m}{%
	\ifnum\thecardsonpage=\thecardsperpage
		\newpage
		\setcounter{cardsonpage}{0}%
	\fi

	\ifnum\thecardsonpage>0
		\noindent\rule{\textwidth}{0.4pt}%
	\fi

	\noindent
	\begin{tabularx}{\cardwidth}{X|X}
		\begin{minipage}[t][\cardheight - 2\textpadding][c]{\linewidth - 2\textpadding}
			\vspace{\textpadding}
			\centering
			\adjustbox{width=\linewidth, totalheight=\cardheight - 4\textpadding, keepaspectratio}{%
				\begin{minipage}{\linewidth}
					\centering
					#1
				\end{minipage}%
			}
			\vspace{\textpadding}
		\end{minipage}
		 &
		\vspace{\textpadding}
		\hspace{\textpadding}
		\begin{figure}
			\begin{center}
				#2
			\end{center}
		\end{figure}
		\hspace{\textpadding}
		\\
	\end{tabularx}

	\stepcounter{cardsonpage}%
}{%
}




\NewDocumentCommand{\flashcard}{m m}{%
	\begin{flashcardenv}{#1}{#2}
	\end{flashcardenv}%
}

\NewDocumentCommand{\figcard}{m m}{%
	\begin{figflashcardenv}{#1}{#2}
	\end{figflashcardenv}%

}
\endinput

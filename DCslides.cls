\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DCslides}[2023/01/16 My Beamer template as a LaTeX class]

\LoadClass[compress,usepdftitle=false,xcolor={pdftex,svgnames},table,aspectratio=169]{beamer}

\definecolor{blockcolor}{RGB}{250, 250, 200}
\definecolor{dgreen}{RGB}{0,160,0}

\setbeamercolor{normal text}{fg=black}
\setbeamercolor{frametitle}{bg=LightGrey, fg=black}
\setbeamercolor{title}{fg=black, bg=white}
\setbeamercolor{block}{fg=black, bg=blockcolor}
\setbeamercolor{sticky}{fg=black, bg=blockcolor}
\setbeamercolor*{block title alerted}{fg=black, bg=red!40}
\setbeamercolor*{block body alerted}{fg=black, bg=red!25}
\setbeamercolor{alerted text}{fg=blue, bg=white}
\setbeamercolor*{block title example}{fg=blue!50, bg=blue!10}
\setbeamercolor*{block body example}{fg= blue, bg=blue!5}
\setbeamercolor{itemize item}{fg=gray}
\setbeamercolor{itemize subitem}{fg=gray}
\setbeamercolor{itemize subsubitem}{fg=gray}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{footline}[frame number]
\setbeamertemplate{bibliography entry title}{}
\setbeamertemplate{bibliography entry location}{}
\setbeamertemplate{bibliography entry note}{}

\usefonttheme{professionalfonts}
\usebeamercolor[fg]{title in head/foot}
\usefonttheme[onlylarge]{structurebold}
\RequirePackage{microtype}

\setbeamerfont*{frametitle}{size=\normalsize,series=\bfseries}
\setbeamerfont{frametitle}{size=\LARGE}
\setbeamerfont{title}{size=\Huge}
\setbeamerfont{author}{size=\Large}
\setbeamerfont{institute}{size=\large}
\setbeamerfont{alerted text}{series=\bfseries}


\setbeamertemplate{itemize item}{\scriptsize\raise1.25pt\hbox{\textbullet}}
\setbeamertemplate{itemize subitem}{\tiny\raise1.5pt\hbox{\textbf{--}}}
\setbeamertemplate{itemize subsubitem}{\tiny\raise1.5pt\hbox{\textbf{--}}}
\setbeamertemplate{enumerate item}{\insertenumlabel.}
\setbeamertemplate{enumerate subitem}{\insertenumlabel.\insertsubenumlabel}
\setbeamertemplate{enumerate subsubitem}{\insertenumlabel.\insertsubenumlabel.\insertsubsubenumlabel}
\setbeamertemplate{enumerate mini template}{\insertenumlabel}

\RequirePackage[skins]{tcolorbox}

\newtcolorbox{sticky}[1][]
{%
  enhanced,
  center upper,
  fontupper=\strut,
  drop fuzzy shadow southeast,
  boxrule=0pt,
  sharp corners,
  colframe=yellow!80!black,
  colback=yellow!10,
  #1
}

\newtcolorbox{infobox}[1][]
{%
  enhanced,
  %center upper,
  %drop fuzzy shadow southeast,
  boxrule=0.4pt,
  sharp corners,
  colframe=red!80!black,
  colback=red!10,
  #1
}

\newtcolorbox{bluebox}[1][]
{%
  enhanced,
  %center upper,
  %drop fuzzy shadow southeast,
  boxrule=0.4pt,
  sharp corners,
  colframe=blue!80!black,
  colback=blue!10,
  #1
}

\newtcolorbox{greenbox}[1][]
{%
  enhanced,
  %center upper,
  %drop fuzzy shadow southeast,
  boxrule=0pt,
  sharp corners,
  colframe=green!80!black,
  colback=green!10,
  #1
}
\RequirePackage[framemethod=TikZ]{mdframed}

\newmdenv[
  topline=false,
  bottomline=false,
  rightline=false,
  skipabove=\topsep,
  skipbelow=\topsep,
  linewidth=1pt,
  linecolor=cyan
]{titlerule}

\setbeamertemplate{title page}[default][left,colsep=-4bp,rounded=true]

\setbeamertemplate{frametitle}{%
  \begin{titlerule}
    \usebeamerfont{frametitle}\insertframetitle\strut%
    \vskip-.2\baselineskip%
    % \leaders\vrule width \paperwidth\vskip0.4pt%
    \vskip0pt%
    \nointerlineskip
  \end{titlerule}
}

\RequirePackage{bm}

\newcommand\mailto[1]{\href{mailto: #1}{#1}}
\newcommand\redbf[1]{{\color{red}\textbf{#1}}}
\newcommand\iitem{{\scriptsize\raisebox{1.25pt}{\color{gray}\textbullet}}\;\,}


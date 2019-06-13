\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coding-resume}[2016/06/05 Coding Resume]
\LoadClass{article}

\RequirePackage[utf8]{inputenc}

% Configure page margins with geometry
\RequirePackage{geometry}
%\geometry{left=.25in, top=1cm, right=.25in, bottom=0cm, footskip=0in}
\geometry{left=.25in, right=.25in, top=2cm, bottom=0cm, footskip=0in}
% Header/Footer set to empty
\pagestyle{empty}


% Spacing variables for \begin{itemize}[...]
%Previous:
%\newcommand{\begindotitems}{\begin{itemize}[itemsep=-.35em]}
%\newcommand{\begindashitems}{\begin{itemize}[itemsep=-.15em,topsep=-.5em]}
\newenvironment{itemizeDot}{\begin{itemize}[itemsep=-.35em]}{\end{itemize}}
\newenvironment{itemizeDash}{\begin{itemize}[itemsep=-.15em,topsep=-.5em]}{\end{itemize}}


% Helvetica in text and math mode as default font
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage[scaled=1]{helvet}
\RequirePackage[helvet]{sfmath}
\everymath={\sf}

% Colors
\RequirePackage{xcolor}
\definecolor{darkgray}{HTML}{444444}
\definecolor{lightgray}{HTML}{CCCCCC}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{lightblue}{HTML}{6CE0F1}
\definecolor{blue}{HTML}{0000FF}
%\definecolor{white}{HTML}{FFFFFF}

\RequirePackage{titlesec} % required for some features of \titleformat

% Use to draw horizontal line with specific thickness:
% - Set rule before
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}
% - Center title and hrule on each side
\newcommand*\ruleline[1]{\par\noindent\raisebox{.8ex}{\makebox[\linewidth]{\hrulefill\hspace{1ex}\raisebox{-.8ex}{#1}\hspace{1ex}\hrulefill}}}
% - Horizontal rule after title at line base
\RequirePackage{xhfill}
\newcommand\ruleafter[1]{#1~\xrfill[0ex]{1pt}[darkgray]}




% Custom \section
\titleformat{\section}
  % Make the \section headers large (\Large),
  % small capitals (\scshape) and left aligned (\raggedright)
  {\Large\raggedright\bfseries\sffamily}
  % Can be used to give a prefix to all sections, like 'Section ...'
  {}{0em}                      
  % Can be used to insert code before the heading
  %{\ruleafter}
  {}
  % Inserts a horizontal line after the heading
  %[\titlerule]

\titlespacing\section{0pt}{2pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

% \subsection
\titleformat{\subsection}
  {\large\raggedright\sffamily}
  {}{0em}
  {}

\titlespacing\subsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

% Contact Header
% Name
\newcommand{\name}[1]{
  \centerline{\large{#1}}
}

% Contact
\newcommand{\address}[3]{
  \centerline{
    \textit{
      \textcolor{darkgray}{
        #1 {\normalsize\textperiodcentered} #2 {\normalsize\textperiodcentered} #3 {\normalsize}
      }
    }
  }
}



\newcommand{\emailphone}[2]{
  \centerline{
    #1 {\normalsize} | #2 {\normalsize}
  }
}


\newcommand{\contactfull}[5]{
  \centerline{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4 \ {\Large} #5
  }
}




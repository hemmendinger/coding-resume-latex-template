\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coding-resume}[2016/06/05 Coding Resume]
\LoadClass{article}

\RequirePackage[utf8]{inputenc}

% Configure page margins with geometry
\RequirePackage{geometry}
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}

% Header/Footer set to empty
\pagestyle{empty}

% Colors
\RequirePackage{xcolor}
\definecolor{darkgray}{HTML}{444444}
\definecolor{lightgray}{HTML}{CCCCCC}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{blue}{HTML}{6CE0F1}

\RequirePackage{titlesec}

% Use to draw horizontal line with specific thickness:
% - set rule before
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}
% - center title and hrule on each side
\newcommand*\ruleline[1]{\par\noindent\raisebox{.8ex}{\makebox[\linewidth]{\hrulefill\hspace{1ex}\raisebox{-.8ex}{#1}\hspace{1ex}\hrulefill}}}

\RequirePackage{titlesec} 
\RequirePackage{xhfill}

% Horizontal rule after title at base
\newcommand\ruleafter[1]{#1~\xrfill[0ex]{1pt}[darkgray]}

% Custom \section
\titleformat{\section}
  % Make the \section headers large (\Large),
  % small capitals (\scshape) and left aligned (\raggedright)
  {\Large\raggedright\sffamily}
  % Can be used to give a prefix to all sections, like 'Section ...'
  {}{0em}                      
  % Can be used to insert code before the heading
  {\ruleafter}                           
  % Inserts a horizontal line after the heading
%  [\titlerule]



\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}



% Use Helvetica in text and math mode 
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage[scaled=1]{helvet}
\RequirePackage[helvet]{sfmath}
\everymath={\sf}



% Contact Header
% Name
\newcommand{\name}[1]{
  \centerline{\Large{#1}}
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


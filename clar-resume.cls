%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{clar-resume}[2018/06/05 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=.75cm, vmargin=0.75cm]{geometry}
\usepackage{hyperref}
\usepackage{enumitem}

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A} 
\definecolor{subheadings}{HTML}{333333}
\definecolor{date}{HTML}{666666} 

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} 
\usepackage{sourcesanspro}

\setmainfont[Color=primary]{Source Sans Pro Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[3]{ % Defines the command for the main heading
\centering{ 
\fontsize{38pt}{46pt}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 %
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2 % 
} \\[5pt] % 
\centering{ % Center the contact information
\color{headings} % 
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont #3
    \vspace{-1pt}
} % Contact information font
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-5pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{6pt}} % Defines a command to add a set amount of space after sections and subsections
\newcommand{\smallspace}{\vspace{4pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{16pt}{18pt}\selectfont \raggedright\uppercase}{}{0em}{} 

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings}\fontspec{Source Sans Pro}\fontsize{10.5pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{} 

\newcommand{\runsubsection}[1]{ % 
\color{subheadings}\fontspec{Source Sans Pro}\fontsize{10pt}{12pt}\selectfont\bfseries\uppercase {#1}\normalfont}

\newcommand{\school}[1]{ % 
\color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{12pt}\selectfont\scshape {#1 \\} \normalfont}

\newcommand{\job}[1]{ %
\color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{9.5pt}{11pt}\selectfont\scshape{#1}\normalfont}

\newcommand{\descript}[1]{ 
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{ 
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\dates}[1]{ % 
\color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{9.5pt}{11pt}\selectfont {#1\\} \normalfont}

\newcommand{\grade}[1]{ %
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

\newcommand{\cvparagraph}[1]{ 
\color{primary}\raggedright\fontspec{Source Sans Pro}\fontsize{10.5pt}{12pt}\selectfont {#1 \\} \normalfont}

\newcommand{\lab}[1]{%
\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{9.5pt}{11pt}\selectfont {#1} \normalfont\color{primary}}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}[leftmargin=.2cm]\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\newenvironment{labwork} %
  {\renewcommand{\descriptionlabel}[1]{\normalfont\scshape{##1}}%
   \begin{description}[noitemsep,nosep,align=left,labelsep=0pt,leftmargin=2em]}
  {\end{description}}
  

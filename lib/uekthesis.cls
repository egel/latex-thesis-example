%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  FileName:     uekthesis.cls
%  Author:       Maciej Sypień (maciej.sypien@gmail.com)
%  University:   Uniwersytet Ekonomiczny w Krakowie
%  This Class is based on aghdpl.cls
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{### uekthesis.cls --- ver. 1.0.0 --- Maciej Sypień ###}

\newif\ifpdflatex\pdflatexfalse
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lib/uekthesis}[2014/16/12
    LaTeX class for thesis documents]
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\LoadClass[a4paper, 12pt, oneside, openright]{report}

%##############################################################################
% Definicje zmiennych
%##############################################################################
\def\globalFullAuthor#1        {\gdef\@globalFullAuthor{#1}}        % Pełna nazwa autora pracy
\def\globalShortAuthor#1       {\gdef\@globalShortAuthor{#1}}       % Autor - zwięzła forma wydruku
\def\globalFullTitle#1         {\gdef\@globalFullTitle{#1}}         % Pełny tytuł pracy
\def\globalShortTitle#1        {\gdef\@globalShortTitle{#1}}        % Krótki, zwięzły tytuł pracy # najlepiej aby nie zawierał komend LaTeXa
\def\globalFullUniversity#1    {\gdef\@globalFullUniversity{#1}}    % Pełna nazwa uniwersytetu
\def\globalShortUniversity#1   {\gdef\@globalShortUniversity{#1}}   % Pełna nazwa uniwersytetu
\def\globalDepartment#1        {\gdef\@globalDepartment{#1}}        % Wydział
\def\globalThesisType#1        {\gdef\@globalThesisType{#1}}        % Typ pracy dyplomowej
\def\globalSupervisor#1        {\gdef\@globalSupervisor{#1}}        % Promotor
\def\globalAcknowledgements#1  {\gdef\@globalAcknowledgements{#1}}  % Podziękowania
\def\globalDegreeprogramme#1   {\gdef\@globalDegreeprogramme{#1}}   % Kierunek studiów
\def\globalFileVersion#1       {\gdef\@globalFileVersion{#1}}       % Wersja pracy
\def\globalIndexNumber#1       {\gdef\@globalIndexNumber{#1}}       % Numer indeksu studneta
\def\globalCity#1              {\gdef\@globalCity{#1}}              % Miasto
\def\globalYear#1              {\gdef\@globalYear{#1}}              % Rok

% zestaw słów kluczowych dla pracy
\def\globalKeywords#1  {\gdef\@globalKeywords{#1}}

% zdefiniowanie kilku zmiennych do umieszczenia w tekscie
\def\printFullAuthor{\@globalFullAuthor}   % Display
\def\printFullTitle{\@globalFullTitle}     % Display
\def\printShortTitle{\@globalShortTitle}   % Display
\def\printThesisType{\@globalThesisType}   % Display
\def\printKeywords{\@globalKeywords}       % Display

%##############################################################################
% Ustawienie linkowania dokumetu oraz elementów wyświetlania pdfa
% (Rozdział 4.7.4 z latex w 129 minut)
%##############################################################################
\AtBeginDocument{%
  \hypersetup{
    unicode=true,
    pdfencoding=unicode,
    pdfencoding=auto,
    pdftoolbar=true,        % show Acrobat’s toolbar?
    pdfmenubar=true,        % show Acrobat’s menu?
    pdffitwindow=false,     % window fit to page when opened
    pdfstartview={FitH},    % fits the width of the page to the window
    pdftitle={\printShortTitle},         % title
    pdfauthor={\printFullAuthor},        % author
    pdfsubject={\printThesisType},       % subject of the document
    pdfcreator={\printFullAuthor},       % creator of the document
    pdfproducer={\printFullAuthor},      % producer of the document
    pdfkeywords={\printKeywords},        % list of keywords
    pdfnewwindow=true,      % links in new window
    linktoc=page,           % Ustawienie linków dla bibliografi (none, all, page, section)
    colorlinks=true,        % false: boxed links; true: colored links
    linkcolor=Maroon,       % color of internal links (change box color with linkbordercolor)
    citecolor=PineGreen,    % color of links to bibliography
    filecolor=Magenta,      % color of file links
    urlcolor=MidnightBlue,  % color of external links
  }
}

%##############################################################################
% Wymagane pakiety
%##############################################################################
\RequirePackage[autostyle=true]{csquotes}              %
\RequirePackage[T1]{fontenc}           % Nowy zestaw czcionek
\RequirePackage{times}                 % Times - Czcionki wektorowe
\RequirePackage{graphicx}              % Wstawianie grafiki
\RequirePackage{geometry}              %
\RequirePackage[usenames]{color}       % Palety kolorów zdefionwanych
\RequirePackage[dvipsnames]{xcolor}    % Zestaw kolorów
\RequirePackage{fancyhdr}              %
\RequirePackage[hyphens]{url}          % Pakiet url + dzielenie myślników
\RequirePackage{titlesec}              %
\RequirePackage{tocloft}               %
\RequirePackage{amsmath}               % Moduł matematyczny AMS
\RequirePackage{amsfonts}              % pakiet czcionek AMS
\RequirePackage{amssymb}               % Symbole matematyczne AMS
\RequirePackage{amsthm}                % Definicje matematyczne AMS
\RequirePackage[pdftex]{hyperref}      % Ustawienie linkowania dokumetu oraz elementów wyświetlania pdfa (4.7.4 z latex w 129 minut)
\RequirePackage{lmodern}               % Font: modern latin
\RequirePackage{courier}               % Font: courier
\RequirePackage{xpatch}                % !!! Required for biblatex settings
\RequirePackage[polish]{babel}          %
\RequirePackage{polski}                %

\RequirePackage{indentfirst}           % uzyskanie wcięcia przy pierwszym akapicie
\RequirePackage{nameref}               % pakiet referencji do pełnych nazw rozdziałów
\RequirePackage{enumerate}             % pakiet numerowania 1,2,3...etc
\RequirePackage{enumitem}
\RequirePackage{multirow}              % pakiet dla łaczenia wierszy w tabelach
\RequirePackage{longtable}             % pakiet wspomagający długie tabele
\RequirePackage{tabularx}               % dla pełnej długości tabeli (textwidth)
\RequirePackage{tabu}
\RequirePackage{hhline}                % pakiet dla łaczenia kolumn w tabelach
\RequirePackage{listings}              % pakiet dla kodów zródłowych
\RequirePackage{indentfirst}           % uzyskanie wcięcia przy pierwszym akapicie
\RequirePackage{chngcntr}              % pakiet który definiuje komendy \coun­ter­within oraz \coun­ter­with­out
\RequirePackage{gensymb}               % pakiet który definiuje znaki m.in. \degree, \textdegree
\RequirePackage{cases}                 % pakiet numeracji równań z 'numcases'

%##############################################################################
% set geometry for two-side and oneside
\geometry{lmargin=30mm, rmargin=20mm, tmargin=30mm, bmargin=30mm, foot=10mm, head=10mm}

%##############################################################################
% Thesis oneside OPTION
\DeclareOption{twoside}{
  \geometry{twoside=true,lmargin=3cm,rmargin=3cm,bindingoffset=0cm}
}

%##############################################################################
% set geometry for two-side; later is declaration for oneside
\linespread{1.3}

%##############################################################################
% znak rozpoczynający każdą listę wypunktową
\renewcommand{\labelitemi}{--}

%##############################################################################
% definiuje dolne wykończenie strony
\def\thesisHeaders{

%    \fancypagestyle{plain}{%
%        \fancyhf{}                          % clear all header and footer fields
%        \renewcommand{\headrulewidth}{0pt}
%        \renewcommand{\footrulewidth}{0pt}
%    }
    \fancyfoot[LE,RO]{\small \@globalShortAuthor\quad\textit{\@globalShortTitle}}
}

%##############################################################################
% Obligatory supervisor
\def\addSupervisor{
    \begin{flushright}
    pod kierunkiem\quad\\
    \@globalSupervisor\quad
    \end{flushright}
}

%##############################################################################
% Define some options
\def\addVersion{}
\def\addIndexNumber{}

\DeclareOption{fileVersion}{
  \def\addVersion{ / wersja: \@globalFileVersion}
}

\DeclareOption{indexNumber}{
  %\def\addIndexNumber{\\[-1mm] Nr. indeksu:  &  {\itshape \@globalIndexNumber}}
  \def\addIndexNumber{
    \begin{center}
    Nr. indeksu:
    \@globalIndexNumber
    \end{center}
  }
}

%##############################################################################
% for English

%\DeclareOption{en}{
%  \def\thesisheaders{
%    \fancyfoot[LE,RO]{\small \@globalShortAuthor\quad\textit{\@shortTitleEN}}
%  }

%  \def\thesistable{
%    \begin{tabular}{p{45mm}l}
%    Author: & {\itshape \@author}\\[-1mm]
%    Degree programme: & {\itshape \@globalDegreeprogramme}\\[-1mm]
%    Supervisor: & {\itshape \@globalSupervisor}\\
%    \end{tabular}
%  }
%}


%##############################################################################
% Statement of the Author
%##############################################################################
\def\statementOfTheAuthor{
    {\large\itshape O\'swiadczam, \'swiadomy odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze \mbox{niniejsz\k{a}} prac\k{e} dyplomow\k{a} wykona\l{}em osobi\'scie i samodzielnie oraz nie korzysta\l{}em ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}
}

\DeclareOption{male}{
  \def\statementOfTheAuthor{
    {\large\itshape O\'swiadczam, \'swiadomy odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze \mbox{niniejsz\k{a}} prac\k{e} dyplomow\k{a} wykona\l{}em osobi\'scie i samodzielnie oraz nie korzysta\l{}em ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}
  }
}

\DeclareOption{female}{
  \def\statementOfTheAuthor{
    {\large\itshape O\'swiadczam, \'swiadoma odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze \mbox{niniejsz\k{a}} prac\k{e} dyplomow\k{a} wykona\l{}am osobi\'scie i samodzielnie oraz nie korzysta\l{}am ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}
  }
}

%##############################################################################
\ProcessOptions

\newcommand{\titlepages}{ % Ustawienia stron tytułowych

  \newpage \titlepage
  \begin{center}
    {
        {\sffamily\LARGE\scshape\@globalFullUniversity}\\
        \vspace*{2mm}
        {\large\scshape\@globalDepartment}
    }
    \vspace*{15mm}

    \includegraphics[scale=0.1]{university-logo}
    \vspace*{15mm}

    {\LARGE\@globalFullAuthor}
    {\large\addIndexNumber}

    \vspace*{10mm}

    {\LARGE\bfseries\@globalFullTitle}\\
    \vspace*{10mm}
    {\large \@globalThesisType \addVersion}\\
    \vspace*{10mm}
  \end{center}

  %\noindent {\sffamily \thesistable}

  {\large\addSupervisor}

  \null
  \vfill
  \centerline{\large{\@globalCity~\@globalYear}}
  \clearpage

  \titlepage
  \vspace*{10mm}
  \statementOfTheAuthor

  \vspace*{20mm}
  \hfill \dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots
  \quad\quad\quad\quad
  \clearpage

  \titlepage
  \vspace*{15cm} \vfill
  \begin{flushright}
    \begin{minipage}[!h]{10cm}
      {\large\itshape \@globalAcknowledgements}
    \end{minipage}
  \end{flushright}
  \clearpage

  \setcounter{page}{4}
}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\headrulewidth}{0.2pt}
\renewcommand{\footrulewidth}{0.2pt}
\fancyhf{}
\fancyhead{}
%\fancyhead[L]{\slshape{\small \rightmark}}
\fancyhead[RE,LO]{\slshape{\small \rightmark}}
%\fancyhead[R]{\bfseries \thepage}
\fancyhead[RO,LE]{\bfseries \thepage}

\thesisHeaders

\frenchspacing
\sloppy
\widowpenalty=9999
\clubpenalty=9996
\brokenpenalty=4991
\predisplaypenalty=10000
\postdisplaypenalty=1549
\displaywidowpenalty=1602
\flushbottom

%##############################################################################
% Ustawienia parametrów dla tytułów rozdziałów, podrozdziałów, itd.
%##############################################################################

%\titleformat{\chapter}[block]
%  {\bfseries\Huge}{\filright \LARGE\thechapter. }{0ex}{}

% odstępy: lewy, góra, dół
\titlespacing{\chapter}{0pt}{17mm}{19mm}

\titleformat{\section}[block]
  {\bfseries\Large}{\filright \Large\thesection. }{0ex}{}
\titlespacing{\section}{0mm}{8mm plus 0mm minus 1mm}{4mm plus 0mm minus 1mm}

\titleformat{\subsection}[block]
  {\bfseries\large}{\filright \large\thesubsection. }{0ex}{}
\titlespacing{\subsection}{0mm}{6mm}{2.5mm}

\titleformat{\subsubsection}[block]
  {\bfseries\normalsize}{\filright \normalsize\thesubsubsection. }{0ex}{}
\titlespacing{\subsubsection}{0mm}{3mm}{1.5mm}


%##############################################################################
% Ustawienia parametrów generowania spisu treści i spisu rysunków
%##############################################################################

\renewcommand{\cfttoctitlefont}{\bfseries\Large}
\renewcommand{\cftbeforetoctitleskip}{20mm}
\renewcommand{\cftaftertoctitleskip}{19mm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftparskip}{2pt}
\setlength{\cftbeforechapskip}{0mm}
\renewcommand{\cftchappagefont}{\normalsize}

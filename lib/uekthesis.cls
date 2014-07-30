%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FileName:     uekthesis.cls  (LaTeX Document class option "uekthesis")
% Author:       Maciej Sypień  (maciej.sypien@gmail.com)
% University:   Uniwersytet Ekonomiczny w Krakowie
% This Class is based on aghdpl.cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{### uekthesis.cls --- ver. 1.0.0 --- Maciej Sypień ###}

\newif\ifpdflatex\pdflatexfalse
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uekthesis}
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\LoadClass[a4paper,twoside,openright]{report}

%##############################################################################
% Definicje zmiennych
%##############################################################################
\def\globalFullAuthor#1      {\gdef\@globalFullAuthor{#1}}        % Pełna nazwa autora pracy
\def\globalShortAuthor#1     {\gdef\@globalShortAuthor{#1}}       % Autor - zwięzła forma wydruku
\def\globalFullTitle#1       {\gdef\@globalFullTitle{#1}}         % Pełny tytuł pracy
\def\globalShortTitle#1      {\gdef\@globalShortTitle{#1}}        % Krótki, zwięzły tytuł pracy
\def\globalFullUniversity#1  {\gdef\@globalFullUniversity{#1}}    % Pełna nazwa uniwersytetu
\def\globalShortUniversity#1 {\gdef\@globalShortUniversity{#1}}   % Pełna nazwa uniwersytetu
\def\globalDepartment#1      {\gdef\@globalDepartment{#1}}        % Wydział
\def\globalThesisType#1            {\gdef\@globalThesisType{#1}}            % Typ pracy dyplomowej
\def\globalSupervisor#1            {\gdef\@globalSupervisor{#1}}            % Promotor
\def\globalAcknowledgements#1      {\gdef\@globalAcknowledgements{#1}}      % Podziękowania
\def\globalDegreeprogramme#1       {\gdef\@globalDegreeprogramme{#1}}       % Kierunek studiów
\def\globalVersion#1               {\gdef\@globalVersion{#1}}               % Wersja pracy
\def\globalCity#1                  {\gdef\@globalCity{#1}}                  % Miasto
\def\globalYear#1                  {\gdef\@globalYear{#1}}                  % Rok

% zestaw kilku słów kluczowych dla pracy
\def\globalKeywordA#1  {\gdef\@globalKeywordA{#1}}
\def\globalKeywordB#1  {\gdef\@globalKeywordB{#1}}
\def\globalKeywordC#1  {\gdef\@globalKeywordC{#1}}
\def\globalKeywordD#1  {\gdef\@globalKeywordD{#1}}
\def\globalKeywordE#1  {\gdef\@globalKeywordE{#1}}
\def\globalKeywordF#1  {\gdef\@globalKeywordF{#1}}
\def\globalKeywordG#1  {\gdef\@globalKeywordG{#1}}

% zdefiniowanie kilku zmiennych do umieszczenia w tekscie
\def\printFullAuthor{\@globalFullAuthor} % Display author
\def\printFullTitle{\@globalFullTitle} % Display author
\def\printThesisType{\@globalThesisType} % Display author

\def\printKeywordA{\@globalKeywordA} % Display keyword
\def\printKeywordB{\@globalKeywordB} % Display keyword
\def\printKeywordC{\@globalKeywordC} % Display keyword
\def\printKeywordD{\@globalKeywordD} % Display keyword
\def\printKeywordE{\@globalKeywordE} % Display keyword
\def\printKeywordF{\@globalKeywordF} % Display keyword
\def\printKeywordG{\@globalKeywordG} % Display keyword

%##############################################################################
% Wymagane pakiety
%##############################################################################
\RequirePackage[autostyle]{csquotes}              %
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

\RequirePackage[english,polish]{babel} %
\RequirePackage{polski}                %

\RequirePackage{indentfirst}           % uzyskanie wcięcia przy pierwszym akapicie
\RequirePackage{nameref}               % pakiet referencji do pełnych nazw rozdziałów
\RequirePackage{enumerate}             % pakiet numerowania 1,2,3...etc
\RequirePackage{multirow}              % pakiet dla łaczenia wierszy w tabelach
\RequirePackage{hhline}                % pakiet dla łaczenia kolumn w tabelach
\RequirePackage{listings}              % pakiet dla kodów zródłowych
\RequirePackage{indentfirst}           % uzyskanie wcięcia przy pierwszym akapicie
\RequirePackage{chngcntr}              % pakiet który definiuje komendy \coun­ter­within oraz \coun­ter­with­out
\RequirePackage{gensymb}               % pakiet który definiuje znaki m.in. \degree, \textdegree
\RequirePackage{cases}              % pakiet numeracji równań z 'numcases'

%##############################################################################
% for package 'csqoutes'
\DeclareQuoteAlias{german}{polish}

% \enquote{,,}
% \enquote*{''}

%##############################################################################

\geometry{lmargin=30mm, rmargin=20mm, tmargin=30mm, bmargin=30mm, foot=10mm, head=10mm}
%\definecolor{Green}{rgb}{0.1,0.5,0.1}

\linespread{1.5}
\renewcommand{\labelitemi}{--}    % znak rozpoczynający każdą listę wypunktową

%##############################################################################

\def\thesisheaders{
  \fancyfoot[LE,RO]{\small \@globalShortAuthor\quad\textit{\@globalShortTitle}}
}

\def\thesistable{
  \begin{flushright}
  \begin{tabular}{p{35mm}l}
  Kierunek studi\'{o}w:   & {\itshape \@globalDegreeprogramme}\\[-1mm]
  Promotor:               & {\itshape \@globalSupervisor}\\
  Wersja:                 & {\itshape \@globalVersion}
  \end{tabular}
  \end{flushright}
}

\DeclareOption{en}{
  \def\thesisheaders{
    \fancyfoot[LE,RO]{\small \@globalShortAuthor\quad\textit{\@shortTitleEN}}
  }

  \def\thesistable{
    \begin{tabular}{p{45mm}l}
    Author: & {\itshape \@author}\\[-1mm]
    Degree programme: & {\itshape \@globalDegreeprogramme}\\[-1mm]
    Supervisor: & {\itshape \@globalSupervisor}\\
    \end{tabular}
  }
}


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
    {\large\itshape O\'swiadczam, \'swiadoma odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze \mbox{niniejsz\k{a}} prac\k{e} dyplomow\k{a} wykona\l{}am) osobi\'scie i samodzielnie oraz nie korzysta\l{}am ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}
  }
}

%##############################################################################

\ProcessOptions

\newcommand{\titlepages}{ % Ustawienia stron tytułowych

  \newpage \titlepage

  \begin{center}
    %\vspace*{0.5cm}

    %{\sffamily{\large{\bfseries{\scshape Uniwersytet Ekonomiczny w Krakowie}}}1
    {{\LARGE \@globalFullUniversity}

      \vspace*{5mm}

      %{\small\bfseries \MakeUppercase{\@globalDepartment}}}
      {\Large\@globalDepartment}
    }

    \vspace*{15mm}

    \includegraphics[scale=0.09]{uek}

    \vspace*{15mm}

    %{\small{\MakeUppercase{\@globalDepartment}}}    <= opcjonalnie do wymazania
    %\vspace*{12mm}

    {\Large \@author}

    \vspace*{10mm}

    {\LARGE\bfseries \@globalFullTitle}
    \vspace*{5mm}

    %{\sffamily\Large\itshape \@titleEN}      <= do przygotowania dla EN
    %\vspace*{9mm}

    %{\sffamily\large \@globalThesisType} <= do pomocy
    {\large \@globalThesisType}

    \vspace*{38mm}
  \end{center}

  \noindent
  {\sffamily
    \thesistable
  }

  \vspace*{17mm}

  \centerline{\large{\@globalCity~\@globalYear}}

  \clearpage \titlepage

  {~~}\vspace{20mm}

  \statementOfTheAuthor

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

\thesisheaders

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

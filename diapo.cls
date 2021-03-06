%On définit une nouvelle classe définie à partir de book
\ProvidesClass{diapo}
\LoadClassWithOptions{beamer}

\setbeamersize{text margin left = 0pt}
\setbeamersize{text margin right = 0pt}

%La base (mettre english si rapport de stage en anglais)
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[frenchb]{babel}

% Pour définir une commande en plusieurs langues
\newcommand{\multilangnewcommand}[3]{%
  \newcommand{#1}{%
    \iflanguage{english}{#2}{%
    \iflanguage{french}{#3}{%
    }}%
  }%
}

% To define a command with multiple optional arguments
\usepackage{xargs}

% To include file
\usepackage{filecontents}

% Outline of the presentation
\multilangnewcommand{\outline}{Outline}{Sommaire}

%Pour pouvoir mettre des images
\usepackage{graphicx}

%Pour pouvoir modifier les énumérations
\iflanguage{french}{\frenchbsetup{StandardLists=true}}
%\usepackage{enumitem}
%\usepackage[ampersand]{easylist}
%\setlist[]{leftmargin=*}

%Pour souligner sur plusieurs lignes
\usepackage{ulem}
\normalem

%Pour plus de maths et de chimie
\usepackage{amsmath,amsfonts,amssymb,amsthm,dsfont,bm}
\usepackage[overload]{empheq}
\usepackage[version=3]{mhchem} %Chimie
\usepackage{siunitx}  %Utilisation des unités SI

%Pour dessiner
\usepackage{xcolor,colortbl}
\definecolor{bottle green}{RGB}{9, 106, 9}
\definecolor{kaki}{rgb}{.5,.5,0}
\definecolor{argon orange}{RGB}{237, 128, 0}
\definecolor{argon gray}{RGB}{83, 86, 90}

%Pour encadrer
\usepackage{fancybox}

%Si vous avez besoin de mettre du code source par exemple:
% \begin{lstlisting}
% Put your code here.
% \end{lstlisting}
% Ou:
% \lstinputlisting[language=Python]{source_filename.py}
\usepackage{listings}

% Pour du pseudo-code
\iflanguage{english}{%
  \usepackage[english,noend]{algorithm2e}%
  \SetKw{And}{and}%
  \SetKw{From}{from}%
  \SetKw{To}{to}%
}{%
  \iflanguage{french}{%
    \usepackage[french,noend]{algorithm2e}%
    \SetKw{And}{et}%
    \SetKw{From}{de}%
    \SetKw{To}{\`{a}}%
  }{}%
}
\setlength{\algomargin}{0em}

%Pour les tableaux
\usepackage{array} %Centrer les tableaux
\usepackage{multirow} %multiligne et multicolonne
\usepackage{rotating} %Rotate header column
\usepackage{arydshln} %ligne en pointillé
\usepackage[hang, small,labelfont=bf,up,textfont=it,up]{caption} %Nom des tables personnalisés
\usepackage{booktabs} %Tables avec des lignes marquées

%Pour que les caractères sous l'accolade soient en taille normale
\newcommand\displayUB[2]{\underbrace{#1}_{\displaystyle #2}}

%On définit l'envirronnement propre au théorème
\theoremstyle{plain} % default (corps en italique)
\newtheorem{thm}{Théorème}
%\newtheorem{lem}[thm]{Lemme}
\newtheorem{prop}[thm]{Proposition}
\theoremstyle{definition} % (corps en texte normal)
\newtheorem{conj}{Conjecture}
\newtheorem*{rmq}{Remarque}

%Comme les minipages mais avec une taille adaptée au contenu
\usepackage{varwidth}

%Pour dessiner
\usepackage{tikz}
\usetikzlibrary{calc,arrows,automata}
\usetikzlibrary{decorations,decorations.pathreplacing}
\usetikzlibrary{patterns}
\usepackage{tikzscale}
\usepackage{pgfplots}
\iflanguage{french}{\tikzset{every picture/.prefix style={execute at begin picture=\shorthandoff{;}}}}

% Gnuplot picture
\usepackage{latexsym, keyval, ifthen, moreverb, gnuplot-lua-tikz}
\usepackage{gnuplottex}

% Symbole euro
\usepackage{eurosym}

% Pour barrer du text (oblique)
\usepackage{cancel}
\newcommand\Ccancel[2][black]{\renewcommand\CancelColor{\color{#1}}\cancel{#2}}

% Raccourci utile
\newcommand{\red}[1]{\textcolor{red}{#1}} % texte en rouge
\newcommand{\tbc}{\red{\texttt{To be completed}}}
\newcommand{\todo}[1]{\red{\texttt{(TO DO: #1)}}}
\def\ds{\displaystyle}

% correct text circled
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{\node[shape=circle,draw,inner sep=1pt] (char) {#1};}}

% Template beamer
\input{template_theme.tex}

% Mathematic command
\input{math_command.tex}


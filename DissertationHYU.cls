% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     FILENAME    = "dissertationHYU.cls",
%     DATE        = "2015 January 21",
%     VERSION     = "1.0",
%     ENCODING    = "ISO/ASCII",
%     KEYWORDS    = "XeLaTeX, Dissertation, Korean, Hanyang",
%     docstring   = "Class for a Hanyang University dissertation"
%     support     = "send email to Seongjin Lee, insight@hanyang.ac.kr",
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DissertationHYU}[2015/01/21 v1.0 Dissertation Class]
\LoadClass[12pt, oneside, b5paper]{book}

% author of the pdf file
\usepackage[linktocpage=true,%
            hidelinks,% 
	    urlcolor=black,% 
	    allcolors=black,%
            pdfauthor={Seongjin Lee}]{hyperref}

%
% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}

% Korean names
\def\titleKor#1{\gdef\@titleKor{#1}}
\def\authorKor#1{\gdef\@authorKor{#1}}
\def\degreeKor#1{\gdef\@degreeKor{#1}}
\def\advisorKor#1{\gdef\@advisorKor{#1}}
\def\universityKor#1{\gdef\@universityKor{#1}}
\def\programnameKor#1{\gdef\@programnameKor{#1}}
\def\departmentKor#1{\gdef\@departmentKor{#1}}
\def\committeeChair#1{\gdef\@committeeChair{#1}}
\def\committeeOne#1{\gdef\@committeeOne{#1}}
\def\committeeTwo#1{\gdef\@committeeTwo{#1}}
\def\committeeThree#1{\gdef\@committeeThree{#1}}
\def\committeeFour#1{\gdef\@committeeFour{#1}}

\RequirePackage{kvoptions}
\DeclareStringOption{School}[]
\ProcessKeyvalOptions*

%\renewcommand{\bibnumfmt}[1]{[#1]}
%\RequirePackage[width=5.75in, letterpaper]{geometry}
%\RequirePackage[a4paper]{geometry}
%\RequirePackage{fancyhdr}

% table of contents style
\setcounter{tocdepth}{1}
\usepackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
%\renewcommand{\cftchapfont}{\normalsize \scshape}
\RequirePackage{tocbibind}

% chapter title style
%\RequirePackage[tiny, md, sc]{titlesec}
\RequirePackage[rm,bf]{titlesec}
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage[palatino]{quotchap}


% appendix section name
\usepackage[titletoc,title]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

% Redefining section names
\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of figures}
\renewcommand\listtablename{Listing of tables}

% reference style
\RequirePackage[comma,numbers]{natbib}

% Lorem Lipsum for English and Korean 
\RequirePackage{lipsum}
\RequirePackage{jiwonlipsum}

% misc
\RequirePackage{tabularx}
\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\RequirePackage{comment}
\RequirePackage{multirow}
\RequirePackage{floatpag}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{epstopdf}
\RequirePackage{amssymb}

\usepackage{fixltx2e}
\usepackage{ragged2e}

\RequirePackage{array}
%\RaggedRight

%\parindent 12pt

\widowpenalty=300
\clubpenalty=300

% math fonts setting
\RequirePackage{mathspec}
\setmathsfont(Digits,Latin,Greek)%
             [Numbers={Proportional}]%
	     {Latin Modern Math}
\setmathrm{Latin Modern Roman} %\mathrm
\setboldmathrm{Latin Modern Roman} %\mathbf
\setmathsf{Latin Modern Sans}  %\mathsf
\setmathtt{Latin Modern Mono}  %\mathtt

% include Korean langauge support
\RequirePackage{kotex}

% regular fonts setting
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Numbers={Proportional,Uppercase},% 
             Scale=1.0,% 
	     Ligatures={TeX}%
	    ]{TeX Gyre Pagella}
\setsansfont[Scale=1.0,%
             BoldFont={TeX Gyre Heros}%
	    ]{TeX Gyre Heros}
\setmonofont[Scale=1.0]{Inconsolata}

% hanja font setting
\setmainhanjafont{HCR Batang}

% hangul font setting
\setmainhangulfont[Ligatures=TeX,%
                   BoldFont={Arita-buri(OTF)-Bold},%
		   Renderer=ICU,%
		  ]{Arita-buri(OTF)-Light}
\setsanshangulfont[Ligatures=TeX,%
                   BoldFont={* Bold}%
		  ]{NanumGothic}
\xetexkofontregime[alphs=latin,%
                   puncts=revfont,%
		   cjksymbols=hangul%
		  ]{hangul}
\newenvironment{gulim}{\fontfamily{Gulim}\selectfont}{\par}

% fonts for quotes quotchap
\newfontfamily{\QuoteFont}%
              [Mapping=tex-text,Ligatures={TeX},%
	       Numbers={Proportional, OldStyle},% 
	       Contextuals={WordInitial,Swash,WordFinal}, Alternate=2, %
	       Scale=1.3 %
	      ]{Hoefler Text}



\renewcommand{\qauthor}[1]{%
              \par\smallskip
	      {\small\raggedleft\upshape #1 \qquad\hbox{}\par}\bigskip}

% caption style
\RequirePackage[labelfont={bf,sf,it,small,singlespacing},%
		textfont={bf,sf,it,small,singlespacing},%
		justification={justified,RaggedRight},%
		singlelinecheck=false,%
		margin=0pt,%
		skip=10pt,%
		format={hang},%
		figurewithin=chapter,%
		tablewithin=chapter %
	       ]{caption}

% subcaption style
\RequirePackage[labelfont={bf,sf,it},%
                textfont={bf,sf,it},%
	        font=small %
	       ]{subcaption}


\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% load disseration style 
\RequirePackage{style/HYUstyle}

%\onehalfspacing
%\doublespacing

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent
\newlength\mybibindent
\setlength\mybibindent{0pt}
\makeatletter
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}
\makeatother

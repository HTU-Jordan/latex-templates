\ProvidesClass{htu}

\LoadClass{article}

%\RequirePackage{longtable}%

\RequirePackage{amsmath}
\RequirePackage[noblocks]{authblk}
\RequirePackage[round]{natbib}
\RequirePackage{hyperref} 
\RequirePackage{amssymb}
\RequirePackage{graphicx}

% COLOR
\RequirePackage{xcolor}
\definecolor{lblue}{RGB}{0,64,128}
\definecolor{dred}{RGB}{139,0,0}

% FONT
\RequirePackage{fontspec}
\setmainfont{ScalaSansPro-Regular.ttf}[
BoldFont = ScalaSansPro-Bold.ttf,
ItalicFont = ScalaSansPro-Italic.ttf,
BoldItalicFont  = ScalaSansPro-BoldItalic.ttf]


%  ****************************************
%  *            MACROS               *
%  ****************************************


\def\acknowledgments{\vskip 5.8mm plus 1mm minus 1mm}
\let\acknowledgements=\acknowledgments                  % second spelling

%  ****************************************
%  *            PAGE LAYOUT               *
%  ****************************************

% Page size, spacing parameters, etc. 

\RequirePackage{fullpage}
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\headheight=.3in
\setlength{\headsep}{0.1in}


\rhead[]{}
\lhead[HTU]{\rightmark}
\cfoot[]{}
\rfoot[\thepage]{\thepage}

\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}

\def\eqsecnum{
    \@newctr{equation}[section]
    \def\theequation{\hbox{\normalsize\arabic{section}-\arabic{equation}}}}
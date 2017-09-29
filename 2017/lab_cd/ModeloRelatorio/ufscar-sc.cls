%% https://github.com/abntex/abntex2/wiki/ComoCustomizar
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufscar-sc}[08/09/2017 v1.0 Modelo da UFSCar Campus São Carlos baseado em abnTeX2]

%
% Repassa todos os parâmetros a classe ufscar,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{ufscar}%
}
\ProcessOptions\relax
\LoadClass{ufscar}
\usepackage{graphicx}
% ---
% Pacotes básicos
% ---
\usepackage[T1]{fontenc}        % Selecao de codigos de fonte.
\usepackage[utf8]{inputenc}
\usepackage{lastpage}           % Usado pela Ficha catalográfica
\usepackage{indentfirst}        % Indenta o primeiro parágrafo de cada seção.
\usepackage{color}              % Controle das cores
\usepackage{microtype}          % para melhorias de justificação
\usepackage{makeidx}			% para o indice

% ---
% Pacotes de citações
% ---
\usepackage[brazilian,hyperpageref]{backref}     % Paginas com as citações na bibl

% Glossario...
% Existe alguma incompatibilidade entre o glossario e o abntex2cite, não funcionaram juntos no overleaf
%\usepackage[toc,xindy]{glossaries}
%\makeglossaries
%\input{defs-glossario}


\usepackage[alf]{abntex2cite}   % Citações padrão ABNT

% ---
% CONFIGURAÇÕES DE PACOTES
% ---

% ---
% Configurações do pacote backref
% Usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define os textos da citação
\renewcommand*{\backrefalt}[4]{
    \ifcase #1 %
        Nenhuma citação no texto.%
    \or
        Citado na página #2.%
    \else
        Citado #1 vezes nas páginas #2.%
    \fi}%
% ---



\renewcommand{\imprimirifsp}{Universidade Federal de São Carlos - UFSCar}
\renewcommand*{\ifspprefixo}{logo}



% Comandos de dados - curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Comandos de dados - departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - disciplina
\providecommand{\imprimirdisciplina}{}
\newcommand{\disciplina}[1]{\renewcommand{\imprimirdisciplina}{#1}}

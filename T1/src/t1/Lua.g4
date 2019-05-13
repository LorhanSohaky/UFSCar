grammar Lua;

@members {
   public static String grupo="740951 743602 743586";
}

//"::==> ":" {regra} => (regra)* [regra] => (regra)?

programa: trecho EOF; //Regra principal

trecho: (comando (';')?)* (ultimocomando (';')?)?; // Sequência de comandos
bloco: trecho; // É uma lista de comandos
comando:
	listavar '=' listaexp // Atribuindo expressões a uma lista de variáveis
	| chamadadefuncao
	| 'do' bloco 'end'
	| 'while' exp 'do' bloco 'end' // Laço de repecição enquanto
	| 'repeat' bloco 'until' exp // Laço de repecição repita até
	| 'if' exp 'then' bloco ('elseif' exp 'then' bloco)* (
		'else' bloco
	)? 'end' // Comando condicional
	| 'for' Nome '=' exp ',' exp (',' exp)? 'do' bloco 'end' // Laço de repetição para numérica
	| 'for' listadenomes 'in' listaexp 'do' bloco 'end' // Laço de repetição para genérica
	| 'function' nomedafuncao corpodafuncao // Declaração da função
	| 'local' 'function' Nome corpodafuncao // Declaração local da função
	| 'local' listadenomes ('=' listaexp)?; // Atribuição local das expressões à lista de variáveis

ultimocomando:
	'return' (listaexp)? // Para retorno de função
	| 'break'; //Para terminar um laço de repetição
nomedafuncao: // Declaração do nome da função
	Nome ('.' Nome)* (':' Nome)?;

fragment Caracter: ('a' ..'z') | ('A' ..'Z') | '_';
fragment Num: ('0' ..'9');

Nome: Caracter (Caracter | Num)*; // Sequência válida de nomes

listavar: var (',' var)*;

var: Nome | expprefixo '[' exp ']' | expprefixo '.' Nome;

listadenomes: Nome (',' Nome)*;

listaexp: (exp ',')* exp;

exp:
	'nil'
	| 'false'
	| 'true'
	| Numero
	| Cadeia
	| '...'
	| funcao
	| expprefixo
	| construtortabela
	| exp opbin exp
	| opunaria exp;

expprefixo: var | chamadadefuncao | '(' exp ')';

chamadadefuncao: expprefixo args | expprefixo ':' Nome args;

args: '(' (listaexp)? ')' | construtortabela | Cadeia;

funcao: function corpodafuncao;

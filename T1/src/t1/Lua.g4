grammar Lua;

@members {
   public static String grupo="740951 743602 743586";
}

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
	| 'for' nomeVar '=' exp ',' exp (',' exp)? 'do' bloco 'end' // Laço de repetição para numérica
	| 'for' listadenomes 'in' listaexp 'do' bloco 'end' // Laço de repetição para genérica
	| 'function' nomedafuncao corpodafuncao // Declaração da função
	| 'local' 'function' nomeFuncao corpodafuncao // Declaração local da função
	| 'local' listadenomes ('=' listaexp)?; // Atribuição local das expressões à lista de variáveis

ultimocomando:
	'return' (listaexp)? // Para retorno de função
	| 'break'; //Para terminar um laço de repetição
nomedafuncao: // Declaração do nome da função
	nomeFuncao ('.' nomeFuncao)* (':' nomeFuncao)?;

fragment Caracter: ('a' ..'z') | ('A' ..'Z') | '_';
fragment Numero: ('0' ..'9');

Nome: Caracter (Caracter | Numero)*; // Sequência válida de nomes

listavar: var (',' var)*; // lista de variaveis

var:
	nomeVar
	| expprefixo '[' exp ']'
	| expprefixo '.' nomeVar; // Declaração de variavel locais, globais e campos de tabelas

listadenomes: nomeVar (',' nomeVar)*; //lista de nomes

listaexp: (exp ',')* exp; //lista de expressões

exp: //expressões básicas
	 exp2 opbin exp
   | exp2;

exp2:
  'nil'
  | 'false'
  | 'true'
  | Cadeia
  | '...'
  | Num
  | Decimal
  | funcao
  | expprefixo
  | construtortabela
  | opunaria exp;

expprefixo: nomeVar
| expprefixo '[' exp ']'
| expprefixo '.' nomeVar
| expprefixo args
| expprefixo ':' nomeFuncao args | '(' exp ')';

chamadadefuncao:
	expprefixo args
	| expprefixo ':' nomeFuncao args;

args:
	'(' (listaexp)? ')'
	| construtortabela
	| Cadeia; //argumentos para funções, tabelas e cadeias

funcao: 'function' corpodafuncao; //declarar uma função

Cadeia:
	'\'' (~('\'' | '\n'))* '\''; //cadeia de caracteres envoltas por aspas simples

corpodafuncao: '(' (listapar)? ')' bloco 'end';

listapar: listadenomes (',' '...')? | '...';

construtortabela: '{' (listadecampos)? '}';

listadecampos:
	campo (separadordecampos campo)* (separadordecampos)?;

campo: '[' exp ']' '=' exp | nomeVar '=' exp | exp;

separadordecampos: ',' | ';';

opbin:
	'+'
	| '-'
	| '*'
	| '/'
	| '^'
	| '%'
	| '..'
	| '<'
	| '<='
	| '>'
	| '>='
	| '=='
	| '~='
	| 'and'
	| 'or';

opunaria: '-' | 'not' | '#';

Comentario: '--' .*? '\n' -> skip;

Decimal: Numero+ ('.' Numero+)?;
Num: Decimal;

nomeVar:
	Nome {TabelaDeSimbolos.adicionarSimbolo($Nome.text, Tipo.VARIAVEL);};

nomeFuncao:
	Nome {TabelaDeSimbolos.adicionarSimbolo($Nome.text, Tipo.FUNCAO);};

Format: ('\n' | '\t' | '\r' | ' ') -> skip;

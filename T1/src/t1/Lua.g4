grammar Lua;

@members {
   public static String grupo="740951 743602 743586";
}

programa: trecho EOF;

trecho: (comando (';')?)* (ultimocomando (';')?)?;
bloco: trecho;
comando:
	listavar '=' listaexp
	| chamadadefuncao
	| 'do' bloco 'end'
	| 'while' exp 'do' bloco 'end'
	| 'repeat' bloco 'until' exp
	| 'if' exp 'then' bloco ('elseif' exp 'then' bloco)* (
		'else' bloco
	)? 'end'
	| 'for' Nome '=' exp ',' exp (',' exp)? 'do' bloco 'end'
	| 'for' listadenomes 'in' listaexp 'do' bloco 'end'
	| 'function' nomedafuncao corpodafuncao
	| 'local' 'function' Nome corpodafuncao
	| 'local' listadenomes ('=' listaexp)?;

ultimocomando: 'return' (listaexp)? | 'break';
nomedafuncao: Nome ('.' Nome)* (':' Nome)?;

Nome: (('a' ..'z') | ('A' ..'Z') | '_') (
		('a' ..'z')
		| ('A' ..'Z')
		| ('0' ..'9')
		| '_'
	)*;
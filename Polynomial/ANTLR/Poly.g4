grammar Poly;

@package { net.cargal.poly }

polys: pExpr (NL pExpr)* EOF;
// parser rules
pExpr:
	L_PAREN pExpr R_PAREN			# paren
	| X (EXP exp=INT)?				# x
	| pExpr op = (MULT | DIV) pExpr	# mulDiv
	| pExpr op = ( ADD | SUB) pExpr	# addSub
	| INT							# integer
	;

// Lexer rules
ADD: '+';
SUB: '-';
MULT: '*';
DIV: '/';
EXP: '^';
L_PAREN: '(';
R_PAREN: ')';
X: 'x';
INT: '-'? [0-9]+;
NL: '\n';
WS: (' ' | '\t')+ -> skip;

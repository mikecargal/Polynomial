grammar Poly;

// parser rules
polys: pExpr (NL pExpr)* EOF;

fullPExpr: pExpr EOF;
pExpr:
    L_PAREN pExpr R_PAREN               # parenPExpr
    | pExpr op = (MULT | DIV) pExpr     # mulDiv
    | pExpr op = (PLUS | MINUS) pExpr   # addSub
    | term                              # pTerm
    ;
 
term :
    coefficient (MULT)? v=VAR degree    # cvdTerm
    | VAR degree                        # vdTerm
    | coefficient v=VAR                 # cvTerm
    | coefficient                       # cTerm
    ;

degree: EXP degreeValue=INT;
coefficient : neg=MINUS? (INT | DECIMAL);

// Lexer rules
PLUS: '+';
MINUS: '-';
MULT: '*';
DIV: '/';
EXP: '^';
L_PAREN: '(';
R_PAREN: ')';
VAR: [a-z,A-Z];
INT:  [0-9]+;
DECIMAL: [0-9]* '.' [0-9]+;
NL: '\n';
WS: (' ' | '\t')+ -> skip;

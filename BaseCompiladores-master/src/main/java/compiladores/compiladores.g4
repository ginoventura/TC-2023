grammar compiladores;

//@header {
//package compiladores;

//}

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

PYC   : ';' ;
PA    : '(' ;
PC    : ')' ;
LLA   : '{' ;
LLC   : '}' ;
CA    : '[' ;
CC    : ']' ;
ASIGN : '=' ;
COMA  : ',' ;
SUMA  : '+' ;
RESTA : '-' ;
MULT  : '*' ;
DIV   : '/';
MOD   : '%' ;
EQ    : '==' ;

//Regla para los espacios en blanco
WS : [ \n\t\r] -> skip ;

NUMERO : DIGITO+ ;

INT : 'int' ;                                      

// OTRO : . ;

ID : (LETRA | '_')(LETRA | DIGITO | '_')* ;

// s : ID     { System.out.println("ID ->" + $ID.getText() + "<--"); }         s
//   | NUMERO { System.out.println("NUMERO ->" + $NUMERO.getText() + "<--"); } s
//   | OTRO   { System.out.println("Otro ->" + $OTRO.getText() + "<--"); }     s
//   | EOF
//   ;

// Tokens o reglas gramaticales: minuscula
// Reglas lexicas: MAYUSCULA

// Analisis sintactico descendente:
// match y derivar

// Analisis sintactico ascendente:
// Desplazar y reducir

si : s 
   | EOF
   ;

//  PA (Abre parentesis) PC (Cierra parentesis)
s : PA s PC s 
  | LLA s LLC s
  | CA s CC s
  |
  ;

/*
// Un programa es un conjunto de instrucciones hasta final de archivo
programa : instrucciones EOF ;

// las instrucciones 
instrucciones : instruccion instrucciones
              |   
              ;

// las instrucciones son:
instruccion : asignacion 
            | declaracion
            ;

// Una asignacion es:
asignacion : ID ASIGN expresion PYC ;

// Una declaracion es:
// una variable de tal tipo que se llama asi:
// puede ser inicializada o puede ser un listado de variables
declaracion : INT ID inicializacion listaid PYC ;

// una inicializacion
inicializacion : ASIGN NUMERO 
               |    
               ;

// lista de valores
listaid : COMA ID inicializacion listaid
        |
        ;

// 
expresion : termino exp ;

exp : SUMA  termino exp 
    | RESTA termino exp 
    |
    ;

termino : factor term ;

term : MULT factor term
     | DIV  factor term
     | MOD  factor term
     | 
     ;

// con los parentesis se resetea la prioridad 
factor : NUMERO 
       | ID
       | PA expresion PC
       ;

*/
grammar compiladores;

//@header {
//package compiladores;

//}

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

PYC : ';' ;
PA  : '(' ;
PC  : ')' ;
LLA : '{' ;
LLC : '}' ;
ASIGN : '=' ;

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

// si : s 
//    | EOF
//    ;
// 
// PA (Abre parentesis) PC (Cierra parentesis)
// s : PA s PC s 
//   |
//   ;

programa : instrucciones EOF ;

instrucciones : instruccion instrucciones
              |   
              ;

instruccion : asignacion ;

asignacion : ID ASIGN NUMERO PYC;
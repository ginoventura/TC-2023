grammar compiladores;

@header {
package compiladores;
}

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

//Regla para los espacios en blanco
WS : [ \n\t\r] -> skip ;

//1- Fechas correspondientes a los meses pares (formato DD/MM/YYYY).
//FMESESPARES : (((0[1-9])|([1-2][0-9]|(3[0-1])))\/(0[2468]|(1[02]))\/(\d{4})) ;

//2- horas correspondientes a las horas entre las 08:00 y las 12:59 (HH:MM).
//HORAS812 : (((0[8-9])|(1[0-2]))\:((0[0-9])|([1-5][0-9]))) ;

//3- horas correspondientes a las horas entre las 18:30 y las 21:30 (formato HH:MM).
//HORAS1821 : ((18:[3-5][0-9])|((19|20):[0-5][0-9])|(21:([0-2][0-9]|30)))


NUMERO : DIGITO+ ;
OTRO : . ;


ID : (LETRA | '_')(LETRA | DIGITO | '_')* ;

s : ID     { System.out.println("ID ->" + $ID.getText() + "<--"); }         s
  | NUMERO { System.out.println("NUMERO ->" + $NUMERO.getText() + "<--"); } s
  | OTRO   { System.out.println("Otro ->" + $OTRO.getText() + "<--"); }     s
  | EOF
  ;

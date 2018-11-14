package datosAVector  is
   type array_Vector is array (Natural range 1..10) of Integer;
   function recepcionCombinaciones (Tiempo : Boolean; Fichero : String) return array_Vector;
end datosAVector;

with ada.Command_Line; use ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;

with datosAVector;      use datosAVector;
--with iterador_permutaciones; use iterador_permutaciones;


procedure main  is
   procedure readComandLine is
      num : Natural := 1;
      Reloj : Boolean := false;
      Vector : array_Vector := (others => 0);
   begin
      if Argument_Count > 2 or Argument_Count < 1 then
         Put_Line("Parametros Incorrectos. Ejemplos: 1) fichero.txt 2) -t fichero.txt");
         return;
      end if;

      if Argument_Count = 2 then
         if Argument(num) = "-t" then
            Reloj  := True;
            num := num + 1;
         else
            Put_Line("Parametros Incorrectos. Ejemplos: 1) fichero.txt 2) -t fichero.txt");
         end if;
      end if;

      Vector := recepcionCombinaciones(Reloj, Argument(num));
      Put_Line(Vector(1)'Image);
   end readComandLine;
begin
   readComandLine;


end main;






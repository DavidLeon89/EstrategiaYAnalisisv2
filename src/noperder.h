   procedure Trata_fichero  (fichero: in  String)is
      F_Entrada         : File_Type;
      L�nea             : String(1..1);
      Lon_L�nea         : Natural;

      --Vector : TArray (1 .. 10) := (others => 0);
      Con : Integer := 1;
   begin

      --se abren los ficheros
      Open(F_Entrada,Mode => In_File,Name => fichero);


      while not End_Of_File(F_Entrada) loop
         Get_Line(F_Entrada,L�nea,Lon_L�nea);

         if L�nea(1..Lon_L�nea) /= " " then
            --Vector(Con) := integer'Value(L�nea(1..Lon_L�nea));
            Con := Con + 1;
         end if;

      end loop;

      --se cierran los ficheros
      Close(F_Entrada);
      --


   end Trata_fichero;

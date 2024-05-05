--Just some functions
function Celsius_To_Fahrenheit (Celsius : Float) return Float is
begin
   return Celsius * 9.0 / 5.0 + 32.0;
end Celsius_To_Fahrenheit;

-- Usage:
Temperature_F := Celsius_To_Fahrenheit (30.0); -- Convert 30°C to Fahrenheit


function Power (Base : Float; Exponent : Positive) return Float is
   Result : Float := 1.0;
begin
   for I in 1 .. Exponent loop
      Result := Result * Base;
   end loop


function Calculate_Age_Days (Birth_Date : Ada.Calendar.Date) return Integer is
   Today : Ada.Calendar.Date := Ada.Calendar.Clock;
begin
   return Ada.Calendar."-" (Today, Birth_Date) / 86400; -- Convert seconds to days
end Calculate_Age_Days;

-- Usage:
Age_Days := Calculate_Age_Days (Ada.Calendar.Time_Of (1985, 4, 12)); -- Age in days from a specific date


function Is_Prime (Number : Positive) return Boolean is
begin
   if Number <= 1 then
      return False;
   end if;
   for I in 2 .. Number / 2 loop
      if Number mod I = 0 then
         return False;
      end if;
   end loop;
   return True;
end Is_Prime;

-- Usage:
Prime_Status := Is_Prime (29); -- True, since 29 is a prime number

function Fibonacci (N : Positive) return Integer is
   A, B, Temp : Integer := 1;
begin
   for I in 2 .. N loop
      Temp := A + B;
      A := B;
      B := Temp;
   end loop;
   return A;
end Fibonacci;

-- Usage:
Fib_Number := Fibonacci (10); -- Tenth Fibonacci number





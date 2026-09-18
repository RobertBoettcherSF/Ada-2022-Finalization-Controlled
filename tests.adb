pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Controlled_Demo; use Controlled_Demo;
procedure Tests is
begin
   Assert (Live_Count = 0);
   declare
      A : Counter := Make;
      pragma Unreferenced (A);
   begin
      Assert (Live_Count >= 1);
   end;
   Assert (Live_Count = 0);
   Put_Line ("PASS Controlled Initialize / Finalize");
   Put_Line ("All Finalization.Controlled topic tests passed.");
end Tests;

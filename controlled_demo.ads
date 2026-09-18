--  Ada 2022 topic: Ada.Finalization.Controlled.
pragma Ada_2022;
with Ada.Finalization;
package Controlled_Demo is
   type Counter is new Ada.Finalization.Controlled with private;
   function Live_Count return Natural;
   function Make return Counter;
private
   type Counter is new Ada.Finalization.Controlled with record
      Id : Natural := 0;
   end record;
   overriding procedure Initialize (Object : in out Counter);
   overriding procedure Finalize (Object : in out Counter);
   overriding procedure Adjust (Object : in out Counter);
end Controlled_Demo;

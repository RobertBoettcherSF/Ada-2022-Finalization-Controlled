pragma Ada_2022;
package body Controlled_Demo is
   Count : Natural := 0;
   function Live_Count return Natural is
   begin
      return Count;
   end Live_Count;
   procedure Initialize (Object : in out Counter) is
   begin
      Count := Count + 1;
      Object.Id := Count;
   end Initialize;
   procedure Finalize (Object : in out Counter) is
      pragma Unreferenced (Object);
   begin
      if Count > 0 then
         Count := Count - 1;
      end if;
   end Finalize;
   procedure Adjust (Object : in out Counter) is
   begin
      Count := Count + 1;
      Object.Id := Count;
   end Adjust;
   function Make return Counter is
      C : Counter;
   begin
      return C;
   end Make;
end Controlled_Demo;

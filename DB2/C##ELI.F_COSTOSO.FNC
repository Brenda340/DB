CREATE OR REPLACE function C##ELI.f_costoso (avalor number)
  return varchar2
 is
  valorretornado varchar2(20);
 begin
   valorretornado:='';
   if avalor<=20 then
    valorretornado:='economico';
   else valorretornado:='costoso';
   end if;
   return valorretornado;
 end f_costoso;
/

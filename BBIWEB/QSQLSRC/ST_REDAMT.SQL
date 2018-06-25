000100180411   -- Retrieve the cost reduction percentage for store/dept.
000200180411   CREATE or replace PROCEDURE bbiweb.st_redamt
000300180501                (IN store int, in dept char(3))
000400180411   result sets 1
000500180411   language sql
000600180411   begin
000700180411   declare c1 cursor for
000800180411    select *
000900180501    from BBLMTOL.MTVMARQS3
001000180501   where WEBRTLLOC  = store  and WEBACTDPT = dept;
001100180411
001200180411   open c1;
001300180411   END

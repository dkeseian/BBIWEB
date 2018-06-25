000100161108-- Retrieve the customer information. T
000200161108-- Pass in the customer number or a string of customer name
000300171013
000400171013-- 2017-10-13  T. Detrow
000500171013-- Add CUCO = 'STORE'
000600161108
000700161108CREATE or replace PROCEDURE bbiweb.ci_cust  (IN cust CHAR(30))
000800160511result sets 1
000900160511LANGUAGE SQL
001000160511BEGIN
001100161108declare c1 cursor
001200161108for select cuco, cucuno, cuname, cuadr1, cucity, custat,cupost
001300161108from ardbfa.arpcu
001400161108where  cuname || cucuno like rtrim(cust)
001500171013and cuco = 'STORE'
001600161108and cucatg = 'RETL'
001700161108and cuaicd = '1'
001800161108order by cuname                                      ;
001900160511OPEN c1;
002000160511End
002100160511

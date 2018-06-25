000100161107CREATE or replace PROCEDURE bbiweb.st_Store (IN Company int)
000200160511result sets 1
000300160511LANGUAGE SQL
000400160511BEGIN
000500160511DECLARE c1 CURSOR with return FOR
000600170727select distinct c.*
000700170727from gldbfa.glpct a
000800170727join glcust.bstore c on digits(c.s99co) = a.ctco
000900170727and digits(c.s99bv) = trim(a.ctrc02)
001000170727and right(digits(c.s99bus),4) = a.ctrc04
001100170807where a.ctrc06 = '470790' and a.ctrc07 = ''
001200170727and a.ctrc05 between '002' and '049'
001300170807and a.ctrc02 in ('00', '40', '60', '65')
001400170727and a.ctco   = '001' and a.ctactv = '1'
001500170811and c.s99num > 0
001600170811and c.s99loc < 9000
001700170421order by s99loc ;
001800170421
001900160511OPEN c1;
002000160511End
002100160511

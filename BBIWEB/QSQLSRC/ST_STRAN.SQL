000100170508CREATE or replace PROCEDURE bbiweb.st_stran
000200170508             (IN id int,IN seq int)
000300160511result sets 1
000400160511LANGUAGE SQL
000500160511BEGIN
000600160511DECLARE c1 CURSOR with return FOR
000700160516 SELECT *
000800160628 FROM bbiweb.bbp170ah a
000900160628where transferid = id and apprveflg = ' '
001000160628
001100160628 join  bbiweb.bbp170ad as b on
001200160628 b.transferid = a.transferid and  b.lineseq = b.seq ;
001300160511OPEN c1;
001400160511

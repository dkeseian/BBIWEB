000100170518CREATE OR REPLACE PROCEDURE bbiweb.st_LOG2(IN id  int)
000200160629LANGUAGE SQL
000300170518RESULT SETS 1
000400160629--
000500160629begin
000600170518          declare c1 cursor for
000700160629             select *
000800160629               from bbiweb.bbp170ad
000900160824                where transferid = id
001000160824                order by lineseq asc;
001100160822
001200160629            open c1;
001300160629        END

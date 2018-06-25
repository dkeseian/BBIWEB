000100161107CREATE OR REPLACE PROCEDURE bbiweb.st_ftrans(IN id  int)
000200160629LANGUAGE SQL
000300160823RESULT SETS 3
000400160629--
000500160629-- THIS STORED PROCEDURE RETURNS TWO
000600160629-- RESULT SETS:
000700160629-- 1) Transfer Header
000800160629-- 2) Transfer Detail
000900160629-- BASED ON SCHEMA AND TABLE NAMES
001000160629--
001100160629begin
001200160629    declare c1 cursor for
001300170505     select  TO_CHAR(A.CREATEDTE, 'YYYY-MM-DD HH24:MI:SS')AS CHARCRTDTE, A.*
001400170505   from bbiweb.bbV170ah A
001500160629      where transferid = id;
001600160629
001700160629          declare c2 cursor for
001800160629             select *
001900160629               from bbiweb.bbp170ad
002000160824                where transferid = id
002100160824                order by lineseq asc;
002200160629
002300160822             declare c3 cursor for
002400160822                select *
002500160822                  from bbiweb.bbp170b
002600160824                  where transferid = id
002700160824                  order by lineseq asc;
002800160822
002900160629            open c1;
003000160629            open c2;
003100160822            open c3;
003200160629        END

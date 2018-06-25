000100160629--
000200170811-- THIS STORED PROCEDURE RETURNS the create profiles either for a store
000300170811-- or for all stores.
000400160629--
000500170811CREATE or replace PROCEDURE bbiweb.st_profile (IN store int)
000600170811result sets 1
000700170811LANGUAGE SQL
000800170811BEGIN
000900170811/* Store number has been passed */
001000170811declare c1 cursor with return for
001100170811select
001200170811   distinct(a.createprf)
001300170811  from bbiweb.bbp170ah a
001400170811 where a.fromstore = store
001500170811 order by a.createprf  ;
001600170811
001700170811/* Store number has NOT been passed */
001800170811declare c2 cursor with return for
001900170811select
002000170811   distinct(a.createprf)
002100170811  from bbiweb.bbp170ah a
002200170811 order by a.createprf  ;
002300170811
002400170811 CASE STORE
002500170811 WHEN 0
002600170811 THEN
002700170811    OPEN c2;
002800170811 ELSE
002900170811   OPEN C1;
003000170811 END CASE ;
003100170811End

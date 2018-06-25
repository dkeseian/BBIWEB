000100180117CREATE or replace PROCEDURE bbiweb.st_Trans (INOUT atransferId int,
000200180117       afromStore int,
000300160701 atoStore int, afromDept int, atoDept int,
000400180314   auserProf CHAR(20),aretailPrc char(1))
000500180117 result sets 1
000600180117 LANGUAGE SQL
000700180117 BEGIN
000800180117 Case atransferId
000900160511
001000180117 When 0
001100160511 Then
001200160701  Insert into bbiweb.BBP170AH
001300160511         (fromStore,
001400160511          toStore,
001500160511          fromDept,
001600160511          toDept,
001700160511          createDte,
001800160513          createPrf,
001900160513          changeDte,
002000180314          retailPrc,
002100180314          changePrf)
002200160511
002300160511   values(afromStore,
002400160511          atoStore,
002500160511          afromDept,
002600160511          atoDept,
002700160511          now(),
002800160513          auserProf,
002900160513          now(),
003000180321          aretailPrc,
003100160513          auserProf);
003200160511
003300160511    SELECT Identity_val_Local() INTO atransferid FROM sysibm.sysdummy1;
003400160511
003500160511   else
003600180117 Update bbiweb.bbp170ah
003700180117 set
003800160511          fromStore = afromStore,
003900160511          toStore   = atoStore,
004000160511          fromDept  = afromDept,
004100160511          toDept    = atoDept,
004200160511          changeDte = now(),
004300180314          changePrf = auserProf,
004400180314          retailPrc = aretailPrc
004500160511
004600180117 where transferId   = atransferId	;
004700160511
004800160511 END Case ;
004900160712 RETURN ATRANSFERID;
005000180117 End

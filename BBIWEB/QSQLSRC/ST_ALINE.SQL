000100161107CREATE or replace PROCEDURE bbiweb.st_aline
000200160811   (IN atransferId int,alineSeq  int, aitemupc char(15),
000300180402    aitemdesc char(49), aquantity int, aunitcost DOUBLE,
000400180411    aitemuom char(13),aitemordnum char(6),areducedcost double)
000500160706
000600160511result sets 1
000700160511LANGUAGE SQL
000800160511BEGIN
000900160511
001000160705  Insert into bbiweb.BBP170AD
001100160705         (transferid,
001200160705          lineseq,
001300160722          itemupc,
001400160705          itemdesc,
001500160706          QUANTITY,
001600160811          itemuom,
001700180402          unitcost,
001800180411          reducedcost,
001900170504          itemordnum)
002000160705   values(atransferid,
002100160705          alineseq,
002200160722          aitemupc,
002300160705          aitemdesc,
002400160706          AQUANTITY,
002500160811          aitemuom,
002600180402          aunitcost,
002700180411          areducedcost,
002800170504          aitemordnum) ;
002900160511End

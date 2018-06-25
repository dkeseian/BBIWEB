000100170508 Drop view bbiweb.bbv170ah1 ;
000200170508
000300170508 create view bbiweb.bbv170ah1 as (
000400170508    select a.TRANSFERID  ,
000500170508           a.FROMSTORE   ,
000600170508           a.TOSTORE     ,
000700170508           a.FROMDEPT    ,
000800170508           a.TODEPT      ,
000900170508           a.APPRVEFLG   ,
001000170508           a.APPRVEDTE   ,
001100170508           a.APPRVEPRF   ,
001200170508           a.CREATEDTE   ,
001300170508           a.CREATEPRF   ,
001400170508           a.CHANGEDTE   ,
001500170508           a.CHANGEPRF   ,
001600170508           a.POSTEDDTE   ,
001700170508           a.POSTEDFLG   ,
001800170508           a.RECEIVDTE   ,
001900170508           b.S99BUS AS FROMSTOREA,
002000170508           b.S99BV  as FROMBVA,
002100170508           C.S99BUS AS TOSTOREA,
002200170508           C.S99BV  as TOBVA
002300170508
002400170508    from bbiweb.bbp170ah as a
002500170508
002600170508    join  glcust.bstore as b on
002700170508    b.s99co  = 1 and a.fromstore = b.s99loc
002800170508
002900170508    join  glcust.bstore as c on
003000170508    c.s99co  = 1 and a.tostore = c.s99loc
003100170508
003200170508    Where Postedflg in ('', 'A') ) ;
003300170508

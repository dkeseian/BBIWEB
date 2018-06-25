000100160622 Drop view bbiweb.bbv170ah;
000200120112
000300160622 create view bbiweb.bbv170ah as (
000400160527 select a.transferid, a.fromstore,a.tostore,a.fromdept,
000500160622 a.todept,a.apprveflg,
000600160527 a.apprvedte,a.apprveprf,a.createdte,a.createprf,
000700160815 a.changedte,a.changeprf,a.posteddte,a.postedflg, a.receivdte,
000800180313 a.retailprc,
000900160527 b.s99dsc as fromdescription, c.s99dsc as todescription,
001000170728 coalesce(d.r07dsc,right(digits(a.fromdept),3))
001100170728    as fromdepartment,
001200170728 coalesce(e.r07dsc,right(digits(a.todept),3))
001300170728    as todepartment
001400170728 --
001500160622 from bbiweb.bbp170ah as a
001600170728 --
001700160527 join  glcust.bstore as b on
001800160527 b.s99co  = 1 and a.fromstore = b.s99loc
001900170728 --
002000160527 join  glcust.bstore as c on
002100160527 c.s99co  = 1 and a.tostore = c.s99loc
002200170728 --
002300170728 left join glcust.glvrdpstr as d
002400170728    on d.s99co = b.s99co
002500170728   and d.s99loc = b.s99loc
002600170728   and d.r09adt = a.fromdept
002700170728 --
002800170728 left join glcust.glvrdpstr as e
002900170728    on e.s99co = b.s99co
003000170728   and e.s99loc = c.s99loc
003100170728   and e.r09adt = a.todept ) ;
003200170728

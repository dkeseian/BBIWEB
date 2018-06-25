000100160622 Drop view bbiweb.bbv170ah;
000200120112
000300160622 create view bbiweb.bbv170ah as (
000400160527 select a.transferid, a.fromstore,a.tostore,a.fromdept,
000500160622 a.todept,a.apprveflg,
000600160527 a.apprvedte,a.apprveprf,a.createdte,a.createprf,
000700160815 a.changedte,a.changeprf,a.posteddte,a.postedflg, a.receivdte,
000800160527 b.s99dsc as fromdescription, c.s99dsc as todescription,
000900160527 d.r07dsc as fromdepartment, e.r07dsc as todepartment
001000160527
001100160622 from bbiweb.bbp170ah as a
001200160527
001300160527 join  glcust.bstore as b on
001400160527 b.s99co  = 1 and a.fromstore = b.s99loc
001500160527
001600160527 join  glcust.bstore as c on
001700160527 c.s99co  = 1 and a.tostore = c.s99loc
001800160527
001900160527 join  glcust.brp070 as d on
002000161010 d.r07co  = 1 and INT(a.fromdept/10) = d.r07dpt
002100151020
002200160527 join  glcust.brp070 as e on
002300161010 e.r07co  = 1 and INT(a.todept/10) = e.r07dpt  )

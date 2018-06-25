000200160622
000300180501create or replace table bbiweb.bbp170ad  (
000400160928  transferId  integer,
000500161118  LINESEQ integer,
000600160622  itemDesc    char(49) NOT NULL WITH DEFAULT,
000700160825  itemUPC     char(13),
000800160622  quantity    integer,
000900160809  itemUOM     char(15) NOT NULL WITH DEFAULT,
001000180402  unitCost    double,
001100180402  reducedCost double,
001200170504  itemordnum  char(6),
001300161118
001400161118  PRIMARY KEY (TRANSFERID,LINESEQ));
001500160622
001600160622label on table bbiweb.bbp170ad is 'Store to Store Transfers' ;
001700160622
001800160622Label on column bbiweb.bbp170ad (
001900160622  transferId        is 'Transfer            Id',
002000160705  lineSeq           is 'Line                Seq',
002100160622  itemDesc          is 'Item                Desc',
002200160721  itemUPC           is 'Item                UPC',
002300160622  quantity          is 'Item                Qty',
002400160809  itemUOM           is 'Item                UOM',
002500180402  unitCost          is 'Unit                Cost',
002600180329  reducedCost       is 'Reduced             Cost',
002700170504  itemordnum        is 'Order               Number');
002800160705
002900160622  Label on column bbiweb.bbp170ad (
003000160705  transferId  text  is 'Transfer Id',
003100160705  lineSeq     text  is 'Line Seq',
003200160705  itemDesc    text  is 'Item Desc',
003300160721  itemUPC     text  is 'Item UPC',
003400160622  quantity    text  is 'Item Quantity',
003500160809  itemUOM     text  is 'Item UOM',
003600180402  unitCost    text  is 'Unit Cost',
003700180329  reducedCost text  is 'Reduced Cost',
003800170504  itemordnum  text  is 'Order Number')

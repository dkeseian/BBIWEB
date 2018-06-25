000100160819 drop table BBIWEB.BBP170B;
000200120112
000300160819 create table bbiweb.bbp170b (
000400160819   transferId  integer,
000500160819   lineSeq     integer,
000600160826   trnComment  CHAR(256),
000700160510   createDte   timestamp     ,
000800170201   createPrf   char(20) NOT NULL WITH DEFAULT,
000900160510   changeDte   timestamp    ,
001000170201   changePrf   char(20) NOT NULL WITH DEFAULT);
001100120112
001200160819 label on table bbiweb.bbp170b  is 'S2S Transfers Comments' ;
001300151020
001400160819 Label on column bbiweb.bbp170b  (
001500160510   transferId        is 'Transfer            Id',
001600160819   lineSeq           is 'Line                Seq',
001700160819   trnComment        is 'Transfer            Comment',
001800160510   createDte         is 'Create              Date',
001900160510   createPrf         is 'Create              Profile',
002000160510   changeDte         is 'Change              Date',
002100160819   changePrf         is 'Change              Profile');
002200120112
002300160819 Label on column bbiweb.bbp170b  (
002400160510   transferId  text  is 'Transfer Id',
002500160819   lineSeq     text  is 'Line Seq',
002600160819   trnComment  text  is 'Transfer Comment',
002700160510   createDte   text  is 'Create Date',
002800160510   createPrf   text  is 'Create Profile',
002900160510   changeDte   text  is 'Change Date',
003000160819   changePrf   text  is 'Change Profile');
003100151020

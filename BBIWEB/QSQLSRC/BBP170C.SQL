000100180117 DROP TABLE BBIWEB.BBP170C;
000200120112
000300180117 create table bbiweb.bbp170c (
000400180122   userProf  char(20) NOT NULL WITH DEFAULT,
000500180122   Activity1 integer  NOT NULL WITH DEFAULT,
000600180122   Activity2 integer  NOT NULL WITH DEFAULT,
000700180122   Activity3 integer  NOT NULL WITH DEFAULT,
000800180122   Activity4 integer  NOT NULL WITH DEFAULT,
000900180122   Activity5 integer  NOT NULL WITH DEFAULT);
001000120112
001100180117 label on table bbiweb.bbp170c  is 'S2S Transfers User file';
001200180117
001300180119 LABEL ON COLUMN BBIWEB.BBP170C  (
001400180119  userprof           is 'User                Profile',
001500180119  ACTIVITY1          IS 'USER                Activity1',
001600180119  ACTIVITY2          IS 'USER                Activity2',
001700180119  ACTIVITY3          IS 'USER                Activity3',
001800180119  ACTIVITY4          IS 'USER                Activity4',
001900180122  ACTIVITY5          IS 'USER                ActivITY5');
002000120112
002100180117 Label on column bbiweb.bbp170c  (
002200180119   userProf    text is 'User Profile',
002300180119   Activity1   text is 'User Activity1',
002400180119   Activity2   text is 'User Activity2',
002500180119   Activity3   text is 'User Activity3',
002600180119   Activity4   text is 'User Activity4',
002700180119   Activity5   text is 'User Activity5');
002800151020
